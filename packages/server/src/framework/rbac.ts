import type { Context, Next } from "hono";

export interface User {
  id: string;
  email: string;
  tenantId: string;
  roles: string[];
}

export interface Permission {
  action: string;
  roles: string[];
}

export class RBACManager {
  private permissions: Map<string, string[]> = new Map();

  registerPermission(action: string, allowedRoles: string[]) {
    this.permissions.set(action, allowedRoles);
  }

  registerPermissions(permissions: Record<string, string[]>) {
    Object.entries(permissions).forEach(([action, roles]) => {
      this.registerPermission(action, roles);
    });
  }

  hasPermission(user: User, action: string): boolean {
    const allowedRoles = this.permissions.get(action);
    if (!allowedRoles) {
      console.warn(`⚠️  No permission defined for action: ${action}`);
      return false;
    }

    return user.roles.some(role => allowedRoles.includes(role));
  }

  getPermissions(): Record<string, string[]> {
    return Object.fromEntries(this.permissions);
  }
}

// Global RBAC instance
export const rbacManager = new RBACManager();

// Middleware factory for permission checking
export function requirePermission(action: string) {
  return async (c: Context, next: Next) => {
    const user = c.get("user") as User;
    
    if (!user) {
      return c.json({ error: "Authentication required" }, 401);
    }

    if (!rbacManager.hasPermission(user, action)) {
      return c.json({ 
        error: "Insufficient permissions",
        required: action,
        userRoles: user.roles 
      }, 403);
    }

    await next();
  };
}