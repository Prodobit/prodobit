import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_models.freezed.dart';
part 'user_models.g.dart';

/// User model
@freezed
class User with _$User {
  const factory User({
    required String id,
    required String email,
    required String firstName,
    required String lastName,
    required List<String> roles,
    required DateTime createdAt,
    DateTime? updatedAt,
    DateTime? lastLoginAt,
    bool? isActive,
    String? avatarUrl,
    String? phone,
    String? timezone,
    String? language,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

/// User profile update request
@freezed
class UserUpdateRequest with _$UserUpdateRequest {
  const factory UserUpdateRequest({
    String? firstName,
    String? lastName,
    String? phone,
    String? timezone,
    String? language,
  }) = _UserUpdateRequest;

  factory UserUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateRequestFromJson(json);
}
