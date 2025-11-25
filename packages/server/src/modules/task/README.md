# Task Module

## Overview
General task management system with assignment, tracking, checklist, recurrence, and dependencies. Supports maintenance, calibration, repair, inspection tasks linked to assets.

## Database Schema

### tasks
```sql
tasks {
  id: uuid PRIMARY KEY
  tenant_id: uuid NOT NULL REFERENCES tenants
  title: text NOT NULL
  description: text NULL
  type: text NOT NULL DEFAULT 'general'
  priority: text NOT NULL DEFAULT 'medium'
  status: text NOT NULL DEFAULT 'pending'
  assignee_id: uuid NULL REFERENCES users
  created_by: uuid NOT NULL REFERENCES users
  assigned_by: uuid NULL REFERENCES users
  parent_task_id: uuid NULL -- Hierarchical tasks
  related_asset_id: uuid NULL REFERENCES assets
  related_issue_id: uuid NULL REFERENCES asset_issues
  related_maintenance_plan_id: uuid NULL
  related_calibration_plan_id: uuid NULL
  location_id: uuid NULL REFERENCES locations
  start_date: timestamp(6) with timezone NULL
  end_date: timestamp(6) with timezone NULL
  due_date: timestamp(6) with timezone NULL
  completed_at: timestamp(6) with timezone NULL
  estimated_hours: integer NULL
  actual_hours: integer NULL
  progress_percentage: integer DEFAULT 0
  checklist_items: jsonb NULL
  checklist_completed_count: integer DEFAULT 0
  is_recurring: boolean DEFAULT false
  recurrence_interval: text NULL
  recurrence_count: integer NULL
  next_occurrence_date: timestamp(6) with timezone NULL
  notes: text NULL
  tags: text[] NULL
  image_ids: text[] NULL
  document_ids: text[] NULL
  completion_notes: text NULL
  blocking_reason: text NULL
  inserted_at: timestamp(6) with timezone DEFAULT now()
  updated_at: timestamp(6) with timezone DEFAULT now()
  deleted_at: timestamp(6) with timezone NULL

  INDEX (tenant_id, type)
  INDEX (tenant_id, status)
  INDEX (tenant_id, priority)
  INDEX (assignee_id)
  INDEX (created_by)
  INDEX (parent_task_id)
  INDEX (related_asset_id)
  INDEX (related_issue_id)
  INDEX (due_date)
  INDEX (is_recurring, next_occurrence_date)

  CONSTRAINT type IN ('maintenance', 'calibration', 'repair',
                      'inspection', 'installation', 'general', 'other')
  CONSTRAINT priority IN ('critical', 'high', 'medium', 'low')
  CONSTRAINT status IN ('pending', 'in_progress', 'on_hold',
                        'completed', 'cancelled', 'blocked')
  CONSTRAINT recurrence_interval IN ('daily', 'weekly', 'monthly',
                                     'quarterly', 'yearly')
  CONSTRAINT progress_percentage BETWEEN 0 AND 100
}
```

## Key Features

### Task Types
- maintenance: Scheduled maintenance
- calibration: Equipment calibration
- repair: Repair work
- inspection: Inspection tasks
- installation: Installation work
- general: General tasks
- other: Other types

### Priority Levels
- critical: Immediate attention
- high: High priority
- medium: Normal priority
- low: Low priority

### Status Tracking
- pending: Not started
- in_progress: Being worked on
- on_hold: Temporarily paused
- completed: Finished
- cancelled: Cancelled
- blocked: Blocked by dependency or issue

### Assignment
- Assignee: User responsible
- Created by: Task creator
- Assigned by: Who assigned the task
- Team collaboration support

### Time Management
- start_date: When task starts
- end_date: When task ends
- due_date: Deadline
- completed_at: Completion timestamp
- estimated_hours: Time estimate
- actual_hours: Time actually spent

### Progress Tracking
- progress_percentage: 0-100%
- checklist_items: Task checklist (JSONB)
- checklist_completed_count: Completed items count

### Checklist Format
```json
[
  {
    "id": "uuid",
    "title": "Check oil level",
    "completed": true,
    "completedAt": "2025-01-01T10:00:00Z",
    "completedBy": "user-uuid",
    "order": 1
  }
]
```

### Recurring Tasks
- is_recurring: Recurrence flag
- recurrence_interval: daily, weekly, monthly, quarterly, yearly
- recurrence_count: Number of occurrences
- next_occurrence_date: Next scheduled date

### Hierarchical Tasks
- parent_task_id: Parent task reference
- Supports subtasks
- Task breakdown structure

### Relationships
- related_asset_id: Linked asset
- related_issue_id: Linked asset issue
- related_maintenance_plan_id: Linked maintenance plan
- related_calibration_plan_id: Linked calibration plan
- location_id: Task location

### Additional Features
- notes: Task notes
- tags: Categorization tags
- image_ids: Image attachments
- document_ids: Document attachments
- completion_notes: Completion summary
- blocking_reason: Why task is blocked

## Business Rules

1. Task must have title
2. Priority and status must be valid
3. Progress must be 0-100%
4. Recurring tasks need interval
5. Completed tasks have completed_at timestamp
6. Blocked tasks should have blocking_reason
7. Soft delete supported

## Integration Points

- **Asset Module**: Asset-related tasks
- **Asset-Issue Module**: Issue resolution tasks
- **Calibration Module**: Calibration tasks
- **Maintenance Module**: Maintenance tasks
- **User Module**: Assignment and tracking
- **Location Module**: Task location
- **Media Module**: Attachments

## Notes

- Comprehensive task management
- Supports complex workflows
- Checklist for detailed tracking
- Recurring task automation
- Parent-child task hierarchy
- All operations are tenant-scoped
- Turkish comments in schema
