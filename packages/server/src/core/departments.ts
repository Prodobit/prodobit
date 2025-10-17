import type { Database } from "@prodobit/database";
import { Hono } from "hono";
import { authMiddleware } from "./middleware/auth.js";
import { DepartmentService } from "./services/DepartmentService.js";

export const departments = new Hono<{ Variables: { db: Database } }>();
departments.use("*", authMiddleware);

departments.get("/", async (c) => {
  const service = new DepartmentService(c.get("db"));
  const result = await service.getDepartments({ tenantId: c.get("user").tenantId, ...c.req.query() });
  return c.json({ success: true, data: result });
});

departments.get("/:id", async (c) => {
  const service = new DepartmentService(c.get("db"));
  const department = await service.getDepartmentById(c.req.param("id"), c.get("user").tenantId);
  if (!department) return c.json({ success: false, error: { code: "NOT_FOUND", message: "Department not found" } }, 404);
  return c.json({ success: true, data: department });
});

departments.get("/:id/hierarchy", async (c) => {
  const service = new DepartmentService(c.get("db"));
  const hierarchy = await service.getDepartmentHierarchy(c.req.param("id"), c.get("user").tenantId);
  return c.json({ success: true, data: hierarchy });
});

departments.post("/", async (c) => {
  const service = new DepartmentService(c.get("db"));
  const department = await service.createDepartment(await c.req.json(), c.get("user").tenantId);
  return c.json({ success: true, data: department, message: "Department created successfully" }, 201);
});

departments.put("/:id", async (c) => {
  const service = new DepartmentService(c.get("db"));
  const department = await service.updateDepartment(c.req.param("id"), c.get("user").tenantId, await c.req.json());
  if (!department) return c.json({ success: false, error: { code: "NOT_FOUND", message: "Department not found" } }, 404);
  return c.json({ success: true, data: department, message: "Department updated successfully" });
});

departments.delete("/:id", async (c) => {
  const service = new DepartmentService(c.get("db"));
  const deleted = await service.deleteDepartment(c.req.param("id"), c.get("user").tenantId);
  if (!deleted) return c.json({ success: false, error: { code: "NOT_FOUND", message: "Department not found" } }, 404);
  return c.json({ success: true, message: "Department deleted successfully" });
});

// Department Members
departments.get("/:id/members", async (c) => {
  const service = new DepartmentService(c.get("db"));
  const members = await service.getMembers({ tenantId: c.get("user").tenantId, departmentId: c.req.param("id") });
  return c.json({ success: true, data: members });
});

departments.post("/:id/members", async (c) => {
  const service = new DepartmentService(c.get("db"));
  const member = await service.addMember({ ...await c.req.json(), departmentId: c.req.param("id") }, c.get("user").tenantId);
  return c.json({ success: true, data: member, message: "Member added successfully" }, 201);
});

departments.put("/members/:memberId", async (c) => {
  const service = new DepartmentService(c.get("db"));
  const member = await service.updateMember(c.req.param("memberId"), c.get("user").tenantId, await c.req.json());
  if (!member) return c.json({ success: false, error: { code: "NOT_FOUND", message: "Member not found" } }, 404);
  return c.json({ success: true, data: member, message: "Member updated successfully" });
});

departments.delete("/members/:memberId", async (c) => {
  const service = new DepartmentService(c.get("db"));
  const removed = await service.removeMember(c.req.param("memberId"), c.get("user").tenantId);
  if (!removed) return c.json({ success: false, error: { code: "NOT_FOUND", message: "Member not found" } }, 404);
  return c.json({ success: true, message: "Member removed successfully" });
});
