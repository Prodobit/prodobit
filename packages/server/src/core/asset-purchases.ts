import type { Database } from "@prodobit/database";
import { Hono } from "hono";
import { authMiddleware } from "./middleware/auth.js";
import { AssetPurchaseService } from "./services/AssetPurchaseService.js";

export const assetPurchases = new Hono<{ Variables: { db: Database } }>();
assetPurchases.use("*", authMiddleware);

assetPurchases.get("/", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const query = c.req.query();
    const service = new AssetPurchaseService(db);
    const result = await service.getPurchases({ tenantId: user.tenantId, ...query });
    return c.json({ success: true, data: result });
  } catch (error) {
    return c.json({ success: false, error: { code: "INTERNAL_ERROR", message: "Failed to list purchases", details: error instanceof Error ? error.message : "Unknown error" } }, 500);
  }
});

assetPurchases.get("/asset/:assetId", async (c) => {
  const service = new AssetPurchaseService(c.get("db"));
  const result = await service.getPurchasesByAsset(c.req.param("assetId"), c.get("user").tenantId);
  return c.json({ success: true, data: result });
});

assetPurchases.get("/:id", async (c) => {
  const service = new AssetPurchaseService(c.get("db"));
  const purchase = await service.getPurchaseById(c.req.param("id"), c.get("user").tenantId);
  if (!purchase) return c.json({ success: false, error: { code: "NOT_FOUND", message: "Purchase not found" } }, 404);
  return c.json({ success: true, data: purchase });
});

assetPurchases.post("/", async (c) => {
  const service = new AssetPurchaseService(c.get("db"));
  const purchase = await service.createPurchase(await c.req.json(), c.get("user").tenantId);
  return c.json({ success: true, data: purchase, message: "Purchase created successfully" }, 201);
});

assetPurchases.put("/:id", async (c) => {
  const service = new AssetPurchaseService(c.get("db"));
  const purchase = await service.updatePurchase(c.req.param("id"), c.get("user").tenantId, await c.req.json());
  if (!purchase) return c.json({ success: false, error: { code: "NOT_FOUND", message: "Purchase not found" } }, 404);
  return c.json({ success: true, data: purchase, message: "Purchase updated successfully" });
});

assetPurchases.delete("/:id", async (c) => {
  const service = new AssetPurchaseService(c.get("db"));
  const deleted = await service.deletePurchase(c.req.param("id"), c.get("user").tenantId);
  if (!deleted) return c.json({ success: false, error: { code: "NOT_FOUND", message: "Purchase not found" } }, 404);
  return c.json({ success: true, message: "Purchase deleted successfully" });
});
