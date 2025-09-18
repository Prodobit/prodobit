import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_models.freezed.dart';
part 'auth_models.g.dart';

/// Login OTP response model
@freezed
class LoginOTPResponse with _$LoginOTPResponse {
  const factory LoginOTPResponse({
    required bool success,
    LoginResponseData? data,
    String? message,
  }) = _LoginOTPResponse;

  factory LoginOTPResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginOTPResponseFromJson(json);
}

/// Login response data model
@freezed
class LoginResponseData with _$LoginResponseData {
  const factory LoginResponseData({
    required UserData user,
    required SessionData session,
    required bool isNewUser,
    List<TenantMembership>? tenantMemberships,
  }) = _LoginResponseData;

  factory LoginResponseData.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDataFromJson(json);
}

/// Organization info model (deprecated - use TenantInfo)
@Deprecated('Use TenantInfo instead')
@freezed
class OrganizationInfo with _$OrganizationInfo {
  @Deprecated('Use TenantInfo instead')
  const factory OrganizationInfo({
    required String id,
    required String name,
    required String plan,
    required bool isActive,
    String? logo,
    String? domain,
    Map<String, dynamic>? settings,
  }) = _OrganizationInfo;

  @Deprecated('Use TenantInfo instead')
  factory OrganizationInfo.fromJson(Map<String, dynamic> json) =>
      _$OrganizationInfoFromJson(json);
}

/// OTP request model
@freezed
class OTPRequest with _$OTPRequest {
  const factory OTPRequest({
    required String email,
    String? tenantId,
  }) = _OTPRequest;

  factory OTPRequest.fromJson(Map<String, dynamic> json) =>
      _$OTPRequestFromJson(json);
}

/// OTP response model
@freezed
class OTPResponse with _$OTPResponse {
  const factory OTPResponse({
    required bool success,
    required String message,
    String? expiresAt,
    bool? requiresTenantSelection,
    bool? isNewUser,
    // Single tenant response
    String? defaultTenantId,
    String? defaultTenantName,
    // Selected tenant response
    String? selectedTenantId,
    String? selectedTenantName,
    // Multiple tenant response
    List<TenantInfo>? tenants,
  }) = _OTPResponse;

  factory OTPResponse.fromJson(Map<String, dynamic> json) =>
      _$OTPResponseFromJson(json);
}

/// Token refresh request
@freezed
class RefreshTokenRequest with _$RefreshTokenRequest {
  const factory RefreshTokenRequest({
    required String refreshToken,
  }) = _RefreshTokenRequest;

  factory RefreshTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenRequestFromJson(json);
}

/// Session data model
@freezed
class SessionData with _$SessionData {
  const factory SessionData({
    required String accessToken,
    required String expiresAt,
    String? refreshToken,
  }) = _SessionData;

  factory SessionData.fromJson(Map<String, dynamic> json) =>
      _$SessionDataFromJson(json);
}

/// Tenant selection info for multi-tenant users
@freezed
class TenantInfo with _$TenantInfo {
  const factory TenantInfo({
    required String id,
    required String name,
    required String role,
  }) = _TenantInfo;

  factory TenantInfo.fromJson(Map<String, dynamic> json) =>
      _$TenantInfoFromJson(json);
}

/// Tenant membership model
@freezed
class TenantMembership with _$TenantMembership {
  const factory TenantMembership({
    required String id,
    required String userId,
    required String tenantId,
    required String role,
    required String status,
    required Map<String, dynamic> permissions,
    required String accessLevel,
    required Map<String, dynamic> resourceRestrictions,
    required String insertedAt,
    required String updatedAt,
    Map<String, dynamic>? ipRestrictions,
    Map<String, dynamic>? timeRestrictions,
    String? expiresAt,
    String? invitedBy,
    String? invitedAt,
    String? joinedAt,
    String? lastLoginAt,
    String? deletedAt,
  }) = _TenantMembership;

  factory TenantMembership.fromJson(Map<String, dynamic> json) =>
      _$TenantMembershipFromJson(json);
}

/// User data model
@freezed
class UserData with _$UserData {
  const factory UserData({
    required String id,
    required bool twoFactorEnabled,
    required String status,
    required String insertedAt,
    required String updatedAt,
    String? displayName,
    String? twoFactorSecret,
    String? deletedAt,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

/// User profile model (deprecated - use UserData)
@Deprecated('Use UserData instead')
@freezed
class UserProfile with _$UserProfile {
  @Deprecated('Use UserData instead')
  const factory UserProfile({
    required String id,
    required String email,
    required String firstName,
    required String lastName,
    required List<String> roles,
    required bool isActive,
    required DateTime createdAt,
    String? avatar,
    DateTime? updatedAt,
    Map<String, dynamic>? metadata,
  }) = _UserProfile;

  @Deprecated('Use UserData instead')
  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}

/// OTP verification request model
@freezed
class VerifyOTPRequest with _$VerifyOTPRequest {
  const factory VerifyOTPRequest({
    required String email,
    required String code,
    String? tenantId,
  }) = _VerifyOTPRequest;

  factory VerifyOTPRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyOTPRequestFromJson(json);
}
