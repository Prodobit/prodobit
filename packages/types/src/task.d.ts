/**
 * Task (Görev/İş Yönetimi)
 *
 * Kullanıcılara iş atama, görev takibi ve proje yönetimi için kullanılır.
 * Asset bakımı, kalibrasyon, arıza çözümü gibi işlemler için görev oluşturulur.
 *
 * Özellikler:
 * - Parent/Child task ilişkisi (alt görevler)
 * - Task dependencies (önce X yapılmalı)
 * - Priority seviyeleri
 * - Tahmini ve gerçek süre takibi
 * - Recurring tasks (tekrarlayan görevler)
 * - Checklist desteği
 */
export declare const taskPriority: import("arktype/internal/methods/string.ts").StringType<"low" | "medium" | "high" | "critical", {}>;
export declare const taskStatus: import("arktype/internal/methods/string.ts").StringType<"pending" | "in_progress" | "cancelled" | "completed" | "on_hold" | "blocked", {}>;
export declare const taskType: import("arktype/internal/methods/string.ts").StringType<"maintenance" | "other" | "calibration" | "repair" | "inspection" | "installation" | "general", {}>;
export declare const taskRecurrenceInterval: import("arktype/internal/methods/string.ts").StringType<"daily" | "weekly" | "monthly" | "quarterly" | "yearly", {}>;
export declare const task: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    tenantId: string;
    title: string;
    type: "maintenance" | "other" | "calibration" | "repair" | "inspection" | "installation" | "general";
    priority: "low" | "medium" | "high" | "critical";
    status: "pending" | "in_progress" | "cancelled" | "completed" | "on_hold" | "blocked";
    createdBy: string;
    insertedAt: string;
    updatedAt: string;
    description?: string | undefined;
    assigneeId?: string | undefined;
    assignedBy?: string | undefined;
    parentTaskId?: string | undefined;
    relatedAssetId?: string | undefined;
    relatedIssueId?: string | undefined;
    relatedMaintenancePlanId?: string | undefined;
    relatedCalibrationPlanId?: string | undefined;
    locationId?: string | undefined;
    startDate?: string | undefined;
    endDate?: string | undefined;
    dueDate?: string | undefined;
    completedAt?: string | undefined;
    estimatedHours?: number | undefined;
    actualHours?: number | undefined;
    progressPercentage?: number | undefined;
    checklistItems?: unknown[] | undefined;
    checklistCompletedCount?: number | undefined;
    isRecurring?: boolean | undefined;
    recurrenceInterval?: "daily" | "weekly" | "monthly" | "quarterly" | "yearly" | undefined;
    recurrenceCount?: number | undefined;
    nextOccurrenceDate?: string | undefined;
    notes?: string | undefined;
    tags?: string[] | undefined;
    imageIds?: string[] | undefined;
    documentIds?: string[] | undefined;
    completionNotes?: string | undefined;
    blockingReason?: string | undefined;
    deletedAt?: string | undefined;
}, {}>;
export declare const taskDependency: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    tenantId: string;
    taskId: string;
    dependsOnTaskId: string;
    dependencyType: "finish_to_start" | "start_to_start" | "finish_to_finish" | "start_to_finish";
    insertedAt: string;
    lagDays?: number | undefined;
}, {}>;
export declare const taskChecklistItem: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    title: string;
    completed: boolean;
    completedAt?: string | undefined;
    completedBy?: string | undefined;
    order?: number | undefined;
}, {}>;
export declare const createTaskRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    title: string;
    description?: string | undefined;
    type?: "maintenance" | "other" | "calibration" | "repair" | "inspection" | "installation" | "general" | undefined;
    priority?: "low" | "medium" | "high" | "critical" | undefined;
    assigneeId?: string | undefined;
    parentTaskId?: string | undefined;
    relatedAssetId?: string | undefined;
    relatedIssueId?: string | undefined;
    relatedMaintenancePlanId?: string | undefined;
    relatedCalibrationPlanId?: string | undefined;
    locationId?: string | undefined;
    startDate?: string | undefined;
    endDate?: string | undefined;
    dueDate?: string | undefined;
    estimatedHours?: number | undefined;
    isRecurring?: boolean | undefined;
    recurrenceInterval?: "daily" | "weekly" | "monthly" | "quarterly" | "yearly" | undefined;
    recurrenceCount?: number | undefined;
    notes?: string | undefined;
    tags?: string[] | undefined;
    imageIds?: string[] | undefined;
    documentIds?: string[] | undefined;
    checklistItems?: unknown[] | undefined;
}, {}>;
export declare const updateTaskRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    title?: string | undefined;
    description?: string | undefined;
    type?: "maintenance" | "other" | "calibration" | "repair" | "inspection" | "installation" | "general" | undefined;
    priority?: "low" | "medium" | "high" | "critical" | undefined;
    status?: "pending" | "in_progress" | "cancelled" | "completed" | "on_hold" | "blocked" | undefined;
    assigneeId?: string | undefined;
    parentTaskId?: string | undefined;
    relatedAssetId?: string | undefined;
    relatedIssueId?: string | undefined;
    relatedMaintenancePlanId?: string | undefined;
    relatedCalibrationPlanId?: string | undefined;
    locationId?: string | undefined;
    startDate?: string | undefined;
    endDate?: string | undefined;
    dueDate?: string | undefined;
    estimatedHours?: number | undefined;
    actualHours?: number | undefined;
    progressPercentage?: number | undefined;
    checklistItems?: unknown[] | undefined;
    checklistCompletedCount?: number | undefined;
    isRecurring?: boolean | undefined;
    recurrenceInterval?: "daily" | "weekly" | "monthly" | "quarterly" | "yearly" | undefined;
    recurrenceCount?: number | undefined;
    nextOccurrenceDate?: string | undefined;
    notes?: string | undefined;
    tags?: string[] | undefined;
    imageIds?: string[] | undefined;
    documentIds?: string[] | undefined;
    completionNotes?: string | undefined;
    blockingReason?: string | undefined;
}, {}>;
export declare const createTaskDependencyRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    taskId: string;
    dependsOnTaskId: string;
    dependencyType?: "finish_to_start" | "start_to_start" | "finish_to_finish" | "start_to_finish" | undefined;
    lagDays?: number | undefined;
}, {}>;
export declare const taskQuery: import("arktype/internal/methods/object.ts").ObjectType<{
    assigneeId?: string | undefined;
    createdBy?: string | undefined;
    parentTaskId?: string | undefined;
    relatedAssetId?: string | undefined;
    relatedIssueId?: string | undefined;
    type?: "maintenance" | "other" | "calibration" | "repair" | "inspection" | "installation" | "general" | undefined;
    priority?: "low" | "medium" | "high" | "critical" | undefined;
    status?: "pending" | "in_progress" | "cancelled" | "completed" | "on_hold" | "blocked" | undefined;
    isRecurring?: boolean | undefined;
    dueBefore?: string | undefined;
    dueAfter?: string | undefined;
    search?: string | undefined;
    tags?: string[] | undefined;
}, {}>;
export type TaskPriority = typeof taskPriority.infer;
export type TaskStatus = typeof taskStatus.infer;
export type TaskType = typeof taskType.infer;
export type TaskRecurrenceInterval = typeof taskRecurrenceInterval.infer;
export type Task = typeof task.infer;
export type TaskDependency = typeof taskDependency.infer;
export type TaskChecklistItem = typeof taskChecklistItem.infer;
export type CreateTaskRequest = typeof createTaskRequest.infer;
export type UpdateTaskRequest = typeof updateTaskRequest.infer;
export type CreateTaskDependencyRequest = typeof createTaskDependencyRequest.infer;
export type TaskQuery = typeof taskQuery.infer;
//# sourceMappingURL=task.d.ts.map