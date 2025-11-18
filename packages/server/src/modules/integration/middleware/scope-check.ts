import type { Context, Next } from "hono";

/**
 * Require specific scope middleware
 * Checks if the integration key has the required scope
 */
export const requireScope = (requiredScope: string) => {
  return async (c: Context, next: Next) => {
    try {
      const integrationKey = c.get("integrationKey");

      if (!integrationKey) {
        return c.json(
          {
            success: false,
            error: {
              code: "UNAUTHORIZED",
              message: "Authentication required",
            },
          },
          401
        );
      }

      const { scopes } = integrationKey;

      if (!scopes || !scopes.includes(requiredScope)) {
        return c.json(
          {
            success: false,
            error: {
              code: "FORBIDDEN",
              message: `Insufficient permissions. Required scope: ${requiredScope}`,
              required_scope: requiredScope,
              available_scopes: scopes,
            },
          },
          403
        );
      }

      await next();
    } catch (error) {
      console.error("Scope validation error:", error);
      return c.json(
        {
          success: false,
          error: {
            code: "INTERNAL_ERROR",
            message: "Permission check failed",
          },
        },
        500
      );
    }
  };
};

/**
 * Require any of the specified scopes
 */
export const requireAnyScope = (...requiredScopes: string[]) => {
  return async (c: Context, next: Next) => {
    try {
      const integrationKey = c.get("integrationKey");

      if (!integrationKey) {
        return c.json(
          {
            success: false,
            error: {
              code: "UNAUTHORIZED",
              message: "Authentication required",
            },
          },
          401
        );
      }

      const { scopes } = integrationKey;

      const hasAnyScope = requiredScopes.some((scope) => scopes?.includes(scope));

      if (!hasAnyScope) {
        return c.json(
          {
            success: false,
            error: {
              code: "FORBIDDEN",
              message: `Insufficient permissions. Required one of: ${requiredScopes.join(", ")}`,
              required_scopes: requiredScopes,
              available_scopes: scopes,
            },
          },
          403
        );
      }

      await next();
    } catch (error) {
      console.error("Scope validation error:", error);
      return c.json(
        {
          success: false,
          error: {
            code: "INTERNAL_ERROR",
            message: "Permission check failed",
          },
        },
        500
      );
    }
  };
};

/**
 * Require all of the specified scopes
 */
export const requireAllScopes = (...requiredScopes: string[]) => {
  return async (c: Context, next: Next) => {
    try {
      const integrationKey = c.get("integrationKey");

      if (!integrationKey) {
        return c.json(
          {
            success: false,
            error: {
              code: "UNAUTHORIZED",
              message: "Authentication required",
            },
          },
          401
        );
      }

      const { scopes } = integrationKey;

      const hasAllScopes = requiredScopes.every((scope) => scopes?.includes(scope));

      if (!hasAllScopes) {
        return c.json(
          {
            success: false,
            error: {
              code: "FORBIDDEN",
              message: `Insufficient permissions. Required all of: ${requiredScopes.join(", ")}`,
              required_scopes: requiredScopes,
              available_scopes: scopes,
            },
          },
          403
        );
      }

      await next();
    } catch (error) {
      console.error("Scope validation error:", error);
      return c.json(
        {
          success: false,
          error: {
            code: "INTERNAL_ERROR",
            message: "Permission check failed",
          },
        },
        500
      );
    }
  };
};

export default requireScope;
