import { eq, and, like, or, isNull, desc, SQL } from "drizzle-orm";
import type { Database } from "@prodobit/database";
import { locations, locationTypes } from "@prodobit/database";

export interface CreateLocationRequest {
  tenantId: string;
  name: string;
  code?: string;
  locationTypeId?: string;
  status?: string;
  parentLocationId?: string;
}

export interface CreateLocationTypeRequest {
  tenantId: string;
  name: string;
  code?: string;
  description?: string;
  category?: string;
  isActive?: boolean;
}

export interface LocationFilters {
  tenantId: string;
  locationTypeId?: string;
  status?: string;
  parentLocationId?: string;
  search?: string;
}

export class LocationService {
  constructor(private db: Database) {}

  // Create location
  async createLocation(data: CreateLocationRequest): Promise<any> {
    // Generate code if not provided
    const code =
      data.code ||
      this.generateLocationCode(data.tenantId, "LOC");

    const [location] = await this.db
      .insert(locations)
      .values({
        tenantId: data.tenantId,
        name: data.name,
        code,
        locationTypeId: data.locationTypeId,
        status: data.status || "available",
        parentLocationId: data.parentLocationId,
      })
      .returning();

    return location;
  }

  // Get all locations with optional filtering
  async getLocations(filters: LocationFilters): Promise<any[]> {
    const conditions = [
      eq(locations.tenantId, filters.tenantId),
      isNull(locations.deletedAt),
    ];

    if (filters.locationTypeId) {
      conditions.push(eq(locations.locationTypeId, filters.locationTypeId));
    }

    if (filters.status) {
      conditions.push(eq(locations.status, filters.status));
    }

    if (filters.parentLocationId) {
      conditions.push(eq(locations.parentLocationId, filters.parentLocationId));
    } else if (filters.parentLocationId === null) {
      conditions.push(isNull(locations.parentLocationId));
    }

    if (filters?.search) {
      conditions.push(
        or(
          like(locations.name, `%${filters.search}%`),
          like(locations.code, `%${filters.search}%`)
        ) as SQL<unknown>
      );
    }

    const result = await this.db
      .select()
      .from(locations)
      .where(and(...conditions))
      .orderBy(locations.name);

    return result;
  }

  // Get location by ID
  async getLocationById(
    locationId: string,
    tenantId: string
  ): Promise<any | null> {
    const [location] = await this.db
      .select()
      .from(locations)
      .where(
        and(
          eq(locations.id, locationId),
          eq(locations.tenantId, tenantId),
          isNull(locations.deletedAt)
        )
      )
      .limit(1);

    return location || null;
  }

  // Get child locations
  async getChildLocations(
    parentLocationId: string,
    tenantId: string
  ): Promise<any[]> {
    const result = await this.db
      .select()
      .from(locations)
      .where(
        and(
          eq(locations.parentLocationId, parentLocationId),
          eq(locations.tenantId, tenantId),
          isNull(locations.deletedAt)
        )
      )
      .orderBy(locations.name);

    return result;
  }

  // Get location hierarchy (all parents up to root)
  async getLocationHierarchy(
    locationId: string,
    tenantId: string
  ): Promise<any[]> {
    const hierarchy: any[] = [];
    let currentLocationId: string | null = locationId;

    while (currentLocationId) {
      const location = await this.getLocationById(currentLocationId, tenantId);
      if (!location) break;

      hierarchy.unshift(location);
      currentLocationId = location.parentLocationId;
    }

    return hierarchy;
  }

  // Update location
  async updateLocation(
    locationId: string,
    tenantId: string,
    data: Partial<CreateLocationRequest>
  ): Promise<any | null> {
    const [location] = await this.db
      .update(locations)
      .set({
        ...data,
        updatedAt: new Date(),
      })
      .where(
        and(
          eq(locations.id, locationId),
          eq(locations.tenantId, tenantId),
          isNull(locations.deletedAt)
        )
      )
      .returning();

    return location || null;
  }

  // Delete location (soft delete)
  async deleteLocation(locationId: string, tenantId: string): Promise<boolean> {
    // Check if location has child locations
    const childLocations = await this.getChildLocations(locationId, tenantId);
    if (childLocations.length > 0) {
      throw new Error("Cannot delete location with child locations");
    }

    const [deleted] = await this.db
      .update(locations)
      .set({
        deletedAt: new Date(),
      })
      .where(
        and(
          eq(locations.id, locationId),
          eq(locations.tenantId, tenantId),
          isNull(locations.deletedAt)
        )
      )
      .returning();

    return !!deleted;
  }

  // Location Types methods
  async createLocationType(data: CreateLocationTypeRequest): Promise<any> {
    const [locationType] = await this.db
      .insert(locationTypes)
      .values({
        tenantId: data.tenantId,
        name: data.name,
        code:
          data.code || this.generateLocationTypeCode(data.tenantId, data.name),
        description: data.description,
        category: data.category,
        isActive: data.isActive ?? true,
      })
      .returning();

    return locationType;
  }

  async getLocationTypes(tenantId: string, category?: string): Promise<any[]> {
    const conditions = [eq(locationTypes.tenantId, tenantId)];

    if (category) {
      conditions.push(eq(locationTypes.category, category));
    }

    const result = await this.db
      .select()
      .from(locationTypes)
      .where(and(...conditions))
      .orderBy(locationTypes.name);

    return result;
  }

  async getLocationTypeById(
    locationTypeId: string,
    tenantId: string
  ): Promise<any | null> {
    const [locationType] = await this.db
      .select()
      .from(locationTypes)
      .where(
        and(
          eq(locationTypes.id, locationTypeId),
          eq(locationTypes.tenantId, tenantId)
        )
      )
      .limit(1);

    return locationType || null;
  }

  // Helper methods
  private generateLocationCode(tenantId: string, prefix: string): string {
    const timestamp = Date.now().toString().slice(-6);
    const random = Math.random().toString(36).substring(2, 4).toUpperCase();
    return `${prefix.toUpperCase()}${timestamp}${random}`;
  }

  private generateLocationTypeCode(tenantId: string, name: string): string {
    const prefix = name.substring(0, 3).toUpperCase();
    const timestamp = Date.now().toString().slice(-4);
    return `${prefix}${timestamp}`;
  }

  // Get location statistics
  async getLocationStats(tenantId: string): Promise<{
    totalLocations: number;
    locationsByType: Record<string, number>;
    locationsByStatus: Record<string, number>;
  }> {
    const allLocations = await this.getLocations({ tenantId });

    const locationsByType: Record<string, number> = {};
    const locationsByStatus: Record<string, number> = {};

    allLocations.forEach((location) => {
      // Count by type
      const type = location.locationTypeId || "unspecified";
      locationsByType[type] = (locationsByType[type] || 0) + 1;

      // Count by status
      const status = location.status || "unknown";
      locationsByStatus[status] = (locationsByStatus[status] || 0) + 1;
    });

    return {
      totalLocations: allLocations.length,
      locationsByType,
      locationsByStatus,
    };
  }
}
