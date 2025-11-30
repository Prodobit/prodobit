import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_models.freezed.dart';
part 'service_models.g.dart';

// Enums
enum ContractType {
  maintenance,
  support,
  @JsonValue('warranty_extension')
  warrantyExtension,
  @JsonValue('full_service')
  fullService,
  @JsonValue('on_demand')
  onDemand,
  preventive,
  calibration,
}

enum ContractStatus {
  draft,
  @JsonValue('pending_approval')
  pendingApproval,
  active,
  suspended,
  expired,
  cancelled,
  renewed,
}

enum BillingModel {
  fixed,
  @JsonValue('per_incident')
  perIncident,
  hourly,
  monthly,
  quarterly,
  annually,
  hybrid,
}

enum TicketType {
  incident,
  request,
  preventive,
  corrective,
  installation,
  training,
  consultation,
  inspection,
}

enum TicketStatus {
  open,
  assigned,
  @JsonValue('in_progress')
  inProgress,
  @JsonValue('pending_customer')
  pendingCustomer,
  @JsonValue('pending_parts')
  pendingParts,
  @JsonValue('on_hold')
  onHold,
  resolved,
  closed,
  cancelled,
}

enum TicketPriority {
  critical,
  high,
  medium,
  low,
}

enum TicketSource {
  @JsonValue('customer_portal')
  customerPortal,
  phone,
  email,
  chat,
  @JsonValue('field_technician')
  fieldTechnician,
  @JsonValue('system_alert')
  systemAlert,
  scheduled,
  internal,
}

// Service Contract
@freezed
sealed class ServiceContract with _$ServiceContract {
  const factory ServiceContract({
    required String id,
    required String tenantId,
    required String contractNumber,
    required String name,
    required String customerId,
    required ContractType contractType,
    required BillingModel billingModel,
    required ContractStatus status,
    required DateTime startDate,
    required DateTime endDate,
    required DateTime insertedAt,
    required DateTime updatedAt,
    String? description,
    bool? autoRenew,
    int? renewalNoticeDays,
    double? contractValue,
    String? currency,
    double? monthlyFee,
    double? hourlyRate,
    double? incidentRate,
    int? includedIncidents,
    int? includedHours,
    int? includedPreventiveVisits,
    Map<String, dynamic>? slaConfig,
    Map<String, dynamic>? coverageScope,
    Map<String, dynamic>? excludedItems,
    String? primaryContactId,
    String? technicalContactId,
    String? accountManagerId,
    String? serviceTeamId,
    List<String>? documentIds,
    String? termsAndConditions,
    String? specialTerms,
    int? totalTicketsCreated,
    int? totalIncidentsUsed,
    int? totalHoursUsed,
    String? notes,
    Map<String, dynamic>? metadata,
    DateTime? deletedAt,
  }) = _ServiceContract;

  factory ServiceContract.fromJson(Map<String, dynamic> json) =>
      _$ServiceContractFromJson(json);
}

// Service Contract Asset
@freezed
sealed class ServiceContractAsset with _$ServiceContractAsset {
  const factory ServiceContractAsset({
    required String id,
    required String tenantId,
    required String contractId,
    required String assetId,
    required bool isActive,
    required DateTime insertedAt,
    DateTime? coverageStartDate,
    DateTime? coverageEndDate,
    String? specialTerms,
  }) = _ServiceContractAsset;

  factory ServiceContractAsset.fromJson(Map<String, dynamic> json) =>
      _$ServiceContractAssetFromJson(json);
}

// Service Ticket
@freezed
sealed class ServiceTicket with _$ServiceTicket {
  const factory ServiceTicket({
    required String id,
    required String tenantId,
    required String ticketNumber,
    required bool isBillable,
    required String customerId,
    required TicketType ticketType,
    required TicketPriority priority,
    required TicketStatus status,
    required TicketSource source,
    required String subject,
    required DateTime reportedAt,
    required DateTime insertedAt,
    required DateTime updatedAt,
    String? contractId,
    String? contactPersonId,
    String? assetId,
    String? description,
    String? problemCategory,
    String? errorCode,
    String? serviceLocationId,
    String? serviceAddress,
    String? assignedToId,
    String? assignedTeamId,
    DateTime? slaResponseDue,
    DateTime? slaResolutionDue,
    DateTime? firstResponseAt,
    DateTime? acknowledgedAt,
    DateTime? scheduledAt,
    DateTime? startedAt,
    DateTime? resolvedAt,
    DateTime? closedAt,
    String? resolutionSummary,
    String? resolutionCode,
    String? rootCause,
    String? preventiveAction,
    int? travelTimeMinutes,
    int? workTimeMinutes,
    int? totalTimeMinutes,
    double? laborCost,
    double? partsCost,
    double? travelCost,
    double? otherCost,
    double? totalCost,
    String? currency,
    List<Map<String, dynamic>>? partsUsed,
    String? maintenanceRecordId,
    String? calibrationRecordId,
    String? relatedTicketId,
    List<String>? attachmentIds,
    String? signatureImageId,
    int? customerSatisfaction,
    String? customerFeedback,
    String? internalNotes,
    Map<String, dynamic>? metadata,
    DateTime? deletedAt,
  }) = _ServiceTicket;

  factory ServiceTicket.fromJson(Map<String, dynamic> json) =>
      _$ServiceTicketFromJson(json);
}

// Service Ticket Comment
@freezed
sealed class ServiceTicketComment with _$ServiceTicketComment {
  const factory ServiceTicketComment({
    required String id,
    required String tenantId,
    required String ticketId,
    required String authorId,
    required String content,
    required bool isInternal,
    required bool isSystemGenerated,
    required DateTime insertedAt,
    List<String>? attachmentIds,
  }) = _ServiceTicketComment;

  factory ServiceTicketComment.fromJson(Map<String, dynamic> json) =>
      _$ServiceTicketCommentFromJson(json);
}

// Service Ticket Status History
@freezed
sealed class ServiceTicketStatusHistory with _$ServiceTicketStatusHistory {
  const factory ServiceTicketStatusHistory({
    required String id,
    required String tenantId,
    required String ticketId,
    required TicketStatus previousStatus,
    required TicketStatus newStatus,
    required DateTime changedAt,
    String? changedById,
    String? reason,
    String? notes,
  }) = _ServiceTicketStatusHistory;

  factory ServiceTicketStatusHistory.fromJson(Map<String, dynamic> json) =>
      _$ServiceTicketStatusHistoryFromJson(json);
}

// Request Models
@freezed
sealed class CreateServiceContractRequest with _$CreateServiceContractRequest {
  const factory CreateServiceContractRequest({
    required String contractNumber,
    required String name,
    required String customerId,
    required ContractType contractType,
    required BillingModel billingModel,
    required DateTime startDate,
    required DateTime endDate,
    String? description,
    bool? autoRenew,
    int? renewalNoticeDays,
    double? contractValue,
    String? currency,
    double? monthlyFee,
    double? hourlyRate,
    double? incidentRate,
    int? includedIncidents,
    int? includedHours,
    int? includedPreventiveVisits,
    Map<String, dynamic>? slaConfig,
    Map<String, dynamic>? coverageScope,
    Map<String, dynamic>? excludedItems,
    String? primaryContactId,
    String? technicalContactId,
    String? accountManagerId,
    String? serviceTeamId,
    List<String>? documentIds,
    String? termsAndConditions,
    String? specialTerms,
    String? notes,
    List<String>? assetIds,
  }) = _CreateServiceContractRequest;

  factory CreateServiceContractRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateServiceContractRequestFromJson(json);
}

@freezed
sealed class UpdateServiceContractRequest with _$UpdateServiceContractRequest {
  const factory UpdateServiceContractRequest({
    String? name,
    String? description,
    ContractType? contractType,
    BillingModel? billingModel,
    ContractStatus? status,
    DateTime? startDate,
    DateTime? endDate,
    bool? autoRenew,
    int? renewalNoticeDays,
    double? contractValue,
    String? currency,
    double? monthlyFee,
    double? hourlyRate,
    double? incidentRate,
    int? includedIncidents,
    int? includedHours,
    int? includedPreventiveVisits,
    Map<String, dynamic>? slaConfig,
    Map<String, dynamic>? coverageScope,
    Map<String, dynamic>? excludedItems,
    String? primaryContactId,
    String? technicalContactId,
    String? accountManagerId,
    String? serviceTeamId,
    List<String>? documentIds,
    String? termsAndConditions,
    String? specialTerms,
    String? notes,
  }) = _UpdateServiceContractRequest;

  factory UpdateServiceContractRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateServiceContractRequestFromJson(json);
}

@freezed
sealed class AddContractAssetRequest with _$AddContractAssetRequest {
  const factory AddContractAssetRequest({
    required String assetId,
    DateTime? coverageStartDate,
    DateTime? coverageEndDate,
    String? specialTerms,
  }) = _AddContractAssetRequest;

  factory AddContractAssetRequest.fromJson(Map<String, dynamic> json) =>
      _$AddContractAssetRequestFromJson(json);
}

@freezed
sealed class CreateServiceTicketRequest with _$CreateServiceTicketRequest {
  const factory CreateServiceTicketRequest({
    required String ticketNumber,
    required String customerId,
    required TicketType ticketType,
    required TicketPriority priority,
    required String subject,
    String? contractId,
    bool? isBillable,
    String? contactPersonId,
    String? assetId,
    TicketSource? source,
    String? description,
    String? problemCategory,
    String? errorCode,
    String? serviceLocationId,
    String? serviceAddress,
    String? assignedToId,
    String? assignedTeamId,
    DateTime? scheduledAt,
    String? internalNotes,
  }) = _CreateServiceTicketRequest;

  factory CreateServiceTicketRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateServiceTicketRequestFromJson(json);
}

@freezed
sealed class UpdateServiceTicketRequest with _$UpdateServiceTicketRequest {
  const factory UpdateServiceTicketRequest({
    TicketType? ticketType,
    TicketPriority? priority,
    TicketStatus? status,
    String? subject,
    String? description,
    String? problemCategory,
    String? errorCode,
    String? serviceLocationId,
    String? serviceAddress,
    String? assignedToId,
    String? assignedTeamId,
    DateTime? scheduledAt,
    String? resolutionSummary,
    String? resolutionCode,
    String? rootCause,
    String? preventiveAction,
    int? travelTimeMinutes,
    int? workTimeMinutes,
    double? laborCost,
    double? partsCost,
    double? travelCost,
    double? otherCost,
    List<Map<String, dynamic>>? partsUsed,
    List<String>? attachmentIds,
    String? signatureImageId,
    int? customerSatisfaction,
    String? customerFeedback,
    String? internalNotes,
  }) = _UpdateServiceTicketRequest;

  factory UpdateServiceTicketRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateServiceTicketRequestFromJson(json);
}

@freezed
sealed class CreateTicketCommentRequest with _$CreateTicketCommentRequest {
  const factory CreateTicketCommentRequest({
    required String content,
    bool? isInternal,
    List<String>? attachmentIds,
  }) = _CreateTicketCommentRequest;

  factory CreateTicketCommentRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateTicketCommentRequestFromJson(json);
}

// Query Models
@freezed
sealed class ServiceContractQuery with _$ServiceContractQuery {
  const factory ServiceContractQuery({
    String? customerId,
    ContractType? contractType,
    ContractStatus? status,
    String? accountManagerId,
    int? expiringWithinDays,
    String? search,
  }) = _ServiceContractQuery;

  factory ServiceContractQuery.fromJson(Map<String, dynamic> json) =>
      _$ServiceContractQueryFromJson(json);
}

@freezed
sealed class ServiceTicketQuery with _$ServiceTicketQuery {
  const factory ServiceTicketQuery({
    String? contractId,
    String? customerId,
    String? assetId,
    TicketType? ticketType,
    TicketPriority? priority,
    TicketStatus? status,
    String? assignedToId,
    String? assignedTeamId,
    DateTime? reportedAfter,
    DateTime? reportedBefore,
    String? search,
  }) = _ServiceTicketQuery;

  factory ServiceTicketQuery.fromJson(Map<String, dynamic> json) =>
      _$ServiceTicketQueryFromJson(json);
}
