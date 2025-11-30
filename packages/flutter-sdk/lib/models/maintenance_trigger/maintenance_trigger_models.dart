import 'package:freezed_annotation/freezed_annotation.dart';

part 'maintenance_trigger_models.freezed.dart';
part 'maintenance_trigger_models.g.dart';

/// Trigger type enum
enum TriggerType {
  @JsonValue('time')
  time,
  @JsonValue('meter')
  meter,
  @JsonValue('both')
  both,
}

/// Trigger mode enum
enum TriggerMode {
  @JsonValue('first')
  first,
  @JsonValue('all')
  all,
}

/// Maintenance plan trigger model - defines when maintenance should be triggered
@freezed
sealed class MaintenancePlanTrigger with _$MaintenancePlanTrigger {
  const factory MaintenancePlanTrigger({
    required String id,
    required String tenantId,
    required String maintenancePlanId,
    required TriggerType triggerType,
    required DateTime insertedAt,
    required DateTime updatedAt,
    @Default(TriggerMode.first) TriggerMode triggerMode,
    int? intervalDays,
    int? intervalMonths,
    String? meterId,
    String? meterThreshold,
    DateTime? lastTriggeredAt,
    String? lastTriggeredMeterReading,
    DateTime? nextDueDate,
    String? nextDueMeterReading,
    @Default(true) bool isActive,
    DateTime? deletedAt,
    // Related data
    TriggerMaintenancePlanInfo? maintenancePlan,
    TriggerMeterInfo? meter,
  }) = _MaintenancePlanTrigger;

  factory MaintenancePlanTrigger.fromJson(Map<String, dynamic> json) =>
      _$MaintenancePlanTriggerFromJson(json);
}

/// Simplified maintenance plan info for trigger display
@freezed
sealed class TriggerMaintenancePlanInfo with _$TriggerMaintenancePlanInfo {
  const factory TriggerMaintenancePlanInfo({
    required String id,
    required String name,
    String? description,
    String? assetId,
  }) = _TriggerMaintenancePlanInfo;

  factory TriggerMaintenancePlanInfo.fromJson(Map<String, dynamic> json) =>
      _$TriggerMaintenancePlanInfoFromJson(json);
}

/// Simplified meter info for trigger display
@freezed
sealed class TriggerMeterInfo with _$TriggerMeterInfo {
  const factory TriggerMeterInfo({
    required String id,
    required String name,
    required String unit,
    String? currentReading,
  }) = _TriggerMeterInfo;

  factory TriggerMeterInfo.fromJson(Map<String, dynamic> json) =>
      _$TriggerMeterInfoFromJson(json);
}

/// Create maintenance plan trigger request
@freezed
sealed class CreateMaintenancePlanTriggerRequest
    with _$CreateMaintenancePlanTriggerRequest {
  const factory CreateMaintenancePlanTriggerRequest({
    required String maintenancePlanId,
    required TriggerType triggerType,
    @Default(TriggerMode.first) TriggerMode triggerMode,
    int? intervalDays,
    int? intervalMonths,
    String? meterId,
    double? meterThreshold,
    DateTime? nextDueDate,
    double? nextDueMeterReading,
    @Default(true) bool isActive,
  }) = _CreateMaintenancePlanTriggerRequest;

  factory CreateMaintenancePlanTriggerRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CreateMaintenancePlanTriggerRequestFromJson(json);
}

/// Update maintenance plan trigger request
@freezed
sealed class UpdateMaintenancePlanTriggerRequest
    with _$UpdateMaintenancePlanTriggerRequest {
  const factory UpdateMaintenancePlanTriggerRequest({
    TriggerType? triggerType,
    TriggerMode? triggerMode,
    int? intervalDays,
    int? intervalMonths,
    String? meterId,
    double? meterThreshold,
    DateTime? nextDueDate,
    double? nextDueMeterReading,
    bool? isActive,
  }) = _UpdateMaintenancePlanTriggerRequest;

  factory UpdateMaintenancePlanTriggerRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$UpdateMaintenancePlanTriggerRequestFromJson(json);
}

/// Maintenance plan trigger query filters
@freezed
sealed class MaintenancePlanTriggerQuery with _$MaintenancePlanTriggerQuery {
  const factory MaintenancePlanTriggerQuery({
    String? maintenancePlanId,
    TriggerType? triggerType,
    String? meterId,
    bool? isActive,
  }) = _MaintenancePlanTriggerQuery;

  factory MaintenancePlanTriggerQuery.fromJson(Map<String, dynamic> json) =>
      _$MaintenancePlanTriggerQueryFromJson(json);
}

/// Due trigger info - returned when checking which triggers are due
@freezed
sealed class DueTrigger with _$DueTrigger {
  const factory DueTrigger({
    required MaintenancePlanTrigger trigger,
    required bool isDueByTime,
    required bool isDueByMeter,
    String? currentMeterReading,
    int? daysOverdue,
    String? meterOverdue,
  }) = _DueTrigger;

  factory DueTrigger.fromJson(Map<String, dynamic> json) =>
      _$DueTriggerFromJson(json);
}

/// Mark trigger as triggered request
@freezed
sealed class MarkTriggerTriggeredRequest with _$MarkTriggerTriggeredRequest {
  const factory MarkTriggerTriggeredRequest({
    double? currentMeterReading,
  }) = _MarkTriggerTriggeredRequest;

  factory MarkTriggerTriggeredRequest.fromJson(Map<String, dynamic> json) =>
      _$MarkTriggerTriggeredRequestFromJson(json);
}
