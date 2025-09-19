import type { JwtPayload, TenantMembership } from "@prodobit/types";
import { useProdobitClient } from "../providers/ProdobitProvider";
import { useCurrentUser } from "./useAuth";

export interface RolePermissions {
  isSystemAdmin: boolean;
  isTenantAdmin: boolean;
  isTenantManager: boolean;
  canManageUsers: boolean;
  canManageTenants: boolean;
  currentTenantId: string | undefined;
  userRoles: string[];
  userPermissions: string[];
  tenantMemberships: TenantMembership[];
}

export function useRoleBasedAccess(): RolePermissions {
  const { data: currentUser } = useCurrentUser();
  const client = useProdobitClient();

  // Client'dan current tenant ID'yi al
  const currentTenantId = client.getCurrentTenantId();
  const accessToken = client.getAccessToken();

  // JWT token'dan rol ve permission bilgilerini al
  let userRoles: string[] = [];
  let userPermissions: string[] = [];

  if (accessToken) {
    try {
      const tokenPayload: JwtPayload = JSON.parse(
        atob(accessToken.split(".")[1])
      );
      userRoles = tokenPayload.roles || [];
      userPermissions = tokenPayload.permissions || [];
    } catch (error) {
      console.warn("Failed to decode JWT token:", error);
    }
  }

  // CurrentUser response'dan tenant memberships'ları al
  const tenantMemberships: TenantMembership[] = currentUser?.success
    ? currentUser.data.tenantMemberships
    : [];

  // System admin kontrolü - herhangi bir tenant'ta system admin rolü var mı?
  const isSystemAdmin = tenantMemberships.some(
    (membership) =>
      membership.role === "admin" && membership.accessLevel === "full"
  );

  // Current tenant'ta admin rolü var mı?
  const isTenantAdmin = tenantMemberships.some(
    (membership) =>
      membership.tenantId === currentTenantId &&
      membership.role === "admin" &&
      membership.status === "active"
  );

  // Current tenant'ta manager veya admin rolü var mı?
  const isTenantManager = tenantMemberships.some(
    (membership) =>
      membership.tenantId === currentTenantId &&
      (membership.role === "admin" || membership.role === "manager") &&
      membership.status === "active"
  );

  // User yönetim yetkisi - system admin, tenant admin veya manager
  const canManageUsers = isSystemAdmin || isTenantAdmin || isTenantManager;

  // Tenant yönetim yetkisi - sadece system admin
  const canManageTenants = isSystemAdmin;

  return {
    isSystemAdmin,
    isTenantAdmin,
    isTenantManager,
    canManageUsers,
    canManageTenants,
    currentTenantId,
    userRoles,
    userPermissions,
    tenantMemberships,
  };
}

export function usePermissionCheck() {
  const { userPermissions, isSystemAdmin, tenantMemberships, currentTenantId } =
    useRoleBasedAccess();

  const hasPermission = (
    permission: string,
    scope?: "tenant" | "global" | "own"
  ): boolean => {
    // System admin her şeyi yapabilir
    if (isSystemAdmin) return true;

    // Eğer scope belirtilmişse, tenant membership'larını kontrol et
    if (scope === "tenant" && currentTenantId) {
      const currentMembership = tenantMemberships.find(
        (m) => m.tenantId === currentTenantId && m.status === "active"
      );

      if (!currentMembership) return false;

      // Permission'ları membership'tan kontrol et
      const membershipPermissions = currentMembership.permissions as
        | Record<string, boolean>
        | undefined;
      if (membershipPermissions && membershipPermissions[permission])
        return true;
    }

    // JWT token'dan permission'ları kontrol et
    return userPermissions.includes(permission);
  };

  const hasAnyPermission = (
    permissions: string[],
    scope?: "tenant" | "global" | "own"
  ): boolean => {
    if (isSystemAdmin) return true;
    return permissions.some((permission) => hasPermission(permission, scope));
  };

  const hasAllPermissions = (
    permissions: string[],
    scope?: "tenant" | "global" | "own"
  ): boolean => {
    if (isSystemAdmin) return true;
    return permissions.every((permission) => hasPermission(permission, scope));
  };

  const hasRole = (role: string, tenantId?: string): boolean => {
    if (isSystemAdmin) return true;

    const targetTenantId = tenantId || currentTenantId;
    if (!targetTenantId) return false;

    return tenantMemberships.some(
      (membership) =>
        membership.tenantId === targetTenantId &&
        membership.role === role &&
        membership.status === "active"
    );
  };

  const canAccessTenant = (tenantId: string): boolean => {
    if (isSystemAdmin) return true;

    return tenantMemberships.some(
      (membership) =>
        membership.tenantId === tenantId && membership.status === "active"
    );
  };

  return {
    hasPermission,
    hasAnyPermission,
    hasAllPermissions,
    hasRole,
    canAccessTenant,
  };
}

// Convenience hooks for common permission checks
export function useCanManageUsers() {
  const { canManageUsers } = useRoleBasedAccess();
  return canManageUsers;
}

export function useCanManageTenants() {
  const { canManageTenants } = useRoleBasedAccess();
  return canManageTenants;
}

export function useIsSystemAdmin() {
  const { isSystemAdmin } = useRoleBasedAccess();
  return isSystemAdmin;
}

export function useIsTenantAdmin(tenantId?: string) {
  const { tenantMemberships, currentTenantId } = useRoleBasedAccess();
  const targetTenantId = tenantId || currentTenantId;

  return tenantMemberships.some(
    (membership) =>
      membership.tenantId === targetTenantId &&
      membership.role === "admin" &&
      membership.status === "active"
  );
}
