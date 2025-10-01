DROP INDEX "tenant_memberships_tenant_role_idx";--> statement-breakpoint
ALTER TABLE "tenant_memberships" ADD COLUMN "role_id" uuid;--> statement-breakpoint
ALTER TABLE "tenant_memberships" ADD CONSTRAINT "tenant_memberships_role_id_roles_id_fk" FOREIGN KEY ("role_id") REFERENCES "public"."roles"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
CREATE INDEX "tenant_memberships_role_id_idx" ON "tenant_memberships" USING btree ("role_id");--> statement-breakpoint
CREATE INDEX "tenant_memberships_tenant_role_idx" ON "tenant_memberships" USING btree ("tenant_id","role_id");--> statement-breakpoint
ALTER TABLE "tenant_memberships" DROP COLUMN "role";