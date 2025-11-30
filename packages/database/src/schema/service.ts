import {
  pgTable,
  uuid,
  text,
  decimal,
  timestamp,
  boolean,
  pgEnum,
  index,
  integer,
} from "drizzle-orm/pg-core";
import { relations } from "drizzle-orm";
import { tenants } from "./tenants.js";
import { assets } from "./assets.js";
import { parties } from "./parties.js";
import { users } from "./auth.js";

// ============================================================================
// ENUMS
// ============================================================================

// Contract type enum
export const contractTypeEnum = pgEnum("contract_type", [
  "maintenance",          // Bakım sözleşmesi
  "support",              // Teknik destek sözleşmesi
  "warranty_extension",   // Garanti uzatma
  "full_service",         // Tam servis (bakım + destek + parça)
  "on_demand",            // Talep üzerine servis
  "preventive",           // Önleyici bakım sözleşmesi
  "calibration",          // Kalibrasyon sözleşmesi
]);

// Contract status enum
export const contractStatusEnum = pgEnum("contract_status", [
  "draft",                // Taslak
  "pending_approval",     // Onay bekliyor
  "active",               // Aktif
  "suspended",            // Askıya alınmış
  "expired",              // Süresi dolmuş
  "cancelled",            // İptal edilmiş
  "renewed",              // Yenilenmiş
]);

// Billing model enum
export const billingModelEnum = pgEnum("billing_model", [
  "fixed",                // Sabit ücret
  "per_incident",         // Olay başına
  "hourly",               // Saatlik
  "monthly",              // Aylık
  "quarterly",            // Çeyreklik
  "annually",             // Yıllık
  "hybrid",               // Karma (sabit + değişken)
]);

// Ticket type enum
export const ticketTypeEnum = pgEnum("ticket_type", [
  "incident",             // Arıza/problem
  "request",              // Servis talebi
  "preventive",           // Önleyici bakım
  "corrective",           // Düzeltici bakım
  "installation",         // Kurulum
  "training",             // Eğitim
  "consultation",         // Danışmanlık
  "inspection",           // Denetim/kontrol
]);

// Ticket status enum
export const ticketStatusEnum = pgEnum("ticket_status", [
  "open",                 // Açık
  "assigned",             // Atandı
  "in_progress",          // Devam ediyor
  "pending_customer",     // Müşteri bekleniyor
  "pending_parts",        // Parça bekleniyor
  "on_hold",              // Beklemede
  "resolved",             // Çözüldü
  "closed",               // Kapatıldı
  "cancelled",            // İptal edildi
]);

// Ticket priority enum
export const ticketPriorityEnum = pgEnum("ticket_priority", [
  "critical",             // Kritik - üretim durdu
  "high",                 // Yüksek - ciddi etki
  "medium",               // Orta - normal öncelik
  "low",                  // Düşük - ertelenebilir
]);

// Ticket source enum
export const ticketSourceEnum = pgEnum("ticket_source", [
  "customer_portal",      // Müşteri portalından
  "phone",                // Telefon ile
  "email",                // E-posta ile
  "chat",                 // Canlı sohbet
  "field_technician",     // Saha teknisyeni
  "system_alert",         // Sistem alarmı (IoT)
  "scheduled",            // Planlanmış
  "internal",             // Dahili oluşturma
]);

// ============================================================================
// TABLES
// ============================================================================

/**
 * Service Contracts - Servis sözleşmeleri
 * Müşterilerle yapılan bakım/destek anlaşmaları
 */
export const serviceContracts = pgTable(
  "service_contracts",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),

    // Contract identification
    contractNumber: text("contract_number").notNull(),
    name: text("name").notNull(),
    description: text("description"),

    // Customer/Party
    customerId: uuid("customer_id")
      .notNull()
      .references(() => parties.id, { onDelete: "restrict" }),

    // Contract type and billing
    contractType: contractTypeEnum("contract_type").notNull().default("maintenance"),
    billingModel: billingModelEnum("billing_model").notNull().default("fixed"),
    status: contractStatusEnum("status").notNull().default("draft"),

    // Contract period
    startDate: timestamp("start_date", { withTimezone: true }).notNull(),
    endDate: timestamp("end_date", { withTimezone: true }).notNull(),
    autoRenew: boolean("auto_renew").notNull().default(false),
    renewalNoticeDays: integer("renewal_notice_days").default(30),

    // Pricing
    contractValue: decimal("contract_value", { precision: 15, scale: 2 }),
    currency: text("currency").notNull().default("TRY"),
    monthlyFee: decimal("monthly_fee", { precision: 15, scale: 2 }),
    hourlyRate: decimal("hourly_rate", { precision: 10, scale: 2 }),
    incidentRate: decimal("incident_rate", { precision: 10, scale: 2 }),

    // Included services
    includedIncidents: integer("included_incidents"), // Dahil arıza sayısı
    includedHours: decimal("included_hours", { precision: 10, scale: 2 }), // Dahil saat
    includedPreventiveVisits: integer("included_preventive_visits"), // Dahil önleyici ziyaret

    // SLA Configuration (JSON)
    slaConfig: text("sla_config"), // JSON: response time, resolution time by priority

    // Coverage
    coverageScope: text("coverage_scope"), // JSON: what's covered (parts, labor, travel)
    excludedItems: text("excluded_items"), // JSON: what's excluded

    // Contact information
    primaryContactId: uuid("primary_contact_id").references(() => users.id),
    technicalContactId: uuid("technical_contact_id").references(() => users.id),

    // Internal assignment
    accountManagerId: uuid("account_manager_id").references(() => users.id),
    serviceTeamId: text("service_team_id"), // Reference to team/department

    // Documents
    documentIds: text("document_ids"), // JSON array of document IDs

    // Terms
    termsAndConditions: text("terms_and_conditions"),
    specialTerms: text("special_terms"),

    // Tracking
    totalTicketsCreated: integer("total_tickets_created").notNull().default(0),
    totalIncidentsUsed: integer("total_incidents_used").notNull().default(0),
    totalHoursUsed: decimal("total_hours_used", { precision: 10, scale: 2 }).notNull().default("0"),

    // Metadata
    notes: text("notes"),
    metadata: text("metadata"), // JSON for custom fields

    // Timestamps
    insertedAt: timestamp("inserted_at", { withTimezone: true }).notNull().defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true }).notNull().defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true }),
  },
  (table) => [
    index("service_contracts_tenant_idx").on(table.tenantId),
    index("service_contracts_customer_idx").on(table.tenantId, table.customerId),
    index("service_contracts_status_idx").on(table.tenantId, table.status),
    index("service_contracts_end_date_idx").on(table.endDate),
    index("service_contracts_contract_number_idx").on(table.tenantId, table.contractNumber),
  ]
);

/**
 * Service Contract Assets - Sözleşme kapsamındaki varlıklar
 * Hangi varlıkların sözleşme kapsamında olduğu
 */
export const serviceContractAssets = pgTable(
  "service_contract_assets",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    contractId: uuid("contract_id")
      .notNull()
      .references(() => serviceContracts.id, { onDelete: "cascade" }),
    assetId: uuid("asset_id")
      .notNull()
      .references(() => assets.id, { onDelete: "cascade" }),

    // Asset-specific coverage
    coverageStartDate: timestamp("coverage_start_date", { withTimezone: true }),
    coverageEndDate: timestamp("coverage_end_date", { withTimezone: true }),
    specialTerms: text("special_terms"),
    isActive: boolean("is_active").notNull().default(true),

    // Timestamps
    insertedAt: timestamp("inserted_at", { withTimezone: true }).notNull().defaultNow(),
  },
  (table) => [
    index("service_contract_assets_contract_idx").on(table.contractId),
    index("service_contract_assets_asset_idx").on(table.assetId),
  ]
);

/**
 * Service Tickets - Servis talepleri/bildirimleri
 * Müşterilerden gelen arıza bildirimleri ve servis talepleri
 */
export const serviceTickets = pgTable(
  "service_tickets",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),

    // Ticket identification
    ticketNumber: text("ticket_number").notNull(),

    // Relation to contract (optional - can be out-of-contract)
    contractId: uuid("contract_id").references(() => serviceContracts.id, { onDelete: "set null" }),
    isBillable: boolean("is_billable").notNull().default(true), // Faturalandırılacak mı?

    // Customer
    customerId: uuid("customer_id")
      .notNull()
      .references(() => parties.id, { onDelete: "restrict" }),
    contactPersonId: uuid("contact_person_id").references(() => users.id),

    // Asset (optional - can be general support ticket)
    assetId: uuid("asset_id").references(() => assets.id, { onDelete: "set null" }),

    // Ticket details
    ticketType: ticketTypeEnum("ticket_type").notNull().default("incident"),
    priority: ticketPriorityEnum("priority").notNull().default("medium"),
    status: ticketStatusEnum("status").notNull().default("open"),
    source: ticketSourceEnum("source").notNull().default("phone"),

    // Problem description
    subject: text("subject").notNull(),
    description: text("description"),
    problemCategory: text("problem_category"), // e.g., "electrical", "mechanical", "software"
    errorCode: text("error_code"), // Machine error code if applicable

    // Location
    serviceLocationId: uuid("service_location_id"), // Where service will be performed
    serviceAddress: text("service_address"), // Free text address if needed

    // Assignment
    assignedToId: uuid("assigned_to_id").references(() => users.id),
    assignedTeamId: text("assigned_team_id"),

    // SLA tracking
    slaResponseDue: timestamp("sla_response_due", { withTimezone: true }),
    slaResolutionDue: timestamp("sla_resolution_due", { withTimezone: true }),
    firstResponseAt: timestamp("first_response_at", { withTimezone: true }),

    // Time tracking
    reportedAt: timestamp("reported_at", { withTimezone: true }).notNull().defaultNow(),
    acknowledgedAt: timestamp("acknowledged_at", { withTimezone: true }),
    scheduledAt: timestamp("scheduled_at", { withTimezone: true }), // Planned visit time
    startedAt: timestamp("started_at", { withTimezone: true }),
    resolvedAt: timestamp("resolved_at", { withTimezone: true }),
    closedAt: timestamp("closed_at", { withTimezone: true }),

    // Resolution
    resolutionSummary: text("resolution_summary"),
    resolutionCode: text("resolution_code"),
    rootCause: text("root_cause"),
    preventiveAction: text("preventive_action"),

    // Time spent
    travelTimeMinutes: integer("travel_time_minutes"),
    workTimeMinutes: integer("work_time_minutes"),
    totalTimeMinutes: integer("total_time_minutes"),

    // Cost tracking
    laborCost: decimal("labor_cost", { precision: 10, scale: 2 }),
    partsCost: decimal("parts_cost", { precision: 10, scale: 2 }),
    travelCost: decimal("travel_cost", { precision: 10, scale: 2 }),
    otherCost: decimal("other_cost", { precision: 10, scale: 2 }),
    totalCost: decimal("total_cost", { precision: 10, scale: 2 }),
    currency: text("currency").default("TRY"),

    // Parts used (JSON array)
    partsUsed: text("parts_used"), // JSON: [{itemId, quantity, cost}]

    // Related records
    maintenanceRecordId: uuid("maintenance_record_id"),
    calibrationRecordId: uuid("calibration_record_id"),
    relatedTicketId: uuid("related_ticket_id"), // For follow-ups

    // Documents & media
    attachmentIds: text("attachment_ids"), // JSON array
    signatureImageId: text("signature_image_id"), // Customer signature

    // Customer feedback
    customerSatisfaction: integer("customer_satisfaction"), // 1-5 rating
    customerFeedback: text("customer_feedback"),

    // Internal notes
    internalNotes: text("internal_notes"),
    metadata: text("metadata"), // JSON for custom fields

    // Timestamps
    insertedAt: timestamp("inserted_at", { withTimezone: true }).notNull().defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true }).notNull().defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true }),
  },
  (table) => [
    index("service_tickets_tenant_idx").on(table.tenantId),
    index("service_tickets_customer_idx").on(table.tenantId, table.customerId),
    index("service_tickets_contract_idx").on(table.contractId),
    index("service_tickets_asset_idx").on(table.assetId),
    index("service_tickets_status_idx").on(table.tenantId, table.status),
    index("service_tickets_priority_idx").on(table.tenantId, table.priority),
    index("service_tickets_assigned_idx").on(table.assignedToId),
    index("service_tickets_ticket_number_idx").on(table.tenantId, table.ticketNumber),
    index("service_tickets_reported_at_idx").on(table.reportedAt),
    index("service_tickets_sla_response_idx").on(table.slaResponseDue),
    index("service_tickets_sla_resolution_idx").on(table.slaResolutionDue),
  ]
);

/**
 * Service Ticket Comments - Ticket yorumları/güncellemeleri
 * Ticket üzerindeki iletişim geçmişi
 */
export const serviceTicketComments = pgTable(
  "service_ticket_comments",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    ticketId: uuid("ticket_id")
      .notNull()
      .references(() => serviceTickets.id, { onDelete: "cascade" }),

    // Author
    authorId: uuid("author_id")
      .notNull()
      .references(() => users.id),

    // Content
    content: text("content").notNull(),
    isInternal: boolean("is_internal").notNull().default(false), // Internal note vs customer-visible
    isSystemGenerated: boolean("is_system_generated").notNull().default(false),

    // Attachments
    attachmentIds: text("attachment_ids"), // JSON array

    // Timestamps
    insertedAt: timestamp("inserted_at", { withTimezone: true }).notNull().defaultNow(),
  },
  (table) => [
    index("service_ticket_comments_ticket_idx").on(table.ticketId),
  ]
);

/**
 * Service Ticket Status History - Durum değişiklik geçmişi
 */
export const serviceTicketStatusHistory = pgTable(
  "service_ticket_status_history",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    ticketId: uuid("ticket_id")
      .notNull()
      .references(() => serviceTickets.id, { onDelete: "cascade" }),

    previousStatus: text("previous_status"),
    newStatus: text("new_status").notNull(),
    changedById: uuid("changed_by_id").references(() => users.id),
    reason: text("reason"),

    changedAt: timestamp("changed_at", { withTimezone: true }).notNull().defaultNow(),
  },
  (table) => [
    index("service_ticket_status_history_ticket_idx").on(table.ticketId),
  ]
);

// ============================================================================
// RELATIONS
// ============================================================================

export const serviceContractsRelations = relations(serviceContracts, ({ one, many }) => ({
  tenant: one(tenants, {
    fields: [serviceContracts.tenantId],
    references: [tenants.id],
  }),
  customer: one(parties, {
    fields: [serviceContracts.customerId],
    references: [parties.id],
  }),
  primaryContact: one(users, {
    fields: [serviceContracts.primaryContactId],
    references: [users.id],
    relationName: "primaryContact",
  }),
  accountManager: one(users, {
    fields: [serviceContracts.accountManagerId],
    references: [users.id],
    relationName: "accountManager",
  }),
  contractAssets: many(serviceContractAssets),
  tickets: many(serviceTickets),
}));

export const serviceContractAssetsRelations = relations(serviceContractAssets, ({ one }) => ({
  tenant: one(tenants, {
    fields: [serviceContractAssets.tenantId],
    references: [tenants.id],
  }),
  contract: one(serviceContracts, {
    fields: [serviceContractAssets.contractId],
    references: [serviceContracts.id],
  }),
  asset: one(assets, {
    fields: [serviceContractAssets.assetId],
    references: [assets.id],
  }),
}));

export const serviceTicketsRelations = relations(serviceTickets, ({ one, many }) => ({
  tenant: one(tenants, {
    fields: [serviceTickets.tenantId],
    references: [tenants.id],
  }),
  contract: one(serviceContracts, {
    fields: [serviceTickets.contractId],
    references: [serviceContracts.id],
  }),
  customer: one(parties, {
    fields: [serviceTickets.customerId],
    references: [parties.id],
  }),
  asset: one(assets, {
    fields: [serviceTickets.assetId],
    references: [assets.id],
  }),
  assignedTo: one(users, {
    fields: [serviceTickets.assignedToId],
    references: [users.id],
  }),
  comments: many(serviceTicketComments),
  statusHistory: many(serviceTicketStatusHistory),
}));

export const serviceTicketCommentsRelations = relations(serviceTicketComments, ({ one }) => ({
  tenant: one(tenants, {
    fields: [serviceTicketComments.tenantId],
    references: [tenants.id],
  }),
  ticket: one(serviceTickets, {
    fields: [serviceTicketComments.ticketId],
    references: [serviceTickets.id],
  }),
  author: one(users, {
    fields: [serviceTicketComments.authorId],
    references: [users.id],
  }),
}));

export const serviceTicketStatusHistoryRelations = relations(serviceTicketStatusHistory, ({ one }) => ({
  tenant: one(tenants, {
    fields: [serviceTicketStatusHistory.tenantId],
    references: [tenants.id],
  }),
  ticket: one(serviceTickets, {
    fields: [serviceTicketStatusHistory.ticketId],
    references: [serviceTickets.id],
  }),
  changedBy: one(users, {
    fields: [serviceTicketStatusHistory.changedById],
    references: [users.id],
  }),
}));

// ============================================================================
// TYPES
// ============================================================================

export type ServiceContract = typeof serviceContracts.$inferSelect;
export type NewServiceContract = typeof serviceContracts.$inferInsert;
export type ServiceContractAsset = typeof serviceContractAssets.$inferSelect;
export type NewServiceContractAsset = typeof serviceContractAssets.$inferInsert;
export type ServiceTicket = typeof serviceTickets.$inferSelect;
export type NewServiceTicket = typeof serviceTickets.$inferInsert;
export type ServiceTicketComment = typeof serviceTicketComments.$inferSelect;
export type NewServiceTicketComment = typeof serviceTicketComments.$inferInsert;
export type ServiceTicketStatusHistory = typeof serviceTicketStatusHistory.$inferSelect;
export type NewServiceTicketStatusHistory = typeof serviceTicketStatusHistory.$inferInsert;
