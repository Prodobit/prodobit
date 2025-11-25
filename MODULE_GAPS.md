# Prodobit - Modül Eksiklikleri

> **Analiz Tarihi**: 2025-01-18
> **Versiyon**: 0.16.0
> **Mevcut Modül Sayısı**: 14

---

## 📊 Mevcut Modüller

### Core & Infrastructure

1. ✅ **Core** - Auth, tenant, user management
2. ✅ **Integration** - API keys, webhooks
3. ✅ **Media** - File/image management (S3/R2)

### Business Modules

1. ✅ **Employee** - Çalışan yönetimi (basic)
2. ✅ **Customer** - Müşteri master data
3. ✅ **Supplier** - Tedarikçi master data
4. ✅ **Brand** - Marka yönetimi
5. ✅ **Inventory** - Stok yönetimi (stocks, lots, locations)
6. ✅ **Sales** - Satış siparişleri
7. ✅ **Manufacturing** - Üretim (BOMs, production orders)

### Asset & Maintenance

1. ✅ **Asset-Issue** - Varlık sorun takibi
2. ✅ **Task** - Görev yönetimi (basic)
3. ✅ **Calibration** - Kalibrasyon planları
4. ✅ **Maintenance** - Bakım planları

---

## 🔴 KRİTİK EKSİK MODÜLLER

### 1. Purchase/Procurement (Satın Alma)

**Mevcut Durum**: Sadece `asset_purchases` tablosu var (varlık satın alma)

**Eksik Özellikler**:

- Purchase Orders (Satın alma siparişleri)
- Purchase Requisitions (Satın alma talepleri)
- RFQ - Request for Quotation (Teklif isteme)
- Purchase Order Approval Workflow
- Goods Receipt Note (Mal kabul belgesi)
- Purchase Invoicing (Satın alma faturaları)
- Purchase Returns & Credits
- Vendor Performance Tracking
- Purchase Analytics & Reporting

**Database Schema İhtiyacı**:

```typescript
// Purchase Requisitions
purchase_requisitions
purchase_requisition_items

// Purchase Orders
purchase_orders
purchase_order_items
purchase_order_status_history

// Goods Receipt
goods_receipts
goods_receipt_items

// Purchase Invoices
purchase_invoices
purchase_invoice_items

// Vendor Performance
vendor_performance_metrics
vendor_ratings
```

**API Endpoints**:

```
POST   /api/v1/purchase/requisitions
POST   /api/v1/purchase/orders
POST   /api/v1/purchase/orders/:id/approve
POST   /api/v1/purchase/receipts
GET    /api/v1/purchase/orders/:id/status
GET    /api/v1/vendors/:id/performance
```

**İş Akışı**:

```
Requisition → Approval → RFQ → PO Creation →
Goods Receipt → Invoice Matching → Payment
```

**Öncelik**: 🔴 Critical
**Tahmini Süre**: 6 hafta
**Bağımlılıklar**: Accounting (invoice matching için)

---

### 2. Accounting/Finance (Muhasebe/Finans)

**Mevcut Durum**: ❌ TAMAMEN YOK

**Kapsam**: Detaylı analiz aşağıda "Accounting Modülü Detayı" bölümünde

**Öncelik**: 🔴 Critical (EN ÖNEMLİ)
**Tahmini Süre**: 12 hafta
**Bağımlılıklar**: Tüm modüller (accounting hub görevi görür)

---

### 3. Invoicing/Billing (Faturalama)

**Mevcut Durum**: Sales orders var ama fatura oluşturulmuyor

**Eksik Özellikler**:

- Sales Invoices (Satış Faturaları)
- Purchase Invoices (Satın Alma Faturaları)
- Credit Notes (İade Faturaları)
- Debit Notes (Düzeltme Faturaları)
- Proforma Invoices (Proforma Faturalar)
- **e-Invoice Integration** (Türkiye için ZORUNLU)
- **e-Archive Integration** (Türkiye)
- Payment Terms Management
- Invoice Templates
- Recurring Invoices
- Invoice Approval Workflow
- Multi-currency Invoicing
- Tax Calculation (KDV, ÖTV)
- Withholding Tax (Stopaj)

**Database Schema**:

```typescript
// Invoices
invoices {
  id, tenantId, invoiceType, invoiceNumber,
  customerId/supplierId, invoiceDate, dueDate,
  subtotal, taxAmount, totalAmount, currency,
  paymentTerms, status, notes
}

invoice_items {
  id, invoiceId, itemId, description,
  quantity, unitPrice, taxRate, taxAmount,
  lineTotal
}

// e-Invoice Integration
e_invoices {
  id, invoiceId, uuid, envelopeUuid,
  status, sendDate, responseDate,
  portalStatus, receiverName, ettn
}

e_invoice_logs {
  id, eInvoiceId, action, status,
  requestXml, responseXml, errorMessage
}

// Tax Configuration
tax_rates {
  id, tenantId, taxType, rate,
  validFrom, validTo, isDefault
}

// Payment Terms
payment_terms {
  id, tenantId, name, dueDays,
  discountPercent, discountDays
}
```

**e-Fatura Entegrasyonu**:

```typescript
// GİB (Gelir İdaresi Başkanlığı) entegrasyonu
export class EInvoiceService {
  // Fatura gönderimi
  async sendInvoice(invoice: Invoice): Promise<EInvoiceResponse>

  // Fatura durumu sorgulama
  async checkStatus(ettn: string): Promise<InvoiceStatus>

  // Fatura iptal
  async cancelInvoice(ettn: string, reason: string): Promise<void>

  // e-Arşiv fatura
  async sendArchiveInvoice(invoice: Invoice): Promise<void>
}
```

**Öncelik**: 🔴 Critical (Türkiye'de zorunlu)
**Tahmini Süre**: 8 hafta
**Bağımlılıklar**: Accounting, Sales, Purchase

---

### 4. HR & Payroll (İK ve Bordro)

**Mevcut Durum**: Employee modülü var ama sadece master data

**Eksik Özellikler**:

#### 4.1 Payroll

- Salary Structures (Maaş yapıları)
- Salary Components (Maaş bileşenleri: base, allowances, deductions)
- Payroll Processing (Bordro hesaplama)
- Payslip Generation (Bordro fişi)
- SSK Declaration (SGK bildirgeleri)
- Income Tax Calculation (Gelir vergisi hesabı)
- Stamp Tax (Damga vergisi)

#### 4.2 Leave Management

- Leave Types (İzin tipleri: annual, sick, unpaid)
- Leave Allocation (İzin hakediş)
- Leave Applications (İzin talepleri)
- Leave Approval Workflow
- Leave Balance Tracking
- Leave Calendar

#### 4.3 Attendance

- Clock In/Out (Giriş/Çıkış)
- Shift Management (Vardiya yönetimi)
- Overtime Tracking (Mesai takibi)
- Attendance Reports
- Late/Absence Tracking

#### 4.4 Performance

- Performance Goals (Hedefler)
- Performance Reviews (Değerlendirmeler)
- 360 Feedback
- Performance Ratings
- Performance History

#### 4.5 Recruitment

- Job Postings (İş ilanları)
- Applications (Başvurular)
- Interview Scheduling
- Candidate Evaluation
- Offer Management

#### 4.6 Benefits

- Benefit Plans (Yan haklar)
- Health Insurance
- Meal Cards (Yemek kartı)
- Transportation
- Benefit Enrollment

**Database Schema**:

```typescript
// Payroll
salary_structures
salary_components
payroll_runs
payslips
ssk_declarations

// Leave
leave_types
leave_allocations
leave_applications
leave_balances

// Attendance
attendance_records
shifts
shift_assignments
overtime_requests

// Performance
performance_goals
performance_reviews
performance_ratings

// Recruitment
job_postings
applications
interviews
offers

// Benefits
benefit_plans
benefit_enrollments
benefit_transactions
```

**Öncelik**: 🟡 High
**Tahmini Süre**: 10 hafta
**Bağımlılıklar**: Accounting (payroll → journal entries)

---

### 5. Warehouse Management System (WMS)

**Mevcut Durum**: Inventory modülü var ama basic (stocks, lots, locations)

**Eksik Özellikler**:

#### 5.1 Location Management

- Warehouse Hierarchy (Depo → Koridor → Raf → Gözler)
- Bin/Zone Management
- Location Types (Receiving, Picking, Storage, Shipping)
- Location Capacity
- Location Utilization

#### 5.2 Inbound Operations

- Receiving Schedule
- ASN (Advanced Shipping Notice)
- Put-away Strategies (FIFO, LIFO, nearest location)
- Quality Inspection
- Cross-docking

#### 5.3 Outbound Operations

- Pick Lists (Toplama listeleri)
- Wave Planning
- Batch Picking
- Zone Picking
- Pick-Pack-Ship Workflow
- Packing Lists
- Shipping Labels

#### 5.4 Inventory Control

- Cycle Counting (Döngüsel sayım)
- Physical Inventory (Fiziki sayım)
- Variance Reconciliation
- ABC Analysis
- Slow-moving Stock Reports
- Stock Aging

#### 5.5 Material Handling

- Barcode Scanning
- RFID Support
- Mobile Device Integration
- Pick-to-Light
- Voice Picking

**Database Schema**:

```typescript
// Location Hierarchy
warehouse_zones
warehouse_aisles
warehouse_bins
bin_capacities

// Inbound
receiving_schedules
asn_records
putaway_tasks
quality_inspections

// Outbound
pick_lists
pick_list_items
pick_waves
packing_lists
shipping_manifests

// Inventory Control
cycle_count_plans
cycle_count_tasks
physical_inventory_sessions
inventory_adjustments
abc_classifications
```

**API Endpoints**:

```
POST   /api/v1/warehouse/receiving
POST   /api/v1/warehouse/putaway
POST   /api/v1/warehouse/pick-lists
POST   /api/v1/warehouse/pack
POST   /api/v1/warehouse/ship
GET    /api/v1/warehouse/inventory/:location
POST   /api/v1/warehouse/cycle-count
```

**Öncelik**: 🟡 High
**Tahmini Süre**: 8 hafta
**Bağımlılıklar**: Inventory, Sales, Purchase

---

## 🟡 YÜKSEK ÖNCELİKLİ MODÜLLER

### 6. Reporting & Analytics

**Eksik Özellikler**:

- Dashboard Builder
- Report Designer (Drag & Drop)
- Custom Report Builder
- KPI Definitions
- Metric Tracking
- Data Visualization (Charts, Graphs)
- Scheduled Reports
- Email Report Delivery
- Excel/PDF Export
- Real-time Analytics
- Data Drill-down
- Filter & Grouping
- Multi-tenant Reporting

**Report Categories**:

```typescript
// Financial Reports
- Income Statement (Gelir Tablosu)
- Balance Sheet (Bilanço)
- Cash Flow Statement
- Accounts Aging Report
- Tax Reports

// Sales Reports
- Sales by Customer
- Sales by Product
- Sales Forecast
- Sales Pipeline
- Sales Performance

// Inventory Reports
- Stock Summary
- Stock Movement
- Reorder Report
- Slow-moving Items
- Stock Valuation

// Manufacturing Reports
- Production Schedule
- Work Order Status
- Material Consumption
- Production Efficiency
- Scrap Analysis

// HR Reports
- Headcount Report
- Attendance Summary
- Leave Balance
- Payroll Summary
- Performance Summary
```

**Öncelik**: 🟡 High
**Tahmini Süre**: 6 hafta

---

### 7. Notification & Communication

**Mevcut Durum**: Email ve SMS service var ama modül yok

**Eksik Özellikler**:

- Notification Center (Bildirim merkezi)
- In-app Notifications
- Push Notifications (Mobile)
- Email Notifications
- SMS Notifications
- WhatsApp Integration (Business API)
- Notification Templates
- Notification Rules & Triggers
- Notification Preferences
- Notification History
- Read/Unread Tracking
- Notification Batching
- Digest Notifications

**Event-driven Architecture**:

```typescript
// Event Bus
eventBus.emit('order.created', { orderId, customerId });
eventBus.emit('invoice.overdue', { invoiceId, customerId });
eventBus.emit('stock.low', { itemId, quantity });

// Notification Rules
{
  event: 'order.created',
  channels: ['email', 'in-app'],
  recipients: ['sales_team', 'customer'],
  template: 'order_confirmation'
}
```

**Database Schema**:

```typescript
notifications {
  id, tenantId, userId, type, title,
  message, data, isRead, readAt,
  channel, status
}

notification_preferences {
  userId, channel, eventType, enabled
}

notification_templates {
  id, name, eventType, channel,
  subject, body, variables
}

notification_logs {
  id, notificationId, channel,
  status, sentAt, deliveredAt, error
}
```

**Öncelik**: 🟡 High
**Tahmini Süre**: 4 hafta

---

### 8. Workflow & Approval Engine

**Mevcut Durum**: Sales orders'da `approvedBy` field var ama workflow engine yok

**Eksik Özellikler**:

- Visual Workflow Designer
- Approval Rules & Routing
- Multi-level Approvals
- Parallel Approvals
- Sequential Approvals
- Conditional Workflows
- Approval Delegation
- Auto-approval Rules
- Escalation Rules
- Approval History & Audit Trail
- Mobile Approval
- Email Approval Links

**Workflow Types**:

```typescript
// Purchase Approval
Requisition → Department Head → Finance → Procurement

// Invoice Approval
Invoice Created → Manager → Finance → Payment

// Leave Approval
Leave Request → Direct Manager → HR

// Sales Order Approval
Draft → Sales Manager → Credit Check → Confirmed

// Price Approval
Price > $10k → Regional Manager → Director
```

**Database Schema**:

```typescript
workflows {
  id, name, entityType, isActive,
  steps, rules
}

workflow_instances {
  id, workflowId, entityId, status,
  currentStep, startedAt, completedAt
}

approval_steps {
  id, workflowInstanceId, stepNumber,
  approverId, status, assignedAt,
  actionedAt, comments
}

approval_delegations {
  id, userId, delegateToId, startDate,
  endDate, reason
}

escalation_rules {
  id, workflowId, stepNumber,
  escalateAfterHours, escalateTo
}
```

**Öncelik**: 🟡 High
**Tahmini Süre**: 6 hafta

---

### 9. Quality Management (QM)

**Mevcut Durum**: Calibration modülü var ama QM yok

**Eksik Özellikler**:

- Quality Control Plans
- Inspection Checklists
- Inspection Workflows
- Acceptance Criteria
- Non-Conformance Reports (NCR)
- Corrective Actions (CA)
- Preventive Actions (PA)
- CAPA Management
- Quality Certificates
- Certificate Templates
- Supplier Quality Rating
- Quality Audits
- Audit Schedules
- Audit Findings
- Statistical Process Control (SPC)
- Control Charts

**Database Schema**:

```typescript
// QC Plans
quality_control_plans
qc_inspection_points
inspection_checklists
inspection_results

// NCR & CAPA
non_conformance_reports
corrective_actions
preventive_actions
capa_effectiveness

// Certificates
quality_certificates
certificate_templates

// Audits
quality_audits
audit_findings
audit_actions

// SPC
control_charts
spc_data_points
```

**Öncelik**: 🟡 High
**Tahmini Süre**: 6 hafta

---

### 10. CRM - Customer Relationship Management

**Mevcut Durum**: Customer modülü var ama sadece master data

**Eksik Özellikler**:

#### 10.1 Lead Management

- Lead Capture (Web forms, imports)
- Lead Scoring
- Lead Assignment
- Lead Qualification
- Lead Conversion to Opportunity

#### 10.2 Opportunity Management

- Sales Pipeline
- Pipeline Stages
- Win/Loss Tracking
- Opportunity Forecast
- Expected Revenue

#### 10.3 Contact Management

- Contact Profiles
- Contact Roles
- Contact History
- Communication Log
- Contact Segmentation

#### 10.4 Activity Management

- Tasks
- Calls
- Meetings
- Emails
- Activity Timeline

#### 10.5 Marketing

- Campaigns
- Campaign Response Tracking
- Email Campaigns
- Marketing Lists
- Lead Generation

#### 10.6 Customer Support

- Support Tickets
- Ticket Assignment
- SLA Management
- Ticket Escalation
- Customer Satisfaction (CSAT)

**Database Schema**:

```typescript
// Leads
leads
lead_sources
lead_scores

// Opportunities
opportunities
opportunity_stages
opportunity_products
win_loss_reasons

// Contacts
contacts (extend existing)
contact_roles
contact_interactions

// Activities
activities
activity_types
activity_participants

// Marketing
campaigns
campaign_members
marketing_lists

// Support
support_tickets
ticket_comments
sla_policies
```

**Öncelik**: 🟡 High
**Tahmini Süre**: 8 hafta

---

### 11. Shipping & Logistics

**Mevcut Durum**: Sales orders'da `shippingAddressId` var ama detaylı sistem yok

**Eksik Özellikler**:

- Shipment Planning
- Carrier Management
- Carrier Integration (UPS, FedEx, DHL, Aras Kargo, MNG)
- Tracking Number Management
- Shipping Label Generation
- Packing Lists
- Delivery Notes
- Route Optimization
- Freight Cost Calculation
- Multi-parcel Shipments
- Delivery Confirmation
- Proof of Delivery (POD)
- Returns Management (RMA)

**Database Schema**:

```typescript
shipments {
  id, tenantId, salesOrderId,
  shipmentNumber, carrierId, trackingNumber,
  shipDate, estimatedDelivery, actualDelivery,
  status, totalWeight, totalVolume
}

shipment_packages {
  id, shipmentId, packageNumber,
  weight, dimensions, trackingNumber
}

carriers {
  id, name, code, apiEndpoint,
  apiKey, isActive
}

carrier_services {
  id, carrierId, serviceName,
  serviceCode, estimatedDays, cost
}

delivery_notes {
  id, shipmentId, noteDate,
  receivedBy, signature, notes
}
```

**Öncelik**: 🟡 High
**Tahmini Süre**: 5 hafta

---

### 12. Pricing & Discount Management

**Mevcut Durum**: Sales'da `unitPrice` var ama pricing engine yok

**Eksik Özellikler**:

- Price Lists
- Customer-specific Pricing
- Product-specific Pricing
- Volume-based Pricing
- Tiered Pricing
- Promotional Pricing
- Discount Rules
- Coupon Management
- Price Change History
- Competitor Price Tracking
- Margin Analysis
- Price Simulation
- Dynamic Pricing

**Database Schema**:

```typescript
price_lists {
  id, tenantId, name, currency,
  validFrom, validTo, isDefault
}

price_list_items {
  id, priceListId, itemId,
  price, minQuantity, maxQuantity
}

customer_pricing {
  id, customerId, itemId, price,
  validFrom, validTo
}

discount_rules {
  id, name, type, value,
  conditions, validFrom, validTo
}

promotions {
  id, name, description, type,
  discountValue, startDate, endDate,
  applicableItems, applicableCustomers
}

coupons {
  id, code, promotionId, maxUses,
  usedCount, expiryDate
}
```

**Öncelik**: 🟡 High
**Tahmini Süre**: 4 hafta

---

## 🟢 ORTA ÖNCELİKLİ MODÜLLER

### 13. Project Management

**Mevcut Durum**: Task modülü var ama proje yönetimi yok

**Eksikler**: Projects, Milestones, Gantt Charts, Resource Allocation, Time Tracking, Budget Tracking, Project Templates

**Tahmini Süre**: 6 hafta

---

### 14. Service Management

**Mevcut Durum**: Maintenance modülü var ama servis yönetimi yok

**Eksikler**: Service Tickets, Field Service, Technician Dispatch, Service Contracts, Warranty Claims, Parts Management, Service Reports

**Tahmini Süre**: 5 hafta

---

### 15. Returns & RMA Management

**Mevcut Durum**: Yok

**Eksikler**: Return Authorizations, Return Processing, Refund Management, Restocking, Return Reasons, Return Analytics

**Tahmini Süre**: 3 hafta

---

### 16. Contract Management

**Mevcut Durum**: Yok

**Eksikler**: Contract Templates, Contract Lifecycle, Renewal Tracking, Compliance Monitoring, Contract Versioning, E-signature Integration

**Tahmini Süre**: 4 hafta

---

### 17. Document Management System (DMS)

**Mevcut Durum**: Media modülü var ama DMS değil

**Eksikler**: Version Control, Access Permissions, Document Workflow, Folder Structure, Tags, Full-text Search, OCR, Document Templates

**Tahmini Süre**: 5 hafta

---

### 18. Audit Trail & Compliance

**Mevcut Durum**: Her tabloda `insertedAt`/`updatedAt` var ama audit trail yok

**Eksikler**: Change History, User Activity Logs, Field-level Tracking, Audit Reports, Compliance Reports, Data Retention, GDPR Tools

**Tahmini Süre**: 3 hafta

---

### 19. Time & Expense Tracking

**Mevcut Durum**: Yok

**Eksikler**: Timesheets, Project Time Tracking, Expense Reports, Mileage Tracking, Receipt Scanning, Approval Workflow, Billable Hours

**Tahmini Süre**: 4 hafta

---

### 20. Multi-Location/Multi-Company

**Mevcut Durum**: `locations` tablosu var ama çoklu tesis yönetimi yok

**Eksikler**: Inter-company Transactions, Transfer Pricing, Consolidated Reporting, Location Hierarchies, Location-specific Pricing, Multi-currency

**Tahmini Süre**: 6 hafta

---

## 📈 Modül Geliştirme Roadmap

### Faz 1: Temel Finansal Modüller (6 ay)

**Hedef**: Temel ERP işlevselliği

1. ✅ Accounting/Finance (12 hafta) - EN ÖNCELİKLİ
2. ✅ Invoicing/Billing (8 hafta)
3. ✅ Purchase/Procurement (6 hafta)
4. ✅ Reporting & Analytics (6 hafta)

### Faz 2: Operasyonel Modüller (6 ay)

**Hedef**: Günlük operasyonları destekleme
5. ✅ Workflow Engine (6 hafta)
6. ✅ Notification System (4 hafta)
7. ✅ Warehouse Management (8 hafta)
8. ✅ Shipping & Logistics (5 hafta)
9. ✅ Pricing Engine (4 hafta)

### Faz 3: Genişletilmiş İşlevler (6 ay)

**Hedef**: Rekabet avantajı
10. ✅ HR & Payroll (10 hafta)
11. ✅ CRM (8 hafta)
12. ✅ Quality Management (6 hafta)
13. ✅ Service Management (5 hafta)

### Faz 4: Tamamlayıcı Modüller (3 ay)

**Hedef**: Ekosistem tamamlama
14. ✅ Project Management (6 hafta)
15. ✅ Returns & RMA (3 hafta)
16. ✅ Contract Management (4 hafta)
17. ✅ Document Management (5 hafta)
18. ✅ Audit Trail (3 hafta)

---

## 🎯 İlk 3 Modül Önerisi

Hemen başlanması gereken modüller:

### 1. Accounting/Finance ⭐⭐⭐⭐⭐

**Neden**: Tüm modüller accounting'e bağlı, finansal takip yapılamıyor
**Süre**: 12 hafta
**ROI**: Çok yüksek

### 2. Invoicing/Billing ⭐⭐⭐⭐⭐

**Neden**: Türkiye'de e-Fatura zorunlu, manuel faturalama sürdürülemez
**Süre**: 8 hafta
**ROI**: Çok yüksek

### 3. Purchase/Procurement ⭐⭐⭐⭐

**Neden**: Sales var ama Purchase yok, eksik döngü
**Süre**: 6 hafta
**ROI**: Yüksek

---

## 📞 Destek

Modül geliştirme konusunda yardıma ihtiyacınız varsa:

- GitHub Issues: <https://github.com/prodobit/prodobit/issues>
- Discussions: <https://github.com/prodobit/prodobit/discussions>
