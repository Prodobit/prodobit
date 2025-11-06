import 'package:freezed_annotation/freezed_annotation.dart';

part 'tenant_models.freezed.dart';
part 'tenant_models.g.dart';

/// Tenant model
@freezed
sealed class Tenant with _$Tenant {
  const factory Tenant({
    required String id,
    required String name,
    required String slug,
    required String status, // 'active', 'suspended', 'inactive'
    required DateTime createdAt,
    required DateTime updatedAt,
    String? description,
    String? domain,
    String? logoUrl,
    String? contactEmail,
    String? contactPhone,
    String? address,
    String? timezone,
    String? currency,
    String? language,
    Map<String, dynamic>? settings,
    Map<String, dynamic>? metadata,
  }) = _Tenant;

  factory Tenant.fromJson(Map<String, dynamic> json) => _$TenantFromJson(json);
}

/// Tenant member model
@freezed
sealed class TenantMember with _$TenantMember {
  const factory TenantMember({
    required String id,
    required String tenantId,
    required String userId,
    required String role, // 'owner', 'admin', 'manager', 'user', 'viewer'
    required String status, // 'active', 'invited', 'suspended'
    required DateTime createdAt,
    required DateTime updatedAt,
    DateTime? invitedAt,
    DateTime? joinedAt,
    DateTime? suspendedAt,
    String? invitedBy,
    String? invitationToken,
    DateTime? invitationExpiresAt,
    List<String>? permissions,
    Map<String, dynamic>? metadata,
  }) = _TenantMember;

  factory TenantMember.fromJson(Map<String, dynamic> json) =>
      _$TenantMemberFromJson(json);
}

/// Tenant role model
@freezed
sealed class TenantRole with _$TenantRole {
  const factory TenantRole({
    required String id,
    required String tenantId,
    required String name,
    required String displayName,
    required String description,
    required List<String> permissions,
    required bool isDefault,
    required DateTime createdAt,
    required DateTime updatedAt,
    Map<String, dynamic>? metadata,
  }) = _TenantRole;

  factory TenantRole.fromJson(Map<String, dynamic> json) =>
      _$TenantRoleFromJson(json);
}

/// Tenant invitation model
@freezed
sealed class TenantInvitation with _$TenantInvitation {
  const factory TenantInvitation({
    required String id,
    required String tenantId,
    required String email,
    required String role,
    required String status, // 'pending', 'accepted', 'rejected', 'expired'
    required String token,
    required DateTime expiresAt,
    required DateTime createdAt,
    required DateTime updatedAt,
    String? invitedBy,
    String? firstName,
    String? lastName,
    DateTime? acceptedAt,
    DateTime? rejectedAt,
    String? rejectionReason,
    Map<String, dynamic>? metadata,
  }) = _TenantInvitation;

  factory TenantInvitation.fromJson(Map<String, dynamic> json) =>
      _$TenantInvitationFromJson(json);
}

/// Create tenant request
@freezed
sealed class CreateTenantRequest with _$CreateTenantRequest {
  const factory CreateTenantRequest({
    required String name,
    required String slug,
    String? description,
    String? domain,
    String? contactEmail,
    String? contactPhone,
    String? address,
    String? timezone,
    String? currency,
    String? language,
    Map<String, dynamic>? settings,
    Map<String, dynamic>? metadata,
  }) = _CreateTenantRequest;

  factory CreateTenantRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateTenantRequestFromJson(json);
}

/// Update tenant request
@freezed
sealed class UpdateTenantRequest with _$UpdateTenantRequest {
  const factory UpdateTenantRequest({
    String? name,
    String? description,
    String? domain,
    String? contactEmail,
    String? contactPhone,
    String? address,
    String? timezone,
    String? currency,
    String? language,
    String? status,
    Map<String, dynamic>? settings,
    Map<String, dynamic>? metadata,
  }) = _UpdateTenantRequest;

  factory UpdateTenantRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateTenantRequestFromJson(json);
}

/// Create invitation request
@freezed
sealed class CreateInvitationRequest with _$CreateInvitationRequest {
  const factory CreateInvitationRequest({
    required String email,
    required String role,
    String? firstName,
    String? lastName,
    DateTime? expiresAt,
    Map<String, dynamic>? metadata,
  }) = _CreateInvitationRequest;

  factory CreateInvitationRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateInvitationRequestFromJson(json);
}

/// Update membership request
@freezed
sealed class UpdateMembershipRequest with _$UpdateMembershipRequest {
  const factory UpdateMembershipRequest({
    String? role,
    String? status,
    List<String>? permissions,
    Map<String, dynamic>? metadata,
  }) = _UpdateMembershipRequest;

  factory UpdateMembershipRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateMembershipRequestFromJson(json);
}

/// Tenant filters
@freezed
sealed class TenantFilters with _$TenantFilters {
  const factory TenantFilters({
    String? status,
    String? name,
    String? domain,
    DateTime? createdAfter,
    DateTime? createdBefore,
    int? page,
    int? limit,
    String? sortBy,
    String? sortOrder,
  }) = _TenantFilters;

  factory TenantFilters.fromJson(Map<String, dynamic> json) =>
      _$TenantFiltersFromJson(json);

  const TenantFilters._();

  /// Convert to query parameters map
  Map<String, dynamic> toQueryMap() {
    return {
      if (status != null) 'status': status,
      if (name != null) 'name': name,
      if (domain != null) 'domain': domain,
      if (createdAfter != null) 'createdAfter': createdAfter!.toIso8601String(),
      if (createdBefore != null) 'createdBefore': createdBefore!.toIso8601String(),
      if (page != null) 'page': page,
      if (limit != null) 'limit': limit,
      if (sortBy != null) 'sortBy': sortBy,
      if (sortOrder != null) 'sortOrder': sortOrder,
    };
  }
}

/// Tenant member filters
@freezed
sealed class TenantMemberFilters with _$TenantMemberFilters {
  const factory TenantMemberFilters({
    String? role,
    String? status,
    String? userId,
    DateTime? joinedAfter,
    DateTime? joinedBefore,
    int? page,
    int? limit,
    String? sortBy,
    String? sortOrder,
  }) = _TenantMemberFilters;

  factory TenantMemberFilters.fromJson(Map<String, dynamic> json) =>
      _$TenantMemberFiltersFromJson(json);

  const TenantMemberFilters._();

  /// Convert to query parameters map
  Map<String, dynamic> toQueryMap() {
    return {
      if (role != null) 'role': role,
      if (status != null) 'status': status,
      if (userId != null) 'userId': userId,
      if (joinedAfter != null) 'joinedAfter': joinedAfter!.toIso8601String(),
      if (joinedBefore != null) 'joinedBefore': joinedBefore!.toIso8601String(),
      if (page != null) 'page': page,
      if (limit != null) 'limit': limit,
      if (sortBy != null) 'sortBy': sortBy,
      if (sortOrder != null) 'sortOrder': sortOrder,
    };
  }
}

/// Tenant invitation filters
@freezed
sealed class TenantInvitationFilters with _$TenantInvitationFilters {
  const factory TenantInvitationFilters({
    String? status,
    String? role,
    String? email,
    String? invitedBy,
    DateTime? createdAfter,
    DateTime? createdBefore,
    DateTime? expiresAfter,
    DateTime? expiresBefore,
    int? page,
    int? limit,
    String? sortBy,
    String? sortOrder,
  }) = _TenantInvitationFilters;

  factory TenantInvitationFilters.fromJson(Map<String, dynamic> json) =>
      _$TenantInvitationFiltersFromJson(json);

  const TenantInvitationFilters._();

  /// Convert to query parameters map
  Map<String, dynamic> toQueryMap() {
    return {
      if (status != null) 'status': status,
      if (role != null) 'role': role,
      if (email != null) 'email': email,
      if (invitedBy != null) 'invitedBy': invitedBy,
      if (createdAfter != null) 'createdAfter': createdAfter!.toIso8601String(),
      if (createdBefore != null) 'createdBefore': createdBefore!.toIso8601String(),
      if (expiresAfter != null) 'expiresAfter': expiresAfter!.toIso8601String(),
      if (expiresBefore != null) 'expiresBefore': expiresBefore!.toIso8601String(),
      if (page != null) 'page': page,
      if (limit != null) 'limit': limit,
      if (sortBy != null) 'sortBy': sortBy,
      if (sortOrder != null) 'sortOrder': sortOrder,
    };
  }
}