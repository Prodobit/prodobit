import { type } from "arktype";
import { uuid, timestamp } from "./common";

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
export const taskPriority = type("'critical' | 'high' | 'medium' | 'low'");

export const taskStatus = type(
  "'pending' | 'in_progress' | 'on_hold' | 'completed' | 'cancelled' | 'blocked'"
);

export const taskType = type(
  "'maintenance' | 'calibration' | 'repair' | 'inspection' | 'installation' | 'general' | 'other'"
);

export const taskRecurrenceInterval = type(
  "'daily' | 'weekly' | 'monthly' | 'quarterly' | 'yearly'"
);

export const task = type({
  id: uuid,
  tenantId: uuid,
  title: "string >= 1",
  "description?": "string",
  type: taskType,
  priority: taskPriority,
  status: taskStatus,

  // Assignment (Atama)
  "assigneeId?": uuid, // kime atandı (employee)
  "createdBy": uuid, // kim oluşturdu
  "assignedBy?": uuid, // kim atadı

  // Relationships (İlişkiler)
  "parentTaskId?": uuid, // ana görev (alt görev ise)
  "relatedAssetId?": uuid, // ilişkili asset
  "relatedIssueId?": uuid, // ilişkili arıza
  "relatedMaintenancePlanId?": uuid, // ilişkili bakım planı
  "relatedCalibrationPlanId?": uuid, // ilişkili kalibrasyon planı
  "locationId?": uuid, // görevin yapılacağı lokasyon

  // Time Management (Zaman Yönetimi)
  "startDate?": timestamp,
  "endDate?": timestamp,
  "dueDate?": timestamp, // son teslim tarihi
  "completedAt?": timestamp,
  "estimatedHours?": "number", // tahmini süre (saat)
  "actualHours?": "number", // gerçekleşen süre (saat)

  // Progress (İlerleme)
  "progressPercentage?": "0 <= number <= 100",
  "checklistItems?": "unknown[]", // JSON array of checklist items
  "checklistCompletedCount?": "number >= 0",

  // Recurrence (Tekrarlama)
  "isRecurring?": "boolean",
  "recurrenceInterval?": taskRecurrenceInterval,
  "recurrenceCount?": "number", // kaç kez tekrarlanacak
  "nextOccurrenceDate?": timestamp,

  // Additional Info
  "notes?": "string",
  "tags?": "string[]",
  "imageIds?": "string[]",
  "documentIds?": "string[]",
  "completionNotes?": "string",
  "blockingReason?": "string", // task blocked ise neden

  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const taskDependency = type({
  id: uuid,
  tenantId: uuid,
  taskId: uuid, // bu task
  dependsOnTaskId: uuid, // bu taska bağımlı
  dependencyType: "'finish_to_start' | 'start_to_start' | 'finish_to_finish' | 'start_to_finish'",
  "lagDays?": "number", // bağımlılık gecikmesi (gün)
  insertedAt: timestamp,
});

export const taskChecklistItem = type({
  id: "string",
  title: "string >= 1",
  completed: "boolean",
  "completedAt?": timestamp,
  "completedBy?": uuid,
  "order?": "number",
});

export const createTaskRequest = type({
  title: "string >= 1",
  "description?": "string",
  "type?": taskType,
  "priority?": taskPriority,
  "assigneeId?": uuid,
  "parentTaskId?": uuid,
  "relatedAssetId?": uuid,
  "relatedIssueId?": uuid,
  "relatedMaintenancePlanId?": uuid,
  "relatedCalibrationPlanId?": uuid,
  "locationId?": uuid,
  "startDate?": timestamp,
  "endDate?": timestamp,
  "dueDate?": timestamp,
  "estimatedHours?": "number",
  "isRecurring?": "boolean",
  "recurrenceInterval?": taskRecurrenceInterval,
  "recurrenceCount?": "number",
  "notes?": "string",
  "tags?": "string[]",
  "imageIds?": "string[]",
  "documentIds?": "string[]",
  "checklistItems?": "unknown[]",
});

export const updateTaskRequest = type({
  "title?": "string >= 1",
  "description?": "string",
  "type?": taskType,
  "priority?": taskPriority,
  "status?": taskStatus,
  "assigneeId?": uuid,
  "parentTaskId?": uuid,
  "relatedAssetId?": uuid,
  "relatedIssueId?": uuid,
  "relatedMaintenancePlanId?": uuid,
  "relatedCalibrationPlanId?": uuid,
  "locationId?": uuid,
  "startDate?": timestamp,
  "endDate?": timestamp,
  "dueDate?": timestamp,
  "estimatedHours?": "number",
  "actualHours?": "number",
  "progressPercentage?": "0 <= number <= 100",
  "checklistItems?": "unknown[]",
  "checklistCompletedCount?": "number >= 0",
  "isRecurring?": "boolean",
  "recurrenceInterval?": taskRecurrenceInterval,
  "recurrenceCount?": "number",
  "nextOccurrenceDate?": timestamp,
  "notes?": "string",
  "tags?": "string[]",
  "imageIds?": "string[]",
  "documentIds?": "string[]",
  "completionNotes?": "string",
  "blockingReason?": "string",
});

export const createTaskDependencyRequest = type({
  taskId: uuid,
  dependsOnTaskId: uuid,
  "dependencyType?": "'finish_to_start' | 'start_to_start' | 'finish_to_finish' | 'start_to_finish'",
  "lagDays?": "number",
});

export const taskQuery = type({
  "assigneeId?": uuid,
  "createdBy?": uuid,
  "parentTaskId?": uuid,
  "relatedAssetId?": uuid,
  "relatedIssueId?": uuid,
  "type?": taskType,
  "priority?": taskPriority,
  "status?": taskStatus,
  "isRecurring?": "boolean",
  "dueBefore?": timestamp,
  "dueAfter?": timestamp,
  "search?": "string",
  "tags?": "string[]",
});

// Type exports
export type TaskPriority = typeof taskPriority.infer;
export type TaskStatus = typeof taskStatus.infer;
export type TaskType = typeof taskType.infer;
export type TaskRecurrenceInterval = typeof taskRecurrenceInterval.infer;
export type Task = typeof task.infer;
export type TaskDependency = typeof taskDependency.infer;
export type TaskChecklistItem = typeof taskChecklistItem.infer;
export type CreateTaskRequest = typeof createTaskRequest.infer;
export type UpdateTaskRequest = typeof updateTaskRequest.infer;
export type CreateTaskDependencyRequest =
  typeof createTaskDependencyRequest.infer;
export type TaskQuery = typeof taskQuery.infer;
