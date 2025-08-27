import { Hono } from "hono";
import { type } from "arktype";
import { 
  createEmployeeRequest,
  updateEmployeeRequest
} from "@prodobit/types";
import { EmployeeService, type CreateEmployeeData } from "./service.js";
import { authMiddleware } from "../../core/middleware/auth.js";
import { requirePermission } from "../../core/middleware/rbac.js";

const employeeRoutes = new Hono();


// Apply authentication to all routes
employeeRoutes.use("*", authMiddleware);

// GET /employees
employeeRoutes.get("/", 
  requirePermission("employee", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    
    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const employeeService = new EmployeeService(db);
    const employees = await employeeService.getEmployeesByTenant(user.tenantId);

    return c.json({ employees });
  }
);

// GET /employees/:id
employeeRoutes.get("/:id",
  requirePermission("employee", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const { id } = c.req.param();

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const employeeService = new EmployeeService(db);
    const employee = await employeeService.getEmployeeById(id, user.tenantId);

    if (!employee) {
      return c.json({ error: "Employee not found" }, 404);
    }

    return c.json({ employee });
  }
);

// POST /employees
employeeRoutes.post("/",
  requirePermission("employee", "write"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    
    const body = await c.req.json();
    const validation = createEmployeeRequest(body);
    
    if (validation instanceof type.errors) {
      return c.json({ error: "Validation failed", details: validation }, 400);
    }
    
    const data = validation;

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const employeeService = new EmployeeService(db);
    
    try {
      const result = await employeeService.createCompleteEmployee({
        ...data,
        tenantId: user.tenantId,
        invitedBy: user.id
      });

      return c.json({ 
        employee: result.employee,
        user: result.user,
        message: "Employee created successfully with all related records"
      }, 201);
    } catch (error: any) {
      if (error.code === '23505') { // unique constraint violation
        return c.json({ error: "Employee code already exists" }, 409);
      }
      throw error;
    }
  }
);

// PUT /employees/:id
employeeRoutes.put("/:id",
  requirePermission("employee", "write"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const { id } = c.req.param();
    
    const body = await c.req.json();
    const validation = updateEmployeeRequest(body);
    
    if (validation instanceof type.errors) {
      return c.json({ error: "Validation failed", details: validation }, 400);
    }
    
    const data = validation;

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const employeeService = new EmployeeService(db);
    
    const updateData = {
      ...data,
      terminationDate: data.terminationDate ? new Date(data.terminationDate) : undefined
    };

    const employee = await employeeService.updateEmployee(id, user.tenantId, updateData);

    if (!employee) {
      return c.json({ error: "Employee not found" }, 404);
    }

    return c.json({ employee });
  }
);

// DELETE /employees/:id
employeeRoutes.delete("/:id",
  requirePermission("employee", "write"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const { id } = c.req.param();

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const employeeService = new EmployeeService(db);
    await employeeService.deleteEmployee(id, user.tenantId);

    return c.json({ message: "Employee deactivated successfully" });
  }
);

export { employeeRoutes };