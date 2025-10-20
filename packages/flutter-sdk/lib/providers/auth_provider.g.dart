// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthStateAuthenticatedImpl _$$AuthStateAuthenticatedImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$AuthStateAuthenticatedImpl',
      json,
      ($checkedConvert) {
        final val = _$AuthStateAuthenticatedImpl(
          $checkedConvert(
              'user', (v) => UserData.fromJson(v as Map<String, dynamic>)),
          $checkedConvert('tenantId', (v) => v as String?),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$AuthStateAuthenticatedImplToJson(
        _$AuthStateAuthenticatedImpl instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'tenantId': instance.tenantId,
      'runtimeType': instance.$type,
    };

_$AuthStateErrorImpl _$$AuthStateErrorImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$AuthStateErrorImpl',
      json,
      ($checkedConvert) {
        final val = _$AuthStateErrorImpl(
          $checkedConvert('message', (v) => v as String),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$AuthStateErrorImplToJson(
        _$AuthStateErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$AuthStateInitialImpl _$$AuthStateInitialImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$AuthStateInitialImpl',
      json,
      ($checkedConvert) {
        final val = _$AuthStateInitialImpl(
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$AuthStateInitialImplToJson(
        _$AuthStateInitialImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AuthStateLoadingImpl _$$AuthStateLoadingImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$AuthStateLoadingImpl',
      json,
      ($checkedConvert) {
        final val = _$AuthStateLoadingImpl(
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$AuthStateLoadingImplToJson(
        _$AuthStateLoadingImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AuthStateUnauthenticatedImpl _$$AuthStateUnauthenticatedImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$AuthStateUnauthenticatedImpl',
      json,
      ($checkedConvert) {
        final val = _$AuthStateUnauthenticatedImpl(
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$AuthStateUnauthenticatedImplToJson(
        _$AuthStateUnauthenticatedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$OTPStateErrorImpl _$$OTPStateErrorImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$OTPStateErrorImpl',
      json,
      ($checkedConvert) {
        final val = _$OTPStateErrorImpl(
          $checkedConvert('message', (v) => v as String),
          attemptsLeft:
              $checkedConvert('attemptsLeft', (v) => (v as num?)?.toInt()),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$OTPStateErrorImplToJson(_$OTPStateErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'attemptsLeft': instance.attemptsLeft,
      'runtimeType': instance.$type,
    };

_$OTPStateInitialImpl _$$OTPStateInitialImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$OTPStateInitialImpl',
      json,
      ($checkedConvert) {
        final val = _$OTPStateInitialImpl(
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$OTPStateInitialImplToJson(
        _$OTPStateInitialImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$OTPStateRequestingImpl _$$OTPStateRequestingImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$OTPStateRequestingImpl',
      json,
      ($checkedConvert) {
        final val = _$OTPStateRequestingImpl(
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$OTPStateRequestingImplToJson(
        _$OTPStateRequestingImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$OTPStateSentImpl _$$OTPStateSentImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$OTPStateSentImpl',
      json,
      ($checkedConvert) {
        final val = _$OTPStateSentImpl(
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

Map<String, dynamic> _$$OTPStateSentImplToJson(_$OTPStateSentImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'expiresAt': instance.expiresAt,
      'tenantId': instance.tenantId,
      'tenantName': instance.tenantName,
      'runtimeType': instance.$type,
    };

_$OTPStateTenantSelectionImpl _$$OTPStateTenantSelectionImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$OTPStateTenantSelectionImpl',
      json,
      ($checkedConvert) {
        final val = _$OTPStateTenantSelectionImpl(
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

Map<String, dynamic> _$$OTPStateTenantSelectionImplToJson(
        _$OTPStateTenantSelectionImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'tenants': instance.tenants.map((e) => e.toJson()).toList(),
      'isNewUser': instance.isNewUser,
      'runtimeType': instance.$type,
    };

_$OTPStateVerifiedImpl _$$OTPStateVerifiedImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$OTPStateVerifiedImpl',
      json,
      ($checkedConvert) {
        final val = _$OTPStateVerifiedImpl(
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$OTPStateVerifiedImplToJson(
        _$OTPStateVerifiedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$OTPStateVerifyingImpl _$$OTPStateVerifyingImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$OTPStateVerifyingImpl',
      json,
      ($checkedConvert) {
        final val = _$OTPStateVerifyingImpl(
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$OTPStateVerifyingImplToJson(
        _$OTPStateVerifyingImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentTenantHash() => r'53c2977dcc53265324e1ddbecd879130fcd168c9';

/// Current tenant provider
///
/// Copied from [currentTenant].
@ProviderFor(currentTenant)
final currentTenantProvider = AutoDisposeProvider<String?>.internal(
  currentTenant,
  name: r'currentTenantProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentTenantHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CurrentTenantRef = AutoDisposeProviderRef<String?>;
String _$currentUserHash() => r'07b8125fa5fd6b1a76773786f4c634e408afcad3';

/// Current user provider
///
/// Copied from [currentUser].
@ProviderFor(currentUser)
final currentUserProvider = AutoDisposeProvider<UserData?>.internal(
  currentUser,
  name: r'currentUserProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$currentUserHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CurrentUserRef = AutoDisposeProviderRef<UserData?>;
String _$isAuthenticatedHash() => r'663ed980908c622a83890adf55e1f9507a12a6ab';

/// Is authenticated provider
///
/// Copied from [isAuthenticated].
@ProviderFor(isAuthenticated)
final isAuthenticatedProvider = AutoDisposeProvider<bool>.internal(
  isAuthenticated,
  name: r'isAuthenticatedProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$isAuthenticatedHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef IsAuthenticatedRef = AutoDisposeProviderRef<bool>;
String _$isAuthLoadingHash() => r'b9e25036f2f11d488204a6e453070e7f191b2292';

/// Auth loading provider
///
/// Copied from [isAuthLoading].
@ProviderFor(isAuthLoading)
final isAuthLoadingProvider = AutoDisposeProvider<bool>.internal(
  isAuthLoading,
  name: r'isAuthLoadingProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$isAuthLoadingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef IsAuthLoadingRef = AutoDisposeProviderRef<bool>;
String _$isOTPLoadingHash() => r'e9de552a0d792cb636bf82dee004607849b08d97';

/// OTP loading provider
///
/// Copied from [isOTPLoading].
@ProviderFor(isOTPLoading)
final isOTPLoadingProvider = AutoDisposeProvider<bool>.internal(
  isOTPLoading,
  name: r'isOTPLoadingProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$isOTPLoadingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef IsOTPLoadingRef = AutoDisposeProviderRef<bool>;
String _$authHash() => r'5f585d05d4811b894a2af342a8dc37466e463deb';

/// Auth state notifier
///
/// Copied from [Auth].
@ProviderFor(Auth)
final authProvider = AutoDisposeAsyncNotifierProvider<Auth, AuthState>.internal(
  Auth.new,
  name: r'authProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$authHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Auth = AutoDisposeAsyncNotifier<AuthState>;
String _$otpHash() => r'b2d30b433dc025a9cc6156eb743b638ca0dc5bb9';

/// OTP state notifier
///
/// Copied from [Otp].
@ProviderFor(Otp)
final otpProvider = AutoDisposeNotifierProvider<Otp, OTPState>.internal(
  Otp.new,
  name: r'otpProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$otpHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Otp = AutoDisposeNotifier<OTPState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
