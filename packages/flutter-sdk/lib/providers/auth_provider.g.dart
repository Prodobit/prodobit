// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthStateAuthenticated _$AuthStateAuthenticatedFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'AuthStateAuthenticated',
      json,
      ($checkedConvert) {
        final val = AuthStateAuthenticated(
          $checkedConvert(
              'user', (v) => UserData.fromJson(v as Map<String, dynamic>)),
          $checkedConvert('tenantId', (v) => v as String?),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$AuthStateAuthenticatedToJson(
        AuthStateAuthenticated instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'tenantId': instance.tenantId,
      'runtimeType': instance.$type,
    };

AuthStateError _$AuthStateErrorFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'AuthStateError',
      json,
      ($checkedConvert) {
        final val = AuthStateError(
          $checkedConvert('message', (v) => v as String),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$AuthStateErrorToJson(AuthStateError instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

AuthStateInitial _$AuthStateInitialFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'AuthStateInitial',
      json,
      ($checkedConvert) {
        final val = AuthStateInitial(
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$AuthStateInitialToJson(AuthStateInitial instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

AuthStateLoading _$AuthStateLoadingFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'AuthStateLoading',
      json,
      ($checkedConvert) {
        final val = AuthStateLoading(
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$AuthStateLoadingToJson(AuthStateLoading instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

AuthStateUnauthenticated _$AuthStateUnauthenticatedFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'AuthStateUnauthenticated',
      json,
      ($checkedConvert) {
        final val = AuthStateUnauthenticated(
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$AuthStateUnauthenticatedToJson(
        AuthStateUnauthenticated instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

OTPStateError _$OTPStateErrorFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'OTPStateError',
      json,
      ($checkedConvert) {
        final val = OTPStateError(
          $checkedConvert('message', (v) => v as String),
          attemptsLeft:
              $checkedConvert('attemptsLeft', (v) => (v as num?)?.toInt()),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$OTPStateErrorToJson(OTPStateError instance) =>
    <String, dynamic>{
      'message': instance.message,
      'attemptsLeft': instance.attemptsLeft,
      'runtimeType': instance.$type,
    };

OTPStateInitial _$OTPStateInitialFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'OTPStateInitial',
      json,
      ($checkedConvert) {
        final val = OTPStateInitial(
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$OTPStateInitialToJson(OTPStateInitial instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

OTPStateRequesting _$OTPStateRequestingFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'OTPStateRequesting',
      json,
      ($checkedConvert) {
        final val = OTPStateRequesting(
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$OTPStateRequestingToJson(OTPStateRequesting instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

OTPStateSent _$OTPStateSentFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'OTPStateSent',
      json,
      ($checkedConvert) {
        final val = OTPStateSent(
          $checkedConvert('email', (v) => v as String),
          $checkedConvert('expiresAt', (v) => v as String),
          $checkedConvert('tenantId', (v) => v as String?),
          $checkedConvert('tenantName', (v) => v as String?),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$OTPStateSentToJson(OTPStateSent instance) =>
    <String, dynamic>{
      'email': instance.email,
      'expiresAt': instance.expiresAt,
      'tenantId': instance.tenantId,
      'tenantName': instance.tenantName,
      'runtimeType': instance.$type,
    };

OTPStateTenantSelection _$OTPStateTenantSelectionFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'OTPStateTenantSelection',
      json,
      ($checkedConvert) {
        final val = OTPStateTenantSelection(
          $checkedConvert('email', (v) => v as String),
          $checkedConvert(
              'tenants',
              (v) => (v as List<dynamic>)
                  .map((e) => TenantInfo.fromJson(e as Map<String, dynamic>))
                  .toList()),
          isNewUser: $checkedConvert('isNewUser', (v) => v as bool),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$OTPStateTenantSelectionToJson(
        OTPStateTenantSelection instance) =>
    <String, dynamic>{
      'email': instance.email,
      'tenants': instance.tenants.map((e) => e.toJson()).toList(),
      'isNewUser': instance.isNewUser,
      'runtimeType': instance.$type,
    };

OTPStateVerified _$OTPStateVerifiedFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'OTPStateVerified',
      json,
      ($checkedConvert) {
        final val = OTPStateVerified(
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$OTPStateVerifiedToJson(OTPStateVerified instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

OTPStateVerifying _$OTPStateVerifyingFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'OTPStateVerifying',
      json,
      ($checkedConvert) {
        final val = OTPStateVerifying(
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$OTPStateVerifyingToJson(OTPStateVerifying instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Current tenant provider

@ProviderFor(currentTenant)
const currentTenantProvider = CurrentTenantProvider._();

/// Current tenant provider

final class CurrentTenantProvider
    extends $FunctionalProvider<String?, String?, String?>
    with $Provider<String?> {
  /// Current tenant provider
  const CurrentTenantProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'currentTenantProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$currentTenantHash();

  @$internal
  @override
  $ProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String? create(Ref ref) {
    return currentTenant(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$currentTenantHash() => r'53c2977dcc53265324e1ddbecd879130fcd168c9';

/// Current user provider

@ProviderFor(currentUser)
const currentUserProvider = CurrentUserProvider._();

/// Current user provider

final class CurrentUserProvider
    extends $FunctionalProvider<UserData?, UserData?, UserData?>
    with $Provider<UserData?> {
  /// Current user provider
  const CurrentUserProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'currentUserProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$currentUserHash();

  @$internal
  @override
  $ProviderElement<UserData?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  UserData? create(Ref ref) {
    return currentUser(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UserData? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserData?>(value),
    );
  }
}

String _$currentUserHash() => r'07b8125fa5fd6b1a76773786f4c634e408afcad3';

/// Is authenticated provider

@ProviderFor(isAuthenticated)
const isAuthenticatedProvider = IsAuthenticatedProvider._();

/// Is authenticated provider

final class IsAuthenticatedProvider
    extends $FunctionalProvider<bool, bool, bool> with $Provider<bool> {
  /// Is authenticated provider
  const IsAuthenticatedProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'isAuthenticatedProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$isAuthenticatedHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isAuthenticated(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isAuthenticatedHash() => r'663ed980908c622a83890adf55e1f9507a12a6ab';

/// Auth loading provider

@ProviderFor(isAuthLoading)
const isAuthLoadingProvider = IsAuthLoadingProvider._();

/// Auth loading provider

final class IsAuthLoadingProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  /// Auth loading provider
  const IsAuthLoadingProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'isAuthLoadingProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$isAuthLoadingHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isAuthLoading(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isAuthLoadingHash() => r'b9e25036f2f11d488204a6e453070e7f191b2292';

/// OTP loading provider

@ProviderFor(isOTPLoading)
const isOTPLoadingProvider = IsOTPLoadingProvider._();

/// OTP loading provider

final class IsOTPLoadingProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  /// OTP loading provider
  const IsOTPLoadingProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'isOTPLoadingProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$isOTPLoadingHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isOTPLoading(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isOTPLoadingHash() => r'e9de552a0d792cb636bf82dee004607849b08d97';

/// Auth state notifier

@ProviderFor(Auth)
const authProvider = AuthProvider._();

/// Auth state notifier
final class AuthProvider extends $AsyncNotifierProvider<Auth, AuthState> {
  /// Auth state notifier
  const AuthProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'authProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$authHash();

  @$internal
  @override
  Auth create() => Auth();
}

String _$authHash() => r'5f585d05d4811b894a2af342a8dc37466e463deb';

/// Auth state notifier

abstract class _$Auth extends $AsyncNotifier<AuthState> {
  FutureOr<AuthState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<AuthState>, AuthState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<AuthState>, AuthState>,
        AsyncValue<AuthState>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}

/// OTP state notifier

@ProviderFor(Otp)
const otpProvider = OtpProvider._();

/// OTP state notifier
final class OtpProvider extends $NotifierProvider<Otp, OTPState> {
  /// OTP state notifier
  const OtpProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'otpProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$otpHash();

  @$internal
  @override
  Otp create() => Otp();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OTPState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OTPState>(value),
    );
  }
}

String _$otpHash() => r'b2d30b433dc025a9cc6156eb743b638ca0dc5bb9';

/// OTP state notifier

abstract class _$Otp extends $Notifier<OTPState> {
  OTPState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<OTPState, OTPState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<OTPState, OTPState>, OTPState, Object?, Object?>;
    element.handleValue(ref, created);
  }
}
