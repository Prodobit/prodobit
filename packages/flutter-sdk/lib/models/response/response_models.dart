import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_models.freezed.dart';
part 'response_models.g.dart';

/// Authentication response model (deprecated - use auth models)
@Deprecated('Use LoginOTPResponse from auth_models.dart instead')
@freezed
sealed class AuthResponse with _$AuthResponse {
  @Deprecated('Use LoginOTPResponse from auth_models.dart instead')
  const factory AuthResponse({
    required String accessToken,
    required String refreshToken,
    required String tokenType,
    required int expiresIn,
    String? organizationId,
    String? organizationName,
  }) = _AuthResponse;

  @Deprecated('Use LoginOTPResponse from auth_models.dart instead')
  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}

/// Password reset response model
@freezed
sealed class PasswordResetResponse with _$PasswordResetResponse {
  const factory PasswordResetResponse({
    required String message,
    required bool success,
  }) = _PasswordResetResponse;

  factory PasswordResetResponse.fromJson(Map<String, dynamic> json) =>
      _$PasswordResetResponseFromJson(json);
}

/// Generic success response model
@freezed
sealed class SuccessResponse with _$SuccessResponse {
  const factory SuccessResponse({
    required String message,
    required bool success,
    Map<String, dynamic>? data,
  }) = _SuccessResponse;

  factory SuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$SuccessResponseFromJson(json);
}

