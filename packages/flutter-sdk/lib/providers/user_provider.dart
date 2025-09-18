import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prodobit_flutter_sdk/models/models.dart';
import 'package:prodobit_flutter_sdk/providers/client_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_provider.g.dart';

/// Current user profile provider
@riverpod
Future<UserData> currentUserProfile(Ref ref) async {
  final client = ref.read(prodobitClientProvider);
  return client.user.getCurrentProfile();
}

/// Individual user provider
@riverpod
Future<UserData> user(Ref ref, String userId) async {
  final client = ref.read(prodobitClientProvider);
  return client.user.getUserById(userId);
}

/// Users list provider
@riverpod
Future<PaginatedResponse<UserData>> users(
  Ref ref, {
  QueryParams? query,
}) async {
  final client = ref.read(prodobitClientProvider);
  return client.user.listUsers(query: query);
}

/// User operations notifier
@riverpod
class UserOperations extends _$UserOperations {
  /// Activate user
  Future<void> activateUser(String userId) async {
    state = const AsyncValue.loading();

    try {
      final client = ref.read(prodobitClientProvider);
      await client.user.activateUser(userId);

      // Refresh related providers
      ref
        ..invalidate(usersProvider)
        ..invalidate(userProvider(userId));

      state = const AsyncValue.data(null);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }

  @override
  FutureOr<void> build() {
    return null;
  }

  /// Deactivate user
  Future<void> deactivateUser(String userId) async {
    state = const AsyncValue.loading();

    try {
      final client = ref.read(prodobitClientProvider);
      await client.user.deactivateUser(userId);

      // Refresh related providers
      ref
        ..invalidate(usersProvider)
        ..invalidate(userProvider(userId));

      state = const AsyncValue.data(null);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }

  /// Invite new user
  Future<void> inviteUser({
    required String email,
    required List<String> roles,
    String? firstName,
    String? lastName,
  }) async {
    state = const AsyncValue.loading();

    try {
      final client = ref.read(prodobitClientProvider);
      await client.user.inviteUser(
        email: email,
        roles: roles,
        firstName: firstName,
        lastName: lastName,
      );

      // Refresh users list
      ref.invalidate(usersProvider);

      state = const AsyncValue.data(null);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }

  /// Update current user profile
  Future<UserData> updateProfile({
    String? firstName,
    String? lastName,
    String? avatar,
    Map<String, dynamic>? metadata,
  }) async {
    state = const AsyncValue.loading();

    try {
      final client = ref.read(prodobitClientProvider);
      final user = await client.user.updateProfile(
        firstName: firstName,
        lastName: lastName,
        avatar: avatar,
        metadata: metadata,
      );

      // Refresh current user profile
      ref.invalidate(currentUserProfileProvider);

      state = const AsyncValue.data(null);
      return user;
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }

  /// Update user roles
  Future<UserData> updateUserRoles({
    required String userId,
    required List<String> roles,
  }) async {
    state = const AsyncValue.loading();

    try {
      final client = ref.read(prodobitClientProvider);
      final user = await client.user.updateUserRoles(
        userId: userId,
        roles: roles,
      );

      // Refresh related providers
      ref
        ..invalidate(usersProvider)
        ..invalidate(userProvider(userId));

      state = const AsyncValue.data(null);
      return user;
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }
}
