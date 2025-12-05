import 'package:freezed_annotation/freezed_annotation.dart';

part 'maintenance_models.freezed.dart';
part 'maintenance_models.g.dart';

/// Bakım tipi enumları
/// - preventive: Önleyici bakım (plan ile yönetilir)
/// - corrective: Düzeltici bakım (arıza/issue sonrası)
/// - predictive: Öngörülü bakım (AI/ML ile - gelecek)
/// - condition_based: Durum bazlı bakım (IoT/sensör ile - gelecek)
enum MaintenanceType {
  @JsonValue('preventive')
  preventive,
  @JsonValue('corrective')
  corrective,
  @JsonValue('predictive')
  predictive,
  @JsonValue('condition_based')
  conditionBased,
}

/// Bakım kaydının kaynağı
/// - plan: Bakım planından oluşturuldu (preventive)
/// - issue: Arıza/Issue'dan oluşturuldu (corrective)
/// - prediction: AI/ML tahmininden oluşturuldu (gelecek)
/// - condition: Sensör/IoT uyarısından oluşturuldu (gelecek)
/// - manual: Manuel oluşturuldu
enum MaintenanceRecordSource {
  @JsonValue('plan')
  plan,
  @JsonValue('issue')
  issue,
  @JsonValue('prediction')
  prediction,
  @JsonValue('condition')
  condition,
  @JsonValue('manual')
  manual,
}

/// Öncelik seviyeleri
enum MaintenancePriority {
  @JsonValue('critical')
  critical,
  @JsonValue('high')
  high,
  @JsonValue('medium')
  medium,
  @JsonValue('low')
  low,
}

/// Bakım planı frekansı
enum MaintenanceFrequency {
  @JsonValue('daily')
  daily,
  @JsonValue('weekly')
  weekly,
  @JsonValue('biweekly')
  biweekly,
  @JsonValue('monthly')
  monthly,
  @JsonValue('quarterly')
  quarterly,
  @JsonValue('semi_annually')
  semiAnnually,
  @JsonValue('annually')
  annually,
  @JsonValue('custom')
  custom,
}

/// Bakım planı durumu
enum MaintenancePlanStatus {
  @JsonValue('active')
  active,
  @JsonValue('inactive')
  inactive,
  @JsonValue('draft')
  draft,
}

/// Bakım kaydı durumu
enum MaintenanceRecordStatus {
  @JsonValue('scheduled')
  scheduled,
  @JsonValue('in_progress')
  inProgress,
  @JsonValue('completed')
  completed,
  @JsonValue('skipped')
  skipped,
  @JsonValue('cancelled')
  cancelled,
}

/// Maintenance Plan (Bakım Planı)
///
/// Sadece PREVENTIVE (önleyici) bakım için plan oluşturulabilir.
/// Diğer bakım tipleri farklı kaynaklardan tetiklenir.
@freezed
sealed class MaintenancePlan with _$MaintenancePlan {
  const factory MaintenancePlan({
    required String id,
    required String tenantId,
    required String assetId,
    required String name,
    required String type, // Sadece 'preventive'
    required String frequency,
    required String status,
    required DateTime startDate,
    required DateTime insertedAt,
    required DateTime updatedAt,
    String? description,
    DateTime? endDate,
    DateTime? nextScheduledDate,
    DateTime? lastMaintenanceDate,
    int? intervalDays,
    int? intervalHours,
    int? intervalCycles,
    int? estimatedDurationHours,
    String? assignedTeamId,
    String? defaultAssigneeId,
    String? priority,
    String? instructions,
    Map<String, dynamic>? checklistItems,
    List<String>? requiredSkills,
    String? safetyPrecautions,
    Map<String, dynamic>? requiredMaterials,
    Map<String, dynamic>? spareParts,
    bool? autoCreateTask,
    int? taskCreationLeadDays,
    int? totalMaintenanceCount,
    int? completedMaintenanceCount,
    int? missedMaintenanceCount,
    double? averageCompletionTime,
    List<String>? imageIds,
    List<String>? documentIds,
    String? procedureDocumentId,
    DateTime? deletedAt,
  }) = _MaintenancePlan;

  factory MaintenancePlan.fromJson(Map<String, dynamic> json) =>
      _$MaintenancePlanFromJson(json);
}

/// Maintenance Record (Bakım Kaydı)
///
/// Gerçekleştirilen bakım işlemlerinin kayıtlarını tutar.
/// Farklı kaynaklardan oluşturulabilir:
/// - plan: Preventive bakım planından
/// - issue: Arıza/Issue'dan (corrective)
/// - prediction: AI/ML tahmininden (gelecek)
/// - condition: Sensör/IoT uyarısından (gelecek)
/// - manual: Manuel oluşturma
@freezed
sealed class MaintenanceRecord with _$MaintenanceRecord {
  const factory MaintenanceRecord({
    required String id,
    required String tenantId,
    required String assetId,
    required String type, // 'preventive' | 'corrective' | 'predictive' | 'condition_based'
    required String source, // 'plan' | 'issue' | 'prediction' | 'condition' | 'manual'
    required String status,
    required DateTime insertedAt,
    required DateTime updatedAt,
    // İlişkili kayıtlar (source'a göre biri dolu olur)
    String? maintenancePlanId, // source: 'plan'
    String? issueId, // source: 'issue' (corrective bakım)
    String? taskId, // ilişkili task
    // Öncelik
    String? priority,
    // Zamanlama
    DateTime? scheduledDate,
    DateTime? completedDate,
    String? performedBy,
    int? durationHours,
    // Detaylar
    String? notes,
    String? issuesFound,
    Map<String, dynamic>? partsReplaced,
    Map<String, dynamic>? materialsUsed,
    DateTime? nextRecommendedDate,
    List<String>? imageIds,
    List<String>? documentIds,
  }) = _MaintenanceRecord;

  factory MaintenanceRecord.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceRecordFromJson(json);
}

/// Create Maintenance Plan Request
///
/// Sadece önleyici (preventive) bakım için plan oluşturulabilir.
@freezed
sealed class CreateMaintenancePlanRequest with _$CreateMaintenancePlanRequest {
  const factory CreateMaintenancePlanRequest({
    required String assetId,
    required String name,
    required String frequency,
    required DateTime startDate,
    String? type, // Opsiyonel, default 'preventive'
    String? description,
    DateTime? endDate,
    int? intervalDays,
    int? intervalHours,
    int? intervalCycles,
    int? estimatedDurationHours,
    String? assignedTeamId,
    String? defaultAssigneeId,
    String? priority,
    String? instructions,
    Map<String, dynamic>? checklistItems,
    List<String>? requiredSkills,
    String? safetyPrecautions,
    Map<String, dynamic>? requiredMaterials,
    Map<String, dynamic>? spareParts,
    bool? autoCreateTask,
    int? taskCreationLeadDays,
    List<String>? imageIds,
    List<String>? documentIds,
    String? procedureDocumentId,
  }) = _CreateMaintenancePlanRequest;

  factory CreateMaintenancePlanRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateMaintenancePlanRequestFromJson(json);
}

@freezed
sealed class UpdateMaintenancePlanRequest with _$UpdateMaintenancePlanRequest {
  const factory UpdateMaintenancePlanRequest({
    String? name,
    String? description,
    // type güncellenemez - plan her zaman 'preventive' kalır
    String? frequency,
    String? status,
    DateTime? startDate,
    DateTime? endDate,
    DateTime? nextScheduledDate,
    int? intervalDays,
    int? intervalHours,
    int? intervalCycles,
    int? estimatedDurationHours,
    String? assignedTeamId,
    String? defaultAssigneeId,
    String? priority,
    String? instructions,
    Map<String, dynamic>? checklistItems,
    List<String>? requiredSkills,
    String? safetyPrecautions,
    Map<String, dynamic>? requiredMaterials,
    Map<String, dynamic>? spareParts,
    bool? autoCreateTask,
    int? taskCreationLeadDays,
    List<String>? imageIds,
    List<String>? documentIds,
    String? procedureDocumentId,
  }) = _UpdateMaintenancePlanRequest;

  factory UpdateMaintenancePlanRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateMaintenancePlanRequestFromJson(json);
}

/// Genel bakım kaydı oluşturma isteği
@freezed
sealed class CreateMaintenanceRecordRequest with _$CreateMaintenanceRecordRequest {
  const factory CreateMaintenanceRecordRequest({
    required String assetId,
    required String type, // 'preventive' | 'corrective' | 'predictive' | 'condition_based'
    required String source, // 'plan' | 'issue' | 'prediction' | 'condition' | 'manual'
    String? maintenancePlanId, // source: 'plan'
    String? issueId, // source: 'issue'
    DateTime? scheduledDate,
    String? notes,
    String? priority,
  }) = _CreateMaintenanceRecordRequest;

  factory CreateMaintenanceRecordRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateMaintenanceRecordRequestFromJson(json);
}

/// Preventive bakım kaydı oluşturma isteği
/// Plan'dan oluşturulur
@freezed
sealed class CreatePreventiveMaintenanceRecordRequest
    with _$CreatePreventiveMaintenanceRecordRequest {
  const factory CreatePreventiveMaintenanceRecordRequest({
    required String maintenancePlanId,
    required DateTime scheduledDate,
    String? notes,
  }) = _CreatePreventiveMaintenanceRecordRequest;

  factory CreatePreventiveMaintenanceRecordRequest.fromJson(
          Map<String, dynamic> json) =>
      _$CreatePreventiveMaintenanceRecordRequestFromJson(json);
}

/// Corrective bakım kaydı oluşturma isteği
/// Issue/arıza'dan oluşturulur
@freezed
sealed class CreateCorrectiveMaintenanceRecordRequest
    with _$CreateCorrectiveMaintenanceRecordRequest {
  const factory CreateCorrectiveMaintenanceRecordRequest({
    required String assetId,
    required String issueId,
    DateTime? scheduledDate, // opsiyonel, hemen başlanabilir
    String? notes,
    String? priority,
  }) = _CreateCorrectiveMaintenanceRecordRequest;

  factory CreateCorrectiveMaintenanceRecordRequest.fromJson(
          Map<String, dynamic> json) =>
      _$CreateCorrectiveMaintenanceRecordRequestFromJson(json);
}

/// Manuel bakım kaydı oluşturma isteği
/// Doğrudan oluşturulur (genel amaçlı)
@freezed
sealed class CreateManualMaintenanceRecordRequest
    with _$CreateManualMaintenanceRecordRequest {
  const factory CreateManualMaintenanceRecordRequest({
    required String assetId,
    required String type, // herhangi bir bakım tipi
    required DateTime scheduledDate,
    String? notes,
    String? priority,
  }) = _CreateManualMaintenanceRecordRequest;

  factory CreateManualMaintenanceRecordRequest.fromJson(
          Map<String, dynamic> json) =>
      _$CreateManualMaintenanceRecordRequestFromJson(json);
}

@freezed
sealed class UpdateMaintenanceRecordRequest with _$UpdateMaintenanceRecordRequest {
  const factory UpdateMaintenanceRecordRequest({
    String? status,
    DateTime? completedDate,
    String? performedBy,
    int? durationHours,
    String? notes,
    String? issuesFound,
    Map<String, dynamic>? partsReplaced,
    Map<String, dynamic>? materialsUsed,
    DateTime? nextRecommendedDate,
    List<String>? imageIds,
    List<String>? documentIds,
  }) = _UpdateMaintenanceRecordRequest;

  factory UpdateMaintenanceRecordRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateMaintenanceRecordRequestFromJson(json);
}

/// Maintenance Plan Query parameters
@freezed
sealed class MaintenancePlanQuery with _$MaintenancePlanQuery {
  const factory MaintenancePlanQuery({
    String? assetId,
    String? type,
    String? frequency,
    String? status,
    String? assignedTeamId,
    String? defaultAssigneeId,
    String? search,
  }) = _MaintenancePlanQuery;

  factory MaintenancePlanQuery.fromJson(Map<String, dynamic> json) =>
      _$MaintenancePlanQueryFromJson(json);
}

/// Maintenance Record Query parameters
@freezed
sealed class MaintenanceRecordQuery with _$MaintenanceRecordQuery {
  const factory MaintenanceRecordQuery({
    String? maintenancePlanId,
    String? assetId,
    String? taskId,
    String? issueId,
    String? performedBy,
    String? type,
    String? source,
    String? status,
    DateTime? scheduledAfter,
    DateTime? scheduledBefore,
  }) = _MaintenanceRecordQuery;

  factory MaintenanceRecordQuery.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceRecordQueryFromJson(json);
}
