import {
  pgTable,
  uuid,
  text,
  timestamp,
  boolean,
  integer,
  varchar,
  index,
} from "drizzle-orm/pg-core";
import { relations } from "drizzle-orm";
import { tenants } from "./tenants.js";
import { items } from "./items.js";

/**
 * Media files table - stores metadata for uploaded media
 * Supports multiple storage providers (S3, R2, DO Spaces)
 */
export const media = pgTable(
  "media",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),

    // Storage provider info
    storageProvider: varchar("storage_provider", { length: 50 }).notNull(), // 's3', 'r2', 'do_spaces'
    bucket: varchar("bucket", { length: 255 }).notNull(),
    key: varchar("key", { length: 500 }).notNull(), // Object key in storage

    // File metadata
    filename: varchar("filename", { length: 255 }).notNull(),
    originalFilename: varchar("original_filename", { length: 255 }),
    mimeType: varchar("mime_type", { length: 100 }).notNull(),
    size: integer("size").notNull(), // bytes

    // Image-specific metadata (null for non-images)
    width: integer("width"),
    height: integer("height"),

    // URLs (with CDN if configured)
    url: text("url").notNull(), // Full URL to access the file

    // Entity relationship (polymorphic)
    entityType: varchar("entity_type", { length: 50 }), // 'item', 'party', 'tenant', etc.
    entityId: uuid("entity_id"), // ID of related entity

    // Additional metadata
    metadata: text("metadata"), // JSON string for extra data
    altText: text("alt_text"), // For accessibility

    // Timestamps
    insertedAt: timestamp("inserted_at", { withTimezone: true })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true }),
  },
  (table) => ({
    tenantIdx: index("media_tenant_idx").on(table.tenantId),
    entityIdx: index("media_entity_idx").on(table.entityType, table.entityId),
    tenantEntityIdx: index("media_tenant_entity_idx").on(
      table.tenantId,
      table.entityType,
      table.entityId
    ),
    storageIdx: index("media_storage_idx").on(
      table.storageProvider,
      table.bucket,
      table.key
    ),
  })
);

/**
 * Item images table - specific to item media with display ordering
 */
export const itemImages = pgTable(
  "item_images",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    itemId: uuid("item_id")
      .notNull()
      .references(() => items.id, { onDelete: "cascade" }),
    mediaId: uuid("media_id")
      .notNull()
      .references(() => media.id, { onDelete: "cascade" }),

    // Display info
    displayOrder: integer("display_order").notNull().default(0),
    isPrimary: boolean("is_primary").notNull().default(false),

    // Processed variants URLs
    thumbnailUrl: text("thumbnail_url"), // 200x200
    mediumUrl: text("medium_url"), // 800x800
    largeUrl: text("large_url"), // 1600x1600

    // Timestamps
    insertedAt: timestamp("inserted_at", { withTimezone: true })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true }),
  },
  (table) => ({
    tenantItemIdx: index("item_images_tenant_item_idx").on(
      table.tenantId,
      table.itemId
    ),
    itemPrimaryIdx: index("item_images_item_primary_idx").on(
      table.itemId,
      table.isPrimary
    ),
    displayOrderIdx: index("item_images_display_order_idx").on(
      table.itemId,
      table.displayOrder
    ),
  })
);

// Relations
export const mediaRelations = relations(media, ({ one }) => ({
  tenant: one(tenants, {
    fields: [media.tenantId],
    references: [tenants.id],
  }),
}));

export const itemImagesRelations = relations(itemImages, ({ one }) => ({
  tenant: one(tenants, {
    fields: [itemImages.tenantId],
    references: [tenants.id],
  }),
  item: one(items, {
    fields: [itemImages.itemId],
    references: [items.id],
  }),
  media: one(media, {
    fields: [itemImages.mediaId],
    references: [media.id],
  }),
}));
