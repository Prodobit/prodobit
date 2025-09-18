import 'package:prodobit_flutter_sdk/core/api_client.dart';
import 'package:prodobit_flutter_sdk/models/models.dart';

/// Service for user management operations
class UserService {
  const UserService(this._apiClient);

  final ApiClient _apiClient;

  /// Activate user
  Future<void> activateUser(String userId) async {
    await _apiClient.put('/users/$userId/activate');
  }

  /// Deactivate user
  Future<void> deactivateUser(String userId) async {
    await _apiClient.put('/users/$userId/deactivate');
  }

  /// Get current user profile
  Future<UserData> getCurrentProfile() async {
    final response = await _apiClient.get<Map<String, dynamic>>('/users/me');
    return UserData.fromJson(response);
  }

  /// Get user by ID
  Future<UserData> getUserById(String userId) async {
    final response =
        await _apiClient.get<Map<String, dynamic>>('/users/$userId');
    return UserData.fromJson(response);
  }

  /// Invite user to organization
  Future<void> inviteUser({
    required String email,
    required List<String> roles,
    String? firstName,
    String? lastName,
  }) async {
    await _apiClient.post(
      '/users/invite',
      data: {
        'email': email,
        'roles': roles,
        if (firstName != null) 'firstName': firstName,
        if (lastName != null) 'lastName': lastName,
      },
    );
  }

  /// List users in organization
  Future<PaginatedResponse<UserData>> listUsers({
    QueryParams? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/users',
      queryParameters: query?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => UserData.fromJson(json! as Map<String, dynamic>),
    );
  }

  /// Update current user profile
  Future<UserData> updateProfile({
    String? firstName,
    String? lastName,
    String? avatar,
    Map<String, dynamic>? metadata,
  }) async {
    final data = <String, dynamic>{};
    if (firstName != null) data['firstName'] = firstName;
    if (lastName != null) data['lastName'] = lastName;
    if (avatar != null) data['avatar'] = avatar;
    if (metadata != null) data['metadata'] = metadata;

    final response = await _apiClient.put<Map<String, dynamic>>(
      '/users/me',
      data: data,
    );

    return UserData.fromJson(response);
  }

  /// Update user roles
  Future<UserData> updateUserRoles({
    required String userId,
    required List<String> roles,
  }) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/users/$userId/roles',
      data: {'roles': roles},
    );

    return UserData.fromJson(response);
  }
}
