# Asset Issue Module

## Overview
Tracks asset failures, defects, and problems. Manages issue lifecycle from reporting through resolution with severity levels, categories, assignment, and resolution tracking.

## Database Schema

### asset_issues
```sql
asset_issues {
  id: uuid PRIMARY KEY
  tenant_id: uuid NOT NULL REFERENCES tenants
  asset_id: uuid NOT NULL REFERENCES assets
  title: text NOT NULL
  description: text NOT NULL
  category: text NOT NULL
  severity: text NOT NULL
  status: text NOT NULL DEFAULT 'reported'
  reported_by: uuid NOT NULL REFERENCES users
  assigned_to: uuid NULL REFERENCES users
  related_task_id: uuid NULL
  reported_at: timestamp(6) with timezone DEFAULT now()
  acknowledged_at: timestamp(6) with timezone NULL
  resolved_at: timestamp(6) with timezone NULL
  closed_at: timestamp(6) with timezone NULL
  estimated_resolution_time: integer NULL -- hours
  actual_resolution_time: integer NULL -- hours
  resolution_notes: text NULL
  root_cause: text NULL
  corrective_actions: text NULL
  preventive_actions: text NULL
  image_ids: text[] NULL
  document_ids: text[] NULL
  location: text NULL -- specific location within asset
  impact_description: text NULL
  downtime: boolean DEFAULT false
  inserted_at: timestamp(6) with timezone DEFAULT now()
  updated_at: timestamp(6) with timezone DEFAULT now()
  deleted_at: timestamp(6) with timezone NULL

  INDEX (tenant_id, asset_id)
  INDEX (tenant_id, status)
  INDEX (tenant_id, severity)
  INDEX (tenant_id, category)
  INDEX (reported_by)
  INDEX (assigned_to)
  INDEX (reported_at)

  CONSTRAINT category IN ('mechanical', 'electrical', 'software',
                          'structural', 'cosmetic', 'safety',
                          'performance', 'other')
  CONSTRAINT severity IN ('critical', 'high', 'medium', 'low')
  CONSTRAINT status IN ('reported', 'acknowledged', 'in_progress',
                        'resolved', 'closed', 'cancelled')
}
```

## Issue Lifecycle

### Status Flow
```
reported → acknowledged → in_progress → resolved → closed
                                     ↓
                                 cancelled
```

**Status Definitions:**
- **reported**: Initial report, awaiting acknowledgment
- **acknowledged**: Issue confirmed, awaiting assignment
- **in_progress**: Actively being worked on
- **resolved**: Fix implemented, awaiting verification
- **closed**: Verified and finalized
- **cancelled**: Issue cancelled/invalid

### Severity Levels
- **critical**: System down, immediate action required
- **high**: Major functionality affected
- **medium**: Moderate impact, workaround available
- **low**: Minor issue, minimal impact

### Categories
- **mechanical**: Mechanical failures
- **electrical**: Electrical problems
- **software**: Software/firmware issues
- **structural**: Structural damage
- **cosmetic**: Appearance issues
- **safety**: Safety hazards
- **performance**: Performance degradation
- **other**: Other issues

## Key Features

### Issue Tracking
- Title and detailed description
- Asset linkage
- Category and severity classification
- Location within asset
- Downtime flag

### Assignment
- Reported by user
- Assigned to technician/engineer
- Related task linkage (future)

### Time Tracking
- reported_at: When issue was reported
- acknowledged_at: When acknowledged
- resolved_at: When resolved
- closed_at: When closed
- estimated_resolution_time: Hours estimated
- actual_resolution_time: Hours actually spent

### Resolution Documentation
- resolution_notes: How issue was resolved
- root_cause: Root cause analysis
- corrective_actions: Actions taken to fix
- preventive_actions: Actions to prevent recurrence

### Media Attachments
- image_ids: Array of image references
- document_ids: Array of document references
- Links to media module

### Impact Assessment
- impact_description: Business impact
- downtime: Whether asset is down

## API Endpoints

### GET /asset-issues
List all asset issues with optional filters
- Auth: Required
- Permission: asset-issue:read
- Query Parameters:
  - assetId: Filter by asset
  - category: Filter by category
  - severity: Filter by severity
  - status: Filter by status
  - reportedBy: Filter by reporter
  - assignedTo: Filter by assignee
  - downtime: Filter by downtime status
  - reportedAfter: Date filter
  - reportedBefore: Date filter
  - search: Search in title/description
- Returns: Array of issues with user details

### GET /asset-issues/:id
Get single asset issue
- Auth: Required
- Permission: asset-issue:read
- Returns: Issue with reporter and assignee details

### POST /asset-issues
Create new asset issue
- Auth: Required
- Permission: asset-issue:create
- Body:
  ```json
  {
    "assetId": "uuid",
    "title": "string",
    "description": "string",
    "category": "mechanical|electrical|software|...",
    "severity": "critical|high|medium|low",
    "location": "string (optional)",
    "downtime": "boolean (optional)",
    "imageIds": ["uuid"] (optional),
    "documentIds": ["uuid"] (optional)
  }
  ```
- Returns: Created issue

### PUT /asset-issues/:id
Update asset issue
- Auth: Required
- Permission: asset-issue:update
- Body: Partial issue data
- Returns: Updated issue

### PATCH /asset-issues/:id/assign
Assign issue to user
- Auth: Required
- Permission: asset-issue:update
- Body: { assignedTo: "uuid" }
- Returns: Updated issue

### PATCH /asset-issues/:id/status
Change issue status
- Auth: Required
- Permission: asset-issue:update
- Body: { status: "status", notes: "string (optional)" }
- Returns: Updated issue with timestamp

### PATCH /asset-issues/:id/resolve
Mark issue as resolved
- Auth: Required
- Permission: asset-issue:update
- Body:
  ```json
  {
    "resolutionNotes": "string",
    "rootCause": "string (optional)",
    "correctiveActions": "string (optional)",
    "preventiveActions": "string (optional)",
    "actualResolutionTime": "integer (hours)"
  }
  ```
- Returns: Updated issue with resolved_at timestamp

## Service Methods

### getAssetIssues(tenantId, query?)
List issues with optional filtering
- Parameters: tenantId, optional query filters
- Returns: Array of issues with user details
- Ordering: Most recent first (reported_at DESC)

### getAssetIssueById(id, tenantId)
Get single issue
- Parameters: id, tenantId
- Returns: Issue with user details or null
- Includes: Reporter and assignee user info

### createAssetIssue(tenantId, data)
Create new issue
- Parameters: tenantId, CreateAssetIssueRequest
- Returns: Created issue
- Sets: reported_at timestamp, status='reported'

### updateAssetIssue(id, tenantId, data)
Update issue
- Parameters: id, tenantId, UpdateAssetIssueRequest
- Returns: Updated issue
- Updates: updated_at timestamp

## Business Rules

1. Issue must be linked to an asset
2. Reporter must be a valid user
3. Assignee must be a valid user (optional)
4. Status transitions should be logical
5. Resolution requires resolution notes
6. Downtime flag indicates asset unavailability
7. Time tracking in hours
8. Soft delete supported

## Integration Points

- **Asset Module**: Links to assets table
- **User Module**: Reporter and assignee tracking
- **Task Module**: Related task linkage (future)
- **Media Module**: Image and document attachments
- **Notification**: Alert on critical issues (future)

## Use Cases

### Critical Issue Flow
1. User reports critical issue
2. Issue status: reported
3. Technician acknowledges
4. Issue status: acknowledged
5. Technician assigned
6. Issue status: in_progress
7. Technician resolves
8. Issue status: resolved
9. Manager verifies and closes
10. Issue status: closed

### Resolution Tracking
- Capture root cause
- Document corrective actions
- Define preventive actions
- Track actual vs estimated time

## Notes

- Turkish comments in schema for clarity
- Supports comprehensive issue tracking
- Time tracking in hours (integer)
- Media attachments via array fields
- User details included in responses
- All operations are tenant-scoped
- Soft delete support
- Search across title and description
- Downtime flag for urgent tracking
