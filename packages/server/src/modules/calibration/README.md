# Calibration Module

## Overview
Manages calibration schedules and records for measurement equipment and precision instruments. Tracks calibration certificates, standards compliance, and automates task creation.

## Database Schema

### calibration_plans
```sql
calibration_plans {
  id: uuid PRIMARY KEY
  tenant_id: uuid NOT NULL REFERENCES tenants
  asset_id: uuid NOT NULL REFERENCES assets
  name: text NOT NULL
  description: text NULL
  type: text NOT NULL DEFAULT 'external'
  frequency: text NOT NULL
  status: text NOT NULL DEFAULT 'active'
  start_date: timestamp(6) with timezone NOT NULL
  end_date: timestamp(6) with timezone NULL
  next_calibration_date: timestamp(6) with timezone NULL
  last_calibration_date: timestamp(6) with timezone NULL
  interval_days: integer NULL
  interval_months: integer NULL
  calibration_standard: text NULL
  reference_standard: text NULL
  acceptance_criteria: text NULL
  tolerance_range: text NULL
  estimated_duration_hours: integer NULL
  default_assignee_id: uuid NULL REFERENCES users
  external_provider_id: uuid NULL REFERENCES parties
  calibration_location: text NULL
  priority: text DEFAULT 'medium'
  instructions: text NULL
  checklist_items: jsonb NULL
  required_equipment: text[] NULL
  environmental_conditions: text NULL
  requires_certificate: boolean DEFAULT true
  certificate_validity_days: integer NULL
  regulatory_requirements: text[] NULL
  compliance_standards: text[] NULL
  auto_create_task: boolean DEFAULT true
  task_creation_lead_days: integer DEFAULT 14
  alert_before_days: integer DEFAULT 30
  alert_recipients: text[] NULL
  inserted_at: timestamp(6) with timezone DEFAULT now()
  updated_at: timestamp(6) with timezone DEFAULT now()
  deleted_at: timestamp(6) with timezone NULL

  CONSTRAINT type IN ('internal', 'external', 'self')
  CONSTRAINT frequency IN ('monthly', 'quarterly', 'semi_annually',
                           'annually', 'biannually', 'custom')
  CONSTRAINT status IN ('active', 'inactive', 'draft')
  CONSTRAINT priority IN ('critical', 'high', 'medium', 'low')
}
```

## Key Features

### Calibration Types
- **internal**: Calibrated in-house
- **external**: External calibration service
- **self**: Self-calibration

### Frequency Options
- monthly: Every month
- quarterly: Every 3 months
- semi_annually: Every 6 months
- annually: Every year
- biannually: Every 2 years
- custom: Custom interval (days/months)

### Standards & Compliance
- calibration_standard: ISO 17025, ISO 9001, etc.
- reference_standard: Reference equipment
- acceptance_criteria: Pass/fail criteria
- tolerance_range: Acceptable deviation (±0.1%, etc.)
- regulatory_requirements: Required regulations
- compliance_standards: Compliance standards

### Scheduling
- start_date: Plan start date
- end_date: Plan end date (optional)
- next_calibration_date: Next scheduled calibration
- last_calibration_date: Last completed calibration
- interval_days: Custom interval in days
- interval_months: Custom interval in months

### Execution Details
- estimated_duration_hours: Time required
- default_assignee_id: Default technician (internal)
- external_provider_id: Calibration service provider (external)
- calibration_location: Where calibration is performed
- priority: Calibration priority

### Instructions & Checklist
- instructions: Calibration procedure
- checklist_items: Step-by-step checklist (JSONB)
- required_equipment: Equipment needed
- environmental_conditions: Temperature, humidity requirements

### Certificate Management
- requires_certificate: Certificate required flag
- certificate_validity_days: Certificate validity period

### Automation
- auto_create_task: Auto-create tasks
- task_creation_lead_days: Days before due date to create task
- alert_before_days: Days before due date to alert
- alert_recipients: Users to notify

## Business Rules

1. Calibration plan must be linked to asset
2. Frequency must be specified
3. Type determines provider (internal vs external)
4. Next calibration date auto-calculated based on frequency
5. Tasks auto-created based on lead time
6. Certificates tracked if required
7. Soft delete supported

## Integration Points

- **Asset Module**: Equipment requiring calibration
- **Task Module**: Auto-created calibration tasks
- **Party Module**: External calibration providers
- **User Module**: Assignee and alert recipients
- **Notification**: Calibration due alerts (future)

## Notes

- Supports regulatory compliance tracking
- Auto-task creation for scheduling
- Certificate validity tracking
- External provider management
- Environmental condition requirements
- Checklist for procedure compliance
- All operations are tenant-scoped
- Turkish comments in schema
