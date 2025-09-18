DROP INDEX "sessions_access_token_hash_idx";--> statement-breakpoint
ALTER TABLE "sessions" ALTER COLUMN "access_token_hash" DROP NOT NULL;--> statement-breakpoint
ALTER TABLE "sessions" ADD COLUMN "csrf_token_hash" text DEFAULT '' NOT NULL;--> statement-breakpoint
ALTER TABLE "sessions" ADD COLUMN "device_fingerprint" text;--> statement-breakpoint
CREATE INDEX "sessions_csrf_token_hash_idx" ON "sessions" USING btree ("csrf_token_hash");--> statement-breakpoint
CREATE INDEX "sessions_device_fingerprint_idx" ON "sessions" USING btree ("device_fingerprint");