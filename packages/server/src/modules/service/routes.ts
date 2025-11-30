import { Hono } from "hono";
import { type } from "arktype";
import type { Database } from "@prodobit/database";
import { authMiddleware } from "../../core/middleware/auth.js";
import { ServiceContractService, ServiceTicketService } from "./service.js";
import {
  createServiceContractRequest,
  updateServiceContractRequest,
  serviceContractQuery,
  addContractAssetRequest,
  createServiceTicketRequest,
  updateServiceTicketRequest,
  serviceTicketQuery,
  createTicketCommentRequest,
} from "@prodobit/types";

export const serviceRoutes = new Hono<{ Variables: { db: Database } }>();

// Apply auth middleware to all routes
serviceRoutes.use("*", authMiddleware);

// ============================================================================
// SERVICE CONTRACTS
// ============================================================================

// GET /contracts - List all contracts
serviceRoutes.get("/contracts", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");

    const query = c.req.query();
    const service = new ServiceContractService(db);
    const contracts = await service.getContracts(user.tenantId, {
      customerId: query.customerId,
      contractType: query.contractType,
      status: query.status,
      accountManagerId: query.accountManagerId,
      expiringWithinDays: query.expiringWithinDays ? parseInt(query.expiringWithinDays) : undefined,
      search: query.search,
    });

    return c.json({
      success: true,
      data: contracts,
    });
  } catch (error) {
    console.error("List contracts error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to list contracts",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /contracts/expiring - Get expiring contracts
serviceRoutes.get("/contracts/expiring", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");

    const days = parseInt(c.req.query("days") || "30");
    const service = new ServiceContractService(db);
    const contracts = await service.getExpiringContracts(user.tenantId, days);

    return c.json({
      success: true,
      data: contracts,
    });
  } catch (error) {
    console.error("Get expiring contracts error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get expiring contracts",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /contracts/customer/:customerId - Get contracts by customer
serviceRoutes.get("/contracts/customer/:customerId", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const customerId = c.req.param("customerId");

    const service = new ServiceContractService(db);
    const contracts = await service.getContractsByCustomer(customerId, user.tenantId);

    return c.json({
      success: true,
      data: contracts,
    });
  } catch (error) {
    console.error("Get contracts by customer error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get contracts by customer",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /contracts/asset/:assetId - Get contracts for an asset
serviceRoutes.get("/contracts/asset/:assetId", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const assetId = c.req.param("assetId");

    const service = new ServiceContractService(db);
    const contracts = await service.getContractsForAsset(assetId, user.tenantId);

    return c.json({
      success: true,
      data: contracts,
    });
  } catch (error) {
    console.error("Get contracts for asset error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get contracts for asset",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /contracts/:id - Get contract by ID
serviceRoutes.get("/contracts/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const contractId = c.req.param("id");

    const service = new ServiceContractService(db);
    const contract = await service.getContractById(contractId, user.tenantId);

    if (!contract) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Contract not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: contract,
    });
  } catch (error) {
    console.error("Get contract error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get contract",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /contracts - Create new contract
serviceRoutes.post("/contracts", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();

    const validated = createServiceContractRequest(body);
    if (validated instanceof type.errors) {
      return c.json(
        {
          success: false,
          error: {
            code: "VALIDATION_ERROR",
            message: "Invalid request data",
            details: validated,
          },
        },
        400
      );
    }

    const service = new ServiceContractService(db);
    const contract = await service.createContract(body, user.tenantId);

    return c.json(
      {
        success: true,
        data: contract,
        message: "Contract created successfully",
      },
      201
    );
  } catch (error) {
    console.error("Create contract error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create contract",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// PUT /contracts/:id - Update contract
serviceRoutes.put("/contracts/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const contractId = c.req.param("id");
    const body = await c.req.json();

    const service = new ServiceContractService(db);
    const contract = await service.updateContract(contractId, user.tenantId, body);

    if (!contract) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Contract not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: contract,
      message: "Contract updated successfully",
    });
  } catch (error) {
    console.error("Update contract error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to update contract",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// DELETE /contracts/:id - Delete contract
serviceRoutes.delete("/contracts/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const contractId = c.req.param("id");

    const service = new ServiceContractService(db);
    const success = await service.deleteContract(contractId, user.tenantId);

    if (!success) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Contract not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      message: "Contract deleted successfully",
    });
  } catch (error) {
    console.error("Delete contract error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to delete contract",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// ============================================================================
// CONTRACT ASSETS
// ============================================================================

// GET /contracts/:id/assets - Get contract assets
serviceRoutes.get("/contracts/:id/assets", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const contractId = c.req.param("id");

    const service = new ServiceContractService(db);
    const assets = await service.getContractAssets(contractId, user.tenantId);

    return c.json({
      success: true,
      data: assets,
    });
  } catch (error) {
    console.error("Get contract assets error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get contract assets",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /contracts/:id/assets - Add asset to contract
serviceRoutes.post("/contracts/:id/assets", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const contractId = c.req.param("id");
    const body = await c.req.json();

    const service = new ServiceContractService(db);
    const asset = await service.addContractAsset(contractId, user.tenantId, body);

    return c.json(
      {
        success: true,
        data: asset,
        message: "Asset added to contract successfully",
      },
      201
    );
  } catch (error) {
    console.error("Add contract asset error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to add asset to contract",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// DELETE /contracts/:contractId/assets/:assetId - Remove asset from contract
serviceRoutes.delete("/contracts/:contractId/assets/:assetId", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const contractAssetId = c.req.param("assetId");

    const service = new ServiceContractService(db);
    await service.removeContractAsset(contractAssetId, user.tenantId);

    return c.json({
      success: true,
      message: "Asset removed from contract successfully",
    });
  } catch (error) {
    console.error("Remove contract asset error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to remove asset from contract",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// ============================================================================
// SERVICE TICKETS
// ============================================================================

// GET /tickets - List all tickets
serviceRoutes.get("/tickets", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");

    const query = c.req.query();
    const service = new ServiceTicketService(db);
    const tickets = await service.getTickets(user.tenantId, {
      contractId: query.contractId,
      customerId: query.customerId,
      assetId: query.assetId,
      ticketType: query.ticketType,
      priority: query.priority,
      status: query.status,
      assignedToId: query.assignedToId,
      assignedTeamId: query.assignedTeamId,
      reportedAfter: query.reportedAfter,
      reportedBefore: query.reportedBefore,
      search: query.search,
    });

    return c.json({
      success: true,
      data: tickets,
    });
  } catch (error) {
    console.error("List tickets error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to list tickets",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /tickets/open - Get open tickets
serviceRoutes.get("/tickets/open", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");

    const service = new ServiceTicketService(db);
    const tickets = await service.getOpenTickets(user.tenantId);

    return c.json({
      success: true,
      data: tickets,
    });
  } catch (error) {
    console.error("Get open tickets error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get open tickets",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /tickets/overdue - Get overdue tickets
serviceRoutes.get("/tickets/overdue", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");

    const service = new ServiceTicketService(db);
    const tickets = await service.getOverdueTickets(user.tenantId);

    return c.json({
      success: true,
      data: tickets,
    });
  } catch (error) {
    console.error("Get overdue tickets error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get overdue tickets",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /tickets/statistics - Get ticket statistics
serviceRoutes.get("/tickets/statistics", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");

    const from = c.req.query("from");
    const to = c.req.query("to");
    const dateRange = from && to ? { from, to } : undefined;

    const service = new ServiceTicketService(db);
    const statistics = await service.getTicketStatistics(user.tenantId, dateRange);

    return c.json({
      success: true,
      data: statistics,
    });
  } catch (error) {
    console.error("Get ticket statistics error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get ticket statistics",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /tickets/contract/:contractId - Get tickets by contract
serviceRoutes.get("/tickets/contract/:contractId", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const contractId = c.req.param("contractId");

    const service = new ServiceTicketService(db);
    const tickets = await service.getTicketsByContract(contractId, user.tenantId);

    return c.json({
      success: true,
      data: tickets,
    });
  } catch (error) {
    console.error("Get tickets by contract error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get tickets by contract",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /tickets/asset/:assetId - Get tickets by asset
serviceRoutes.get("/tickets/asset/:assetId", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const assetId = c.req.param("assetId");

    const service = new ServiceTicketService(db);
    const tickets = await service.getTicketsByAsset(assetId, user.tenantId);

    return c.json({
      success: true,
      data: tickets,
    });
  } catch (error) {
    console.error("Get tickets by asset error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get tickets by asset",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /tickets/:id - Get ticket by ID
serviceRoutes.get("/tickets/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const ticketId = c.req.param("id");

    const service = new ServiceTicketService(db);
    const ticket = await service.getTicketById(ticketId, user.tenantId);

    if (!ticket) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Ticket not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: ticket,
    });
  } catch (error) {
    console.error("Get ticket error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get ticket",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /tickets - Create new ticket
serviceRoutes.post("/tickets", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();

    const service = new ServiceTicketService(db);
    const ticket = await service.createTicket(body, user.tenantId);

    return c.json(
      {
        success: true,
        data: ticket,
        message: "Ticket created successfully",
      },
      201
    );
  } catch (error) {
    console.error("Create ticket error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create ticket",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// PUT /tickets/:id - Update ticket
serviceRoutes.put("/tickets/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const ticketId = c.req.param("id");
    const body = await c.req.json();

    const service = new ServiceTicketService(db);
    const ticket = await service.updateTicket(ticketId, user.tenantId, body, user.id);

    if (!ticket) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Ticket not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: ticket,
      message: "Ticket updated successfully",
    });
  } catch (error) {
    console.error("Update ticket error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to update ticket",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// DELETE /tickets/:id - Delete ticket
serviceRoutes.delete("/tickets/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const ticketId = c.req.param("id");

    const service = new ServiceTicketService(db);
    const success = await service.deleteTicket(ticketId, user.tenantId);

    if (!success) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Ticket not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      message: "Ticket deleted successfully",
    });
  } catch (error) {
    console.error("Delete ticket error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to delete ticket",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// ============================================================================
// TICKET COMMENTS
// ============================================================================

// GET /tickets/:id/comments - Get ticket comments
serviceRoutes.get("/tickets/:id/comments", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const ticketId = c.req.param("id");
    const includeInternal = c.req.query("includeInternal") !== "false";

    const service = new ServiceTicketService(db);
    const comments = await service.getTicketComments(ticketId, user.tenantId, includeInternal);

    return c.json({
      success: true,
      data: comments,
    });
  } catch (error) {
    console.error("Get ticket comments error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get ticket comments",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /tickets/:id/comments - Add comment to ticket
serviceRoutes.post("/tickets/:id/comments", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const ticketId = c.req.param("id");
    const body = await c.req.json();

    const service = new ServiceTicketService(db);
    const comment = await service.addTicketComment(ticketId, user.tenantId, body, user.id);

    return c.json(
      {
        success: true,
        data: comment,
        message: "Comment added successfully",
      },
      201
    );
  } catch (error) {
    console.error("Add ticket comment error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to add comment",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// ============================================================================
// TICKET STATUS HISTORY
// ============================================================================

// GET /tickets/:id/history - Get ticket status history
serviceRoutes.get("/tickets/:id/history", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const ticketId = c.req.param("id");

    const service = new ServiceTicketService(db);
    const history = await service.getTicketStatusHistory(ticketId, user.tenantId);

    return c.json({
      success: true,
      data: history,
    });
  } catch (error) {
    console.error("Get ticket history error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get ticket history",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

export default serviceRoutes;
