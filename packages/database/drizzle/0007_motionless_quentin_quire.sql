-- Add sourcing_type column to products table
ALTER TABLE "products" ADD COLUMN "sourcing_type" text DEFAULT 'manufactured' NOT NULL;