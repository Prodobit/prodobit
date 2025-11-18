import { type } from "arktype";
import {
  createAssetIssueRequest,
  updateAssetIssueRequest,
  assetIssueQuery,
} from "@prodobit/types";
import { AssetIssueService } from "./service.js";
import {
  createPublicRouter,
  getIntegrationTenantId,
} from "../integration/public-routes-helper.js";
import { requireScope } from "../integration/middleware/index.js";

const publicAssetIssueRoutes = createPublicRouter();

/**
 * GET /public/asset-issues - Get all asset issues
 * Requires: asset-issue:read scope
 */
publicAssetIssueRoutes.get("/", requireScope("asset-issue:read"), async (c) => {
  const db = c.get("db");
  const tenantId = getIntegrationTenantId(c);

  if (!tenantId) {
    return c.json(
      {
        success: false,
        error: {
          code: "TENANT_REQUIRED",
          message: "Tenant ID required",
        },
      },
      400
    );
  }

  const queryParams = c.req.query();
  const validation = assetIssueQuery(queryParams);

  let query = undefined;
  if (!(validation instanceof type.errors)) {
    query = validation;
  }

  const assetIssueService = new AssetIssueService(db);
  const issues = await assetIssueService.getAssetIssues(tenantId, query);

  return c.json({
    success: true,
    data: issues,
  });
});

/**
 * GET /public/asset-issues/:id - Get a specific asset issue
 * Requires: asset-issue:read scope
 */
publicAssetIssueRoutes.get(
  "/:id",
  requireScope("asset-issue:read"),
  async (c) => {
    const db = c.get("db");
    const tenantId = getIntegrationTenantId(c);
    const issueId = c.req.param("id");

    if (!tenantId) {
      return c.json(
        {
          success: false,
          error: {
            code: "TENANT_REQUIRED",
            message: "Tenant ID required",
          },
        },
        400
      );
    }

    const assetIssueService = new AssetIssueService(db);
    const issue = await assetIssueService.getAssetIssueById(issueId, tenantId);

    if (!issue) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Asset issue not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: issue,
    });
  }
);

/**
 * POST /public/asset-issues - Create a new asset issue
 * Requires: asset-issue:write scope
 */
publicAssetIssueRoutes.post(
  "/",
  requireScope("asset-issue:write"),
  async (c) => {
    const db = c.get("db");
    const tenantId = getIntegrationTenantId(c);

    if (!tenantId) {
      return c.json(
        {
          success: false,
          error: {
            code: "TENANT_REQUIRED",
            message: "Tenant ID required",
          },
        },
        400
      );
    }

    const body = await c.req.json();
    const validation = createAssetIssueRequest(body);

    if (validation instanceof type.errors) {
      return c.json(
        {
          success: false,
          error: {
            code: "VALIDATION_ERROR",
            message: "Invalid request data",
            details: validation.summary,
          },
        },
        400
      );
    }

    const integrationKey = c.get("integrationKey");
    const reportedBy = integrationKey?.id || "integration-api";

    const assetIssueService = new AssetIssueService(db);
    const issue = await assetIssueService.createAssetIssue(
      validation,
      tenantId,
      reportedBy
    );

    return c.json(
      {
        success: true,
        data: issue,
      },
      201
    );
  }
);

/**
 * PATCH /public/asset-issues/:id - Update an asset issue
 * Requires: asset-issue:write scope
 */
publicAssetIssueRoutes.patch(
  "/:id",
  requireScope("asset-issue:write"),
  async (c) => {
    const db = c.get("db");
    const tenantId = getIntegrationTenantId(c);
    const issueId = c.req.param("id");

    if (!tenantId) {
      return c.json(
        {
          success: false,
          error: {
            code: "TENANT_REQUIRED",
            message: "Tenant ID required",
          },
        },
        400
      );
    }

    const body = await c.req.json();
    const validation = updateAssetIssueRequest(body);

    if (validation instanceof type.errors) {
      return c.json(
        {
          success: false,
          error: {
            code: "VALIDATION_ERROR",
            message: "Invalid request data",
            details: validation.summary,
          },
        },
        400
      );
    }

    const assetIssueService = new AssetIssueService(db);
    const issue = await assetIssueService.updateAssetIssue(
      issueId,
      tenantId,
      validation
    );

    if (!issue) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Asset issue not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: issue,
    });
  }
);

/**
 * GET /public/asset-issues/statistics - Get issue statistics
 * Requires: asset-issue:read scope
 */
publicAssetIssueRoutes.get(
  "/statistics",
  requireScope("asset-issue:read"),
  async (c) => {
    const db = c.get("db");
    const tenantId = getIntegrationTenantId(c);

    if (!tenantId) {
      return c.json(
        {
          success: false,
          error: {
            code: "TENANT_REQUIRED",
            message: "Tenant ID required",
          },
        },
        400
      );
    }

    const assetIssueService = new AssetIssueService(db);
    const stats = await assetIssueService.getIssueStatistics(tenantId);

    return c.json({
      success: true,
      data: stats,
    });
  }
);

export { publicAssetIssueRoutes };
