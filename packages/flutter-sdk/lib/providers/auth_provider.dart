import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prodobit_flutter_sdk/exceptions/exceptions.dart';
import 'package:prodobit_flutter_sdk/models/models.dart';
import 'package:prodobit_flutter_sdk/providers/client_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.freezed.dart';
part 'auth_provider.g.dart';

/// Current tenant provider
@riverpod
String? currentTenant(Ref ref) {
  final authState = ref.watch(authProvider);

  return authState.when(
    data: (state) => state.maybeWhen(
      authenticated: (user, tenantId) => tenantId,
      orElse: () => null,
    ),
    loading: () => null,
    error: (_, __) => null,
  );
}

/// Current user provider
@riverpod
UserData? currentUser(Ref ref) {
  final authState = ref.watch(authProvider);

  return authState.when(
    data: (state) => state.maybeWhen(
      authenticated: (user, tenantId) => user,
      orElse: () => null,
    ),
    loading: () => null,
    error: (_, __) => null,
  );
}

/// Is authenticated provider
@riverpod
bool isAuthenticated(Ref ref) {
  final authState = ref.watch(authProvider);

  return authState.when(
    data: (state) => state.maybeWhen(
      authenticated: (_, __) => true,
      orElse: () => false,
    ),
    loading: () => false,
    error: (_, __) => false,
  );
}

/// Auth loading provider
@riverpod
bool isAuthLoading(Ref ref) {
  final authState = ref.watch(authProvider);
  return authState.isLoading;
}

/// OTP loading provider
@riverpod
bool isOTPLoading(Ref ref) {
  final otpState = ref.watch(otpProvider);
  return otpState == const OTPState.requesting() ||
      otpState == const OTPState.verifying();
}

/// Auth state notifier
@riverpod
class Auth extends _$Auth {
  @override
  Future<AuthState> build() async {
    final client = ref.read(prodobitClientProvider);

    // Initialize the auth service
    await client.auth.initialize();

    // Check if user is already authenticated
    final isAuth = await client.auth.isAuthenticated();
    if (isAuth) {
      try {
        final user = await client.auth.getCurrentUser();
        final tenantId = client.auth.getCurrentTenantId();
        return AuthState.authenticated(user, tenantId);
      } catch (e) {
        // Token might be invalid, clear auth
        await client.auth.logout();
      }
    }

    return const AuthState.unauthenticated();
  }

  /// Logout
  Future<void> logout({bool allDevices = false}) async {
    state = const AsyncValue.loading();

    try {
      final client = ref.read(prodobitClientProvider);
      await client.auth.logout(allDevices: allDevices);
      ref.read(otpProvider.notifier).reset();
      state = const AsyncValue.data(AuthState.unauthenticated());
    } catch (e) {
      // Even if logout fails, clear local state
      ref.read(otpProvider.notifier).reset();
      state = const AsyncValue.data(AuthState.unauthenticated());
    }
  }

  /// Request OTP for email login
  Future<void> requestOTP({
    required String email,
    String? tenantId,
  }) async {
    // Don't change auth state during OTP request to prevent widget disposal
    // Only use OTP provider for loading state
    ref.read(otpProvider.notifier).setRequesting();

    try {
      final client = ref.read(prodobitClientProvider);
      final otpResponse = await client.auth.requestOTP(
        email: email,
        tenantId: tenantId,
      );

      if (otpResponse.success) {
        // Debug log
        print('🔐 OTP request success - checking response type');
        print(
          '🔐 RequiresTenantSelection: ${otpResponse.requiresTenantSelection}',
        );
        print('🔐 ExpiresAt: ${otpResponse.expiresAt}');

        if (otpResponse.requiresTenantSelection ?? false) {
          // User needs to select tenant first - show tenant selection
          print('🏢 Multi-tenant user - showing tenant selection');
          ref.read(otpProvider.notifier).setTenantSelection(
                email,
                otpResponse.tenants ?? [],
                isNewUser: otpResponse.isNewUser ?? false,
              );
        } else {
          // Single tenant or OTP already sent - show verification screen
          print('✅ Single tenant or OTP sent - navigating to verification');
          print('🔐 DefaultTenantId: ${otpResponse.defaultTenantId}');
          print('🔐 DefaultTenantName: ${otpResponse.defaultTenantName}');
          ref.read(otpProvider.notifier).setOTPSent(
                email,
                otpResponse.expiresAt ??
                    DateTime.now()
                        .add(const Duration(minutes: 10))
                        .toIso8601String(),
                otpResponse.defaultTenantId,
                otpResponse.defaultTenantName,
              );
        }
      } else {
        ref.read(otpProvider.notifier).setError(otpResponse.message);
        // Don't change auth state for OTP errors
      }
    } on AuthException catch (e) {
      ref.read(otpProvider.notifier).setError(e.message);
      // Don't change auth state for OTP errors
    } catch (e) {
      final errorMessage = 'Failed to request OTP: $e';
      ref.read(otpProvider.notifier).setError(errorMessage);
      // Don't change auth state for OTP errors
    }
  }

  /// Resend OTP
  Future<void> resendOTP(String email) async {
    state = const AsyncValue.loading();

    try {
      final client = ref.read(prodobitClientProvider);
      final otpResponse = await client.auth.resendOTP(email: email);

      if (otpResponse.success) {
        ref.read(otpProvider.notifier).setOTPSent(
              email,
              otpResponse.expiresAt ??
                  DateTime.now()
                      .add(const Duration(minutes: 10))
                      .toIso8601String(),
              otpResponse.defaultTenantId,
              otpResponse.defaultTenantName,
            );
        state = const AsyncValue.data(AuthState.unauthenticated());
      } else {
        state = AsyncValue.data(AuthState.error(otpResponse.message));
      }
    } on AuthException catch (e) {
      state = AsyncValue.data(AuthState.error(e.message));
    } catch (e) {
      state = AsyncValue.data(AuthState.error('Failed to resend OTP: $e'));
    }
  }

  /// Switch tenant
  Future<void> switchTenant(String tenantId) async {
    final currentState = state.value;
    if (currentState is AuthStateAuthenticated) {
      final client = ref.read(prodobitClientProvider);
      await client.auth.setCurrentTenantId(tenantId);

      state = AsyncValue.data(
        AuthState.authenticated(currentState.user, tenantId),
      );
    }
  }

  /// Verify OTP and complete login
  Future<void> verifyOTP({
    required String email,
    required String code,
    String? tenantId,
  }) async {
    state = const AsyncValue.loading();
    ref.read(otpProvider.notifier).setVerifying();

    try {
      final client = ref.read(prodobitClientProvider);
      final loginResponse = await client.auth.verifyOTP(
        email: email,
        code: code,
        tenantId: tenantId,
      );

      if (loginResponse.success && loginResponse.data != null) {
        ref.read(otpProvider.notifier).setVerified();

        // Set current tenant if available
        var currentTenantId = tenantId;
        if (currentTenantId == null &&
            loginResponse.data!.tenantMemberships!.isNotEmpty) {
          currentTenantId =
              loginResponse.data!.tenantMemberships!.first.tenantId;
        }

        state = AsyncValue.data(
          AuthState.authenticated(loginResponse.data!.user, currentTenantId),
        );
      } else {
        final errorMessage = loginResponse.message ?? 'Verification failed';
        ref.read(otpProvider.notifier).setError(errorMessage);
        state = AsyncValue.data(AuthState.error(errorMessage));
      }
    } on AuthException catch (e) {
      ref.read(otpProvider.notifier).setError(e.message);
      state = AsyncValue.data(AuthState.error(e.message));
    } catch (e) {
      final errorMessage = 'OTP verification failed: $e';
      ref.read(otpProvider.notifier).setError(errorMessage);
      state = AsyncValue.data(AuthState.error(errorMessage));
    }
  }
}

/// Authentication state
@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState.authenticated(UserData user, String? tenantId) =
      AuthStateAuthenticated;
  const factory AuthState.error(String message) = AuthStateError;
  const factory AuthState.initial() = AuthStateInitial;
  const factory AuthState.loading() = AuthStateLoading;
  const factory AuthState.unauthenticated() = AuthStateUnauthenticated;
}

/// OTP state notifier
@riverpod
class Otp extends _$Otp {
  @override
  OTPState build() {
    return const OTPState.initial();
  }

  void reset() {
    state = const OTPState.initial();
  }

  void setError(String message, {int? attemptsLeft}) {
    state = OTPState.error(message, attemptsLeft: attemptsLeft);
  }

  void setOTPSent(
    String email,
    String expiresAt,
    String? tenantId,
    String? tenantName,
  ) {
    print('🔄 OTP.setOTPSent called with email: $email, expiresAt: $expiresAt');
    print('🔄 TenantId: $tenantId, TenantName: $tenantName');
    state = OTPState.sent(email, expiresAt, tenantId, tenantName);
    print('✅ OTP state updated to: ${state.runtimeType}');
  }

  void setRequesting() {
    state = const OTPState.requesting();
  }

  void setTenantSelection(
    String email,
    List<TenantInfo> tenants, {
    required bool isNewUser,
  }) {
    print('🏢 OTP.setTenantSelection called with ${tenants.length} tenants');
    state = OTPState.tenantSelection(email, tenants, isNewUser: isNewUser);
    print('✅ OTP state updated to: ${state.runtimeType}');
  }

  void setVerified() {
    state = const OTPState.verified();
  }

  void setVerifying() {
    state = const OTPState.verifying();
  }
}

/// OTP verification state
@freezed
sealed class OTPState with _$OTPState {
  const factory OTPState.error(String message, {int? attemptsLeft}) =
      OTPStateError;
  const factory OTPState.initial() = OTPStateInitial;
  const factory OTPState.requesting() = OTPStateRequesting;
  const factory OTPState.sent(
    String email,
    String expiresAt,
    String? tenantId,
    String? tenantName,
  ) = OTPStateSent;
  const factory OTPState.tenantSelection(
    String email,
    List<TenantInfo> tenants, {
    required bool isNewUser,
  }) = OTPStateTenantSelection;
  const factory OTPState.verified() = OTPStateVerified;
  const factory OTPState.verifying() = OTPStateVerifying;
}
