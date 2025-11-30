import type { Database } from "@prodobit/database";
import {
  serviceContracts,
  serviceContractAssets,
  serviceTickets,
  serviceTicketComments,
  serviceTicketStatusHistory,
} from "@prodobit/database";
import { eq, and, desc, asc, isNull, gte, lte, or, sql } from "drizzle-orm";

/**
 * Service Contract Service
 * Handles CRUD operations for service contracts
 */
export class ServiceContractService {
  constructor(private db: Database) {}

  /**
   * Get all service contracts with optional filters
   */
  async getContracts(
    tenantId: string,
    query?: {
      customerId?: string;
      contractType?: string;
      status?: string;
      accountManagerId?: string;
      expiringWithinDays?: number;
      search?: string;
    }
  ) {
    const conditions = [
      eq(serviceContracts.tenantId, tenantId),
      isNull(serviceContracts.deletedAt),
    ];

    if (query?.customerId) {
      conditions.push(eq(serviceContracts.customerId, query.customerId));
    }
    if (query?.contractType) {
      conditions.push(eq(serviceContracts.contractType, query.contractType as any));
    }
    if (query?.status) {
      conditions.push(eq(serviceContracts.status, query.status as any));
    }
    if (query?.accountManagerId) {
      conditions.push(eq(serviceContracts.accountManagerId, query.accountManagerId));
    }
    if (query?.expiringWithinDays) {
      const futureDate = new Date();
      futureDate.setDate(futureDate.getDate() + query.expiringWithinDays);
      conditions.push(lte(serviceContracts.endDate, futureDate));
      conditions.push(gte(serviceContracts.endDate, new Date()));
    }
    if (query?.search) {
      conditions.push(
        or(
          sql`${serviceContracts.name} ILIKE ${'%' + query.search + '%'}`,
          sql`${serviceContracts.contractNumber} ILIKE ${'%' + query.search + '%'}`
        )!
      );
    }

    return this.db
      .select()
      .from(serviceContracts)
      .where(and(...conditions))
      .orderBy(desc(serviceContracts.insertedAt));
  }

  /**
   * Get contract by ID
   */
  async getContractById(contractId: string, tenantId: string) {
    const [contract] = await this.db
      .select()
      .from(serviceContracts)
      .where(
        and(
          eq(serviceContracts.id, contractId),
          eq(serviceContracts.tenantId, tenantId),
          isNull(serviceContracts.deletedAt)
        )
      )
      .limit(1);

    return contract || null;
  }

  /**
   * Get contracts by customer
   */
  async getContractsByCustomer(customerId: string, tenantId: string) {
    return this.db
      .select()
      .from(serviceContracts)
      .where(
        and(
          eq(serviceContracts.customerId, customerId),
          eq(serviceContracts.tenantId, tenantId),
          isNull(serviceContracts.deletedAt)
        )
      )
      .orderBy(desc(serviceContracts.startDate));
  }

  /**
   * Get expiring contracts
   */
  async getExpiringContracts(tenantId: string, withinDays: number = 30) {
    const futureDate = new Date();
    futureDate.setDate(futureDate.getDate() + withinDays);

    return this.db
      .select()
      .from(serviceContracts)
      .where(
        and(
          eq(serviceContracts.tenantId, tenantId),
          eq(serviceContracts.status, "active"),
          lte(serviceContracts.endDate, futureDate),
          gte(serviceContracts.endDate, new Date()),
          isNull(serviceContracts.deletedAt)
        )
      )
      .orderBy(asc(serviceContracts.endDate));
  }

  /**
   * Create new service contract
   */
  async createContract(
    data: {
      contractNumber: string;
      name: string;
      description?: string;
      customerId: string;
      contractType: string;
      billingModel: string;
      startDate: string;
      endDate: string;
      autoRenew?: boolean;
      renewalNoticeDays?: number;
      contractValue?: number;
      currency?: string;
      monthlyFee?: number;
      hourlyRate?: number;
      incidentRate?: number;
      includedIncidents?: number;
      includedHours?: number;
      includedPreventiveVisits?: number;
      slaConfig?: any;
      coverageScope?: any;
      excludedItems?: any;
      primaryContactId?: string;
      technicalContactId?: string;
      accountManagerId?: string;
      serviceTeamId?: string;
      documentIds?: string[];
      termsAndConditions?: string;
      specialTerms?: string;
      notes?: string;
      assetIds?: string[];
    },
    tenantId: string
  ) {
    const { assetIds, ...contractData } = data;

    const [contract] = await this.db
      .insert(serviceContracts)
      .values({
        tenantId,
        ...contractData,
        contractType: contractData.contractType as any,
        billingModel: contractData.billingModel as any,
        startDate: new Date(contractData.startDate),
        endDate: new Date(contractData.endDate),
        slaConfig: contractData.slaConfig ? JSON.stringify(contractData.slaConfig) : null,
        coverageScope: contractData.coverageScope ? JSON.stringify(contractData.coverageScope) : null,
        excludedItems: contractData.excludedItems ? JSON.stringify(contractData.excludedItems) : null,
        documentIds: contractData.documentIds ? JSON.stringify(contractData.documentIds) : null,
        contractValue: contractData.contractValue?.toString(),
        monthlyFee: contractData.monthlyFee?.toString(),
        hourlyRate: contractData.hourlyRate?.toString(),
        incidentRate: contractData.incidentRate?.toString(),
        includedHours: contractData.includedHours?.toString(),
      })
      .returning();

    // Add assets if provided
    if (assetIds && assetIds.length > 0) {
      await this.db.insert(serviceContractAssets).values(
        assetIds.map((assetId) => ({
          tenantId,
          contractId: contract.id,
          assetId,
          isActive: true,
        }))
      );
    }

    return contract;
  }

  /**
   * Update service contract
   */
  async updateContract(
    contractId: string,
    tenantId: string,
    data: Partial<{
      name: string;
      description: string;
      contractType: string;
      billingModel: string;
      status: string;
      startDate: string;
      endDate: string;
      autoRenew: boolean;
      renewalNoticeDays: number;
      contractValue: number;
      currency: string;
      monthlyFee: number;
      hourlyRate: number;
      incidentRate: number;
      includedIncidents: number;
      includedHours: number;
      includedPreventiveVisits: number;
      slaConfig: any;
      coverageScope: any;
      excludedItems: any;
      primaryContactId: string;
      technicalContactId: string;
      accountManagerId: string;
      serviceTeamId: string;
      documentIds: string[];
      termsAndConditions: string;
      specialTerms: string;
      notes: string;
    }>
  ) {
    const updateData: any = {
      ...data,
      updatedAt: new Date(),
    };

    if (data.startDate) updateData.startDate = new Date(data.startDate);
    if (data.endDate) updateData.endDate = new Date(data.endDate);
    if (data.slaConfig) updateData.slaConfig = JSON.stringify(data.slaConfig);
    if (data.coverageScope) updateData.coverageScope = JSON.stringify(data.coverageScope);
    if (data.excludedItems) updateData.excludedItems = JSON.stringify(data.excludedItems);
    if (data.documentIds) updateData.documentIds = JSON.stringify(data.documentIds);
    if (data.contractValue !== undefined) updateData.contractValue = data.contractValue?.toString();
    if (data.monthlyFee !== undefined) updateData.monthlyFee = data.monthlyFee?.toString();
    if (data.hourlyRate !== undefined) updateData.hourlyRate = data.hourlyRate?.toString();
    if (data.incidentRate !== undefined) updateData.incidentRate = data.incidentRate?.toString();
    if (data.includedHours !== undefined) updateData.includedHours = data.includedHours?.toString();

    const [contract] = await this.db
      .update(serviceContracts)
      .set(updateData)
      .where(
        and(
          eq(serviceContracts.id, contractId),
          eq(serviceContracts.tenantId, tenantId),
          isNull(serviceContracts.deletedAt)
        )
      )
      .returning();

    return contract || null;
  }

  /**
   * Delete service contract (soft delete)
   */
  async deleteContract(contractId: string, tenantId: string) {
    const [contract] = await this.db
      .update(serviceContracts)
      .set({ deletedAt: new Date(), updatedAt: new Date() })
      .where(
        and(
          eq(serviceContracts.id, contractId),
          eq(serviceContracts.tenantId, tenantId),
          isNull(serviceContracts.deletedAt)
        )
      )
      .returning();

    return !!contract;
  }

  // =========================================================================
  // CONTRACT ASSETS
  // =========================================================================

  /**
   * Get assets for a contract
   */
  async getContractAssets(contractId: string, tenantId: string) {
    return this.db
      .select()
      .from(serviceContractAssets)
      .where(
        and(
          eq(serviceContractAssets.contractId, contractId),
          eq(serviceContractAssets.tenantId, tenantId)
        )
      );
  }

  /**
   * Add asset to contract
   */
  async addContractAsset(
    contractId: string,
    tenantId: string,
    data: {
      assetId: string;
      coverageStartDate?: string;
      coverageEndDate?: string;
      specialTerms?: string;
    }
  ) {
    const [asset] = await this.db
      .insert(serviceContractAssets)
      .values({
        tenantId,
        contractId,
        assetId: data.assetId,
        coverageStartDate: data.coverageStartDate ? new Date(data.coverageStartDate) : null,
        coverageEndDate: data.coverageEndDate ? new Date(data.coverageEndDate) : null,
        specialTerms: data.specialTerms,
        isActive: true,
      })
      .returning();

    return asset;
  }

  /**
   * Remove asset from contract
   */
  async removeContractAsset(contractAssetId: string, tenantId: string) {
    const result = await this.db
      .delete(serviceContractAssets)
      .where(
        and(
          eq(serviceContractAssets.id, contractAssetId),
          eq(serviceContractAssets.tenantId, tenantId)
        )
      );

    return true;
  }

  /**
   * Get contracts for an asset
   */
  async getContractsForAsset(assetId: string, tenantId: string) {
    const contractAssets = await this.db
      .select({
        contractAsset: serviceContractAssets,
        contract: serviceContracts,
      })
      .from(serviceContractAssets)
      .innerJoin(serviceContracts, eq(serviceContractAssets.contractId, serviceContracts.id))
      .where(
        and(
          eq(serviceContractAssets.assetId, assetId),
          eq(serviceContractAssets.tenantId, tenantId),
          eq(serviceContractAssets.isActive, true),
          isNull(serviceContracts.deletedAt)
        )
      );

    return contractAssets.map((ca) => ({
      ...ca.contract,
      contractAsset: ca.contractAsset,
    }));
  }
}

/**
 * Service Ticket Service
 * Handles CRUD operations for service tickets
 */
export class ServiceTicketService {
  constructor(private db: Database) {}

  /**
   * Generate ticket number
   */
  private async generateTicketNumber(tenantId: string): Promise<string> {
    const now = new Date();
    const year = now.getFullYear();
    const month = String(now.getMonth() + 1).padStart(2, "0");

    // Count tickets this month
    const startOfMonth = new Date(year, now.getMonth(), 1);
    const endOfMonth = new Date(year, now.getMonth() + 1, 0, 23, 59, 59);

    const [{ count }] = await this.db
      .select({ count: sql<number>`count(*)::int` })
      .from(serviceTickets)
      .where(
        and(
          eq(serviceTickets.tenantId, tenantId),
          gte(serviceTickets.insertedAt, startOfMonth),
          lte(serviceTickets.insertedAt, endOfMonth)
        )
      );

    const sequence = String((count || 0) + 1).padStart(4, "0");
    return `TKT-${year}${month}-${sequence}`;
  }

  /**
   * Calculate SLA times based on priority and contract config
   */
  private calculateSLATimes(
    priority: string,
    slaConfig?: any
  ): { responseTime?: Date; resolutionTime?: Date } {
    const now = new Date();

    // Default SLA times (in minutes)
    const defaultSLA: Record<string, { response: number; resolution: number }> = {
      critical: { response: 30, resolution: 240 }, // 30 min response, 4 hour resolution
      high: { response: 120, resolution: 480 }, // 2 hour response, 8 hour resolution
      medium: { response: 480, resolution: 1440 }, // 8 hour response, 24 hour resolution
      low: { response: 1440, resolution: 4320 }, // 24 hour response, 72 hour resolution
    };

    const sla = defaultSLA[priority] || defaultSLA.medium;

    // TODO: Parse slaConfig from contract if provided and override defaults

    const responseTime = new Date(now.getTime() + sla.response * 60000);
    const resolutionTime = new Date(now.getTime() + sla.resolution * 60000);

    return { responseTime, resolutionTime };
  }

  /**
   * Get all service tickets with optional filters
   */
  async getTickets(
    tenantId: string,
    query?: {
      contractId?: string;
      customerId?: string;
      assetId?: string;
      ticketType?: string;
      priority?: string;
      status?: string;
      assignedToId?: string;
      assignedTeamId?: string;
      reportedAfter?: string;
      reportedBefore?: string;
      search?: string;
    }
  ) {
    const conditions = [
      eq(serviceTickets.tenantId, tenantId),
      isNull(serviceTickets.deletedAt),
    ];

    if (query?.contractId) {
      conditions.push(eq(serviceTickets.contractId, query.contractId));
    }
    if (query?.customerId) {
      conditions.push(eq(serviceTickets.customerId, query.customerId));
    }
    if (query?.assetId) {
      conditions.push(eq(serviceTickets.assetId, query.assetId));
    }
    if (query?.ticketType) {
      conditions.push(eq(serviceTickets.ticketType, query.ticketType as any));
    }
    if (query?.priority) {
      conditions.push(eq(serviceTickets.priority, query.priority as any));
    }
    if (query?.status) {
      conditions.push(eq(serviceTickets.status, query.status as any));
    }
    if (query?.assignedToId) {
      conditions.push(eq(serviceTickets.assignedToId, query.assignedToId));
    }
    if (query?.assignedTeamId) {
      conditions.push(eq(serviceTickets.assignedTeamId, query.assignedTeamId));
    }
    if (query?.reportedAfter) {
      conditions.push(gte(serviceTickets.reportedAt, new Date(query.reportedAfter)));
    }
    if (query?.reportedBefore) {
      conditions.push(lte(serviceTickets.reportedAt, new Date(query.reportedBefore)));
    }
    if (query?.search) {
      conditions.push(
        or(
          sql`${serviceTickets.subject} ILIKE ${'%' + query.search + '%'}`,
          sql`${serviceTickets.ticketNumber} ILIKE ${'%' + query.search + '%'}`
        )!
      );
    }

    return this.db
      .select()
      .from(serviceTickets)
      .where(and(...conditions))
      .orderBy(desc(serviceTickets.reportedAt));
  }

  /**
   * Get ticket by ID
   */
  async getTicketById(ticketId: string, tenantId: string) {
    const [ticket] = await this.db
      .select()
      .from(serviceTickets)
      .where(
        and(
          eq(serviceTickets.id, ticketId),
          eq(serviceTickets.tenantId, tenantId),
          isNull(serviceTickets.deletedAt)
        )
      )
      .limit(1);

    return ticket || null;
  }

  /**
   * Get tickets by contract
   */
  async getTicketsByContract(contractId: string, tenantId: string) {
    return this.db
      .select()
      .from(serviceTickets)
      .where(
        and(
          eq(serviceTickets.contractId, contractId),
          eq(serviceTickets.tenantId, tenantId),
          isNull(serviceTickets.deletedAt)
        )
      )
      .orderBy(desc(serviceTickets.reportedAt));
  }

  /**
   * Get tickets by asset
   */
  async getTicketsByAsset(assetId: string, tenantId: string) {
    return this.db
      .select()
      .from(serviceTickets)
      .where(
        and(
          eq(serviceTickets.assetId, assetId),
          eq(serviceTickets.tenantId, tenantId),
          isNull(serviceTickets.deletedAt)
        )
      )
      .orderBy(desc(serviceTickets.reportedAt));
  }

  /**
   * Get open tickets (not resolved or closed)
   */
  async getOpenTickets(tenantId: string) {
    return this.db
      .select()
      .from(serviceTickets)
      .where(
        and(
          eq(serviceTickets.tenantId, tenantId),
          sql`${serviceTickets.status} NOT IN ('resolved', 'closed', 'cancelled')`,
          isNull(serviceTickets.deletedAt)
        )
      )
      .orderBy(
        asc(sql`CASE ${serviceTickets.priority}
          WHEN 'critical' THEN 1
          WHEN 'high' THEN 2
          WHEN 'medium' THEN 3
          WHEN 'low' THEN 4
          END`),
        asc(serviceTickets.slaResolutionDue)
      );
  }

  /**
   * Get overdue tickets (past SLA)
   */
  async getOverdueTickets(tenantId: string) {
    const now = new Date();
    return this.db
      .select()
      .from(serviceTickets)
      .where(
        and(
          eq(serviceTickets.tenantId, tenantId),
          sql`${serviceTickets.status} NOT IN ('resolved', 'closed', 'cancelled')`,
          or(
            lte(serviceTickets.slaResponseDue, now),
            lte(serviceTickets.slaResolutionDue, now)
          ),
          isNull(serviceTickets.deletedAt)
        )
      )
      .orderBy(asc(serviceTickets.slaResolutionDue));
  }

  /**
   * Create new service ticket
   */
  async createTicket(
    data: {
      ticketNumber?: string;
      contractId?: string;
      isBillable?: boolean;
      customerId: string;
      contactPersonId?: string;
      assetId?: string;
      ticketType: string;
      priority: string;
      source?: string;
      subject: string;
      description?: string;
      problemCategory?: string;
      errorCode?: string;
      serviceLocationId?: string;
      serviceAddress?: string;
      assignedToId?: string;
      assignedTeamId?: string;
      scheduledAt?: string;
      internalNotes?: string;
    },
    tenantId: string
  ) {
    // Generate ticket number if not provided
    const ticketNumber = data.ticketNumber || await this.generateTicketNumber(tenantId);

    // Get contract SLA config if contract provided
    let slaConfig = undefined;
    if (data.contractId) {
      const [contract] = await this.db
        .select({ slaConfig: serviceContracts.slaConfig })
        .from(serviceContracts)
        .where(eq(serviceContracts.id, data.contractId))
        .limit(1);
      if (contract?.slaConfig) {
        slaConfig = JSON.parse(contract.slaConfig);
      }
    }

    // Calculate SLA times
    const slaTimes = this.calculateSLATimes(data.priority, slaConfig);

    // Determine if billable
    let isBillable = data.isBillable ?? true;
    if (data.contractId) {
      // If under contract, check contract terms for billability
      // For now, default to not billable if under contract
      isBillable = data.isBillable ?? false;
    }

    const [ticket] = await this.db
      .insert(serviceTickets)
      .values({
        tenantId,
        ticketNumber,
        contractId: data.contractId,
        isBillable,
        customerId: data.customerId,
        contactPersonId: data.contactPersonId,
        assetId: data.assetId,
        ticketType: data.ticketType as any,
        priority: data.priority as any,
        source: (data.source || "phone") as any,
        subject: data.subject,
        description: data.description,
        problemCategory: data.problemCategory,
        errorCode: data.errorCode,
        serviceLocationId: data.serviceLocationId,
        serviceAddress: data.serviceAddress,
        assignedToId: data.assignedToId,
        assignedTeamId: data.assignedTeamId,
        scheduledAt: data.scheduledAt ? new Date(data.scheduledAt) : null,
        internalNotes: data.internalNotes,
        slaResponseDue: slaTimes.responseTime,
        slaResolutionDue: slaTimes.resolutionTime,
        status: data.assignedToId ? "assigned" : "open",
      })
      .returning();

    // Update contract statistics
    if (data.contractId) {
      await this.db
        .update(serviceContracts)
        .set({
          totalTicketsCreated: sql`${serviceContracts.totalTicketsCreated} + 1`,
          updatedAt: new Date(),
        })
        .where(eq(serviceContracts.id, data.contractId));
    }

    // Create initial status history
    await this.db.insert(serviceTicketStatusHistory).values({
      tenantId,
      ticketId: ticket.id,
      previousStatus: null,
      newStatus: ticket.status,
      reason: "Ticket created",
    });

    return ticket;
  }

  /**
   * Update service ticket
   */
  async updateTicket(
    ticketId: string,
    tenantId: string,
    data: Partial<{
      ticketType: string;
      priority: string;
      status: string;
      subject: string;
      description: string;
      problemCategory: string;
      errorCode: string;
      serviceLocationId: string;
      serviceAddress: string;
      assignedToId: string;
      assignedTeamId: string;
      scheduledAt: string;
      resolutionSummary: string;
      resolutionCode: string;
      rootCause: string;
      preventiveAction: string;
      travelTimeMinutes: number;
      workTimeMinutes: number;
      laborCost: number;
      partsCost: number;
      travelCost: number;
      otherCost: number;
      partsUsed: any[];
      attachmentIds: string[];
      signatureImageId: string;
      customerSatisfaction: number;
      customerFeedback: string;
      internalNotes: string;
    }>,
    userId?: string
  ) {
    // Get current ticket for status change tracking
    const currentTicket = await this.getTicketById(ticketId, tenantId);
    if (!currentTicket) return null;

    const updateData: any = {
      ...data,
      updatedAt: new Date(),
    };

    // Handle date conversions
    if (data.scheduledAt) updateData.scheduledAt = new Date(data.scheduledAt);

    // Handle JSON conversions
    if (data.partsUsed) updateData.partsUsed = JSON.stringify(data.partsUsed);
    if (data.attachmentIds) updateData.attachmentIds = JSON.stringify(data.attachmentIds);

    // Handle decimal conversions
    if (data.laborCost !== undefined) updateData.laborCost = data.laborCost?.toString();
    if (data.partsCost !== undefined) updateData.partsCost = data.partsCost?.toString();
    if (data.travelCost !== undefined) updateData.travelCost = data.travelCost?.toString();
    if (data.otherCost !== undefined) updateData.otherCost = data.otherCost?.toString();

    // Handle status changes
    if (data.status && data.status !== currentTicket.status) {
      // Track first response
      if (!currentTicket.firstResponseAt && data.status !== "open") {
        updateData.firstResponseAt = new Date();
      }

      // Track acknowledgement
      if (!currentTicket.acknowledgedAt && data.status === "assigned") {
        updateData.acknowledgedAt = new Date();
      }

      // Track start
      if (!currentTicket.startedAt && data.status === "in_progress") {
        updateData.startedAt = new Date();
      }

      // Track resolution
      if (data.status === "resolved" && !currentTicket.resolvedAt) {
        updateData.resolvedAt = new Date();
        // Calculate total time
        const workTime = data.workTimeMinutes || currentTicket.workTimeMinutes || 0;
        const travelTime = data.travelTimeMinutes || currentTicket.travelTimeMinutes || 0;
        updateData.totalTimeMinutes = workTime + travelTime;
        // Calculate total cost
        const laborCost = parseFloat(data.laborCost?.toString() || currentTicket.laborCost || "0");
        const partsCost = parseFloat(data.partsCost?.toString() || currentTicket.partsCost || "0");
        const travelCost = parseFloat(data.travelCost?.toString() || currentTicket.travelCost || "0");
        const otherCost = parseFloat(data.otherCost?.toString() || currentTicket.otherCost || "0");
        updateData.totalCost = (laborCost + partsCost + travelCost + otherCost).toString();
      }

      // Track closure
      if (data.status === "closed" && !currentTicket.closedAt) {
        updateData.closedAt = new Date();
      }

      // Create status history entry
      await this.db.insert(serviceTicketStatusHistory).values({
        tenantId,
        ticketId,
        previousStatus: currentTicket.status,
        newStatus: data.status,
        changedById: userId,
      });
    }

    const [ticket] = await this.db
      .update(serviceTickets)
      .set(updateData)
      .where(
        and(
          eq(serviceTickets.id, ticketId),
          eq(serviceTickets.tenantId, tenantId),
          isNull(serviceTickets.deletedAt)
        )
      )
      .returning();

    return ticket || null;
  }

  /**
   * Delete service ticket (soft delete)
   */
  async deleteTicket(ticketId: string, tenantId: string) {
    const [ticket] = await this.db
      .update(serviceTickets)
      .set({ deletedAt: new Date(), updatedAt: new Date() })
      .where(
        and(
          eq(serviceTickets.id, ticketId),
          eq(serviceTickets.tenantId, tenantId),
          isNull(serviceTickets.deletedAt)
        )
      )
      .returning();

    return !!ticket;
  }

  // =========================================================================
  // COMMENTS
  // =========================================================================

  /**
   * Get comments for a ticket
   */
  async getTicketComments(ticketId: string, tenantId: string, includeInternal: boolean = true) {
    const conditions = [
      eq(serviceTicketComments.ticketId, ticketId),
      eq(serviceTicketComments.tenantId, tenantId),
    ];

    if (!includeInternal) {
      conditions.push(eq(serviceTicketComments.isInternal, false));
    }

    return this.db
      .select()
      .from(serviceTicketComments)
      .where(and(...conditions))
      .orderBy(asc(serviceTicketComments.insertedAt));
  }

  /**
   * Add comment to ticket
   */
  async addTicketComment(
    ticketId: string,
    tenantId: string,
    data: {
      content: string;
      isInternal?: boolean;
      attachmentIds?: string[];
    },
    authorId: string
  ) {
    const [comment] = await this.db
      .insert(serviceTicketComments)
      .values({
        tenantId,
        ticketId,
        authorId,
        content: data.content,
        isInternal: data.isInternal ?? false,
        isSystemGenerated: false,
        attachmentIds: data.attachmentIds ? JSON.stringify(data.attachmentIds) : null,
      })
      .returning();

    return comment;
  }

  // =========================================================================
  // STATUS HISTORY
  // =========================================================================

  /**
   * Get status history for a ticket
   */
  async getTicketStatusHistory(ticketId: string, tenantId: string) {
    return this.db
      .select()
      .from(serviceTicketStatusHistory)
      .where(
        and(
          eq(serviceTicketStatusHistory.ticketId, ticketId),
          eq(serviceTicketStatusHistory.tenantId, tenantId)
        )
      )
      .orderBy(desc(serviceTicketStatusHistory.changedAt));
  }

  // =========================================================================
  // STATISTICS
  // =========================================================================

  /**
   * Get ticket statistics
   */
  async getTicketStatistics(tenantId: string, dateRange?: { from: string; to: string }) {
    const conditions = [eq(serviceTickets.tenantId, tenantId), isNull(serviceTickets.deletedAt)];

    if (dateRange) {
      conditions.push(gte(serviceTickets.reportedAt, new Date(dateRange.from)));
      conditions.push(lte(serviceTickets.reportedAt, new Date(dateRange.to)));
    }

    const tickets = await this.db
      .select({
        status: serviceTickets.status,
        priority: serviceTickets.priority,
        ticketType: serviceTickets.ticketType,
      })
      .from(serviceTickets)
      .where(and(...conditions));

    const byStatus: Record<string, number> = {};
    const byPriority: Record<string, number> = {};
    const byType: Record<string, number> = {};

    for (const ticket of tickets) {
      byStatus[ticket.status] = (byStatus[ticket.status] || 0) + 1;
      byPriority[ticket.priority] = (byPriority[ticket.priority] || 0) + 1;
      byType[ticket.ticketType] = (byType[ticket.ticketType] || 0) + 1;
    }

    return {
      total: tickets.length,
      byStatus,
      byPriority,
      byType,
    };
  }
}
