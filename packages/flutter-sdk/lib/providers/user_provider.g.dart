// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentUserProfileHash() =>
    r'11e86539c361400ca143ed61fb1285b98c04be77';

/// Current user profile provider
///
/// Copied from [currentUserProfile].
@ProviderFor(currentUserProfile)
final currentUserProfileProvider = AutoDisposeFutureProvider<UserData>.internal(
  currentUserProfile,
  name: r'currentUserProfileProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentUserProfileHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CurrentUserProfileRef = AutoDisposeFutureProviderRef<UserData>;
String _$userHash() => r'8bc5be1b5e1128281cf5b615c8442843f6f3fbd7';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// Individual user provider
///
/// Copied from [user].
@ProviderFor(user)
const userProvider = UserFamily();

/// Individual user provider
///
/// Copied from [user].
class UserFamily extends Family<AsyncValue<UserData>> {
  /// Individual user provider
  ///
  /// Copied from [user].
  const UserFamily();

  /// Individual user provider
  ///
  /// Copied from [user].
  UserProvider call(
    String userId,
  ) {
    return UserProvider(
      userId,
    );
  }

  @override
  UserProvider getProviderOverride(
    covariant UserProvider provider,
  ) {
    return call(
      provider.userId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'userProvider';
}

/// Individual user provider
///
/// Copied from [user].
class UserProvider extends AutoDisposeFutureProvider<UserData> {
  /// Individual user provider
  ///
  /// Copied from [user].
  UserProvider(
    String userId,
  ) : this._internal(
          (ref) => user(
            ref as UserRef,
            userId,
          ),
          from: userProvider,
          name: r'userProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$userHash,
          dependencies: UserFamily._dependencies,
          allTransitiveDependencies: UserFamily._allTransitiveDependencies,
          userId: userId,
        );

  UserProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final String userId;

  @override
  Override overrideWith(
    FutureOr<UserData> Function(UserRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UserProvider._internal(
        (ref) => create(ref as UserRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<UserData> createElement() {
    return _UserProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UserRef on AutoDisposeFutureProviderRef<UserData> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _UserProviderElement extends AutoDisposeFutureProviderElement<UserData>
    with UserRef {
  _UserProviderElement(super.provider);

  @override
  String get userId => (origin as UserProvider).userId;
}

String _$usersHash() => r'4c38359c527f4089dfe07f44f9dcc1cc7eecad90';

/// Users list provider
///
/// Copied from [users].
@ProviderFor(users)
const usersProvider = UsersFamily();

/// Users list provider
///
/// Copied from [users].
class UsersFamily extends Family<AsyncValue<PaginatedResponse<UserData>>> {
  /// Users list provider
  ///
  /// Copied from [users].
  const UsersFamily();

  /// Users list provider
  ///
  /// Copied from [users].
  UsersProvider call({
    QueryParams? query,
  }) {
    return UsersProvider(
      query: query,
    );
  }

  @override
  UsersProvider getProviderOverride(
    covariant UsersProvider provider,
  ) {
    return call(
      query: provider.query,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'usersProvider';
}

/// Users list provider
///
/// Copied from [users].
class UsersProvider
    extends AutoDisposeFutureProvider<PaginatedResponse<UserData>> {
  /// Users list provider
  ///
  /// Copied from [users].
  UsersProvider({
    QueryParams? query,
  }) : this._internal(
          (ref) => users(
            ref as UsersRef,
            query: query,
          ),
          from: usersProvider,
          name: r'usersProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$usersHash,
          dependencies: UsersFamily._dependencies,
          allTransitiveDependencies: UsersFamily._allTransitiveDependencies,
          query: query,
        );

  UsersProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
  }) : super.internal();

  final QueryParams? query;

  @override
  Override overrideWith(
    FutureOr<PaginatedResponse<UserData>> Function(UsersRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UsersProvider._internal(
        (ref) => create(ref as UsersRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PaginatedResponse<UserData>>
      createElement() {
    return _UsersProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UsersProvider && other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UsersRef on AutoDisposeFutureProviderRef<PaginatedResponse<UserData>> {
  /// The parameter `query` of this provider.
  QueryParams? get query;
}

class _UsersProviderElement
    extends AutoDisposeFutureProviderElement<PaginatedResponse<UserData>>
    with UsersRef {
  _UsersProviderElement(super.provider);

  @override
  QueryParams? get query => (origin as UsersProvider).query;
}

String _$userOperationsHash() => r'a0ea3fdbe75fd16abd9dcd0f2516a58ef8259840';

/// User operations notifier
///
/// Copied from [UserOperations].
@ProviderFor(UserOperations)
final userOperationsProvider =
    AutoDisposeAsyncNotifierProvider<UserOperations, void>.internal(
  UserOperations.new,
  name: r'userOperationsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userOperationsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserOperations = AutoDisposeAsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
