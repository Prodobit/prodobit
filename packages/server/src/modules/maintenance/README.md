# Maintenance Module

## Overview
Manages preventive and corrective maintenance plans and records for assets. Schedules recurring maintenance, tracks completion, and automates task creation.

## Database Schema

### maintenance_plans
```sql
maintenance_plans {
  id: uuid PRIMARY KEY
  tenant_id: uuid NOT NULL REFERENCES tenants
  asset_id: uuid NOT NULL REFERENCES assets
  name: text NOT NULL
  description: text NULL
  type: text NOT NULL DEFAULT 'preventive'
  frequency: text NOT NULL
  status: text NOT NULL DEFAULT 'active'
  start_date: timestamp(6) with timezone NOT NULL
  end_date: timestamp(6) with timezone NULL
  next_maintenance_date: timestamp(6) with timezone NULL
  last_maintenance_date: timestamp(6) with timezone NULL
  interval_days: integer NULL
  interval_months: integer NULL
  interval_hours: integer NULL -- Usage-based interval
  estimated_duration_hours: integer NULL
  default_assignee_id: uuid NULL REFERENCES users
  priority: text DEFAULT 'medium'
  instructions: text NULL
  checklist_items: jsonb NULL
  required_parts: jsonb NULL
  required_tools: text[] NULL
  safety_requirements: text NULL
  auto_create_task: boolean DEFAULT true
  task_creation_lead_days: integer DEFAULT 7
  alert_before_days: integer DEFAULT 14
  alert_recipients: text[] NULL
  inserted_at: timestamp(6) with timezone DEFAULT now()
  updated_at: timestamp(6) with timezone DEFAULT now()
  deleted_at: timestamp(6) with timezone NULL

  CONSTRAINT type IN ('preventive', 'corrective', 'predictive',
                      'condition_based', 'breakdown')
  CONSTRAINT frequency IN ('daily', 'weekly', 'monthly', 'quarterly',
                           'semi_annually', 'annually', 'custom',
                           'usage_based')
  CONSTRAINT status IN ('active', 'inactive', 'draft')
  CONSTRAINT priority IN ('critical', 'high', 'medium', 'low')
}
```

## Key Features

### Maintenance Types
- **preventive**: Scheduled preventive maintenance
- **corrective**: Corrective maintenance
- **predictive**: Predictive maintenance
- **condition_based**: Condition-based maintenance
- **breakdown**: Emergency breakdown maintenance

### Frequency Options
- daily, weekly, monthly, quarterly
- semi_annually, annually
- custom: Custom interval
- usage_based: Based on usage hours

### Scheduling
- Time-based: interval_days, interval_months
- Usage-based: interval_hours
- Next and last maintenance date tracking
- Plan start/end dates

### Execution
- estimated_duration_hours: Time required
- default_assignee_id: Default technician
- priority: Maintenance priority
- instructions: Maintenance procedure
- checklist_items: Step-by-step checklist (JSONB)

### Resources
- required_parts: Parts needed (JSONB)
- required_tools: Tools needed
- safety_requirements: Safety precautions

### Automation
- auto_create_task: Auto-create tasks
- task_creation_lead_days: Lead time for task creation
- alert_before_days: Alert lead time
- alert_recipients: Users to notify

## Business Rules

1. Maintenance plan must be linked to asset
2. Frequency must be specified
3. Type determines maintenance strategy
4. Next maintenance date auto-calculated
5. Tasks auto-created based on schedule
6. Usage-based maintenance tracks hours
7. Soft delete supported

## Integration Points

- **Asset Module**: Assets requiring maintenance
- **Task Module**: Auto-created maintenance tasks
- **User Module**: Assignee and alerts
- **Inventory**: Parts consumption (future)
- **Notification**: Maintenance due alerts (future)

## Notes

- Supports multiple maintenance strategies
- Auto-task creation
- Usage-based scheduling
- Parts and tools tracking
- Safety requirements documentation
- All operations are tenant-scoped
