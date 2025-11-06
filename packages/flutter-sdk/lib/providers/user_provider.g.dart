// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Current user profile provider

@ProviderFor(currentUserProfile)
const currentUserProfileProvider = CurrentUserProfileProvider._();

/// Current user profile provider

final class CurrentUserProfileProvider extends $FunctionalProvider<
        AsyncValue<UserData>, UserData, FutureOr<UserData>>
    with $FutureModifier<UserData>, $FutureProvider<UserData> {
  /// Current user profile provider
  const CurrentUserProfileProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'currentUserProfileProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$currentUserProfileHash();

  @$internal
  @override
  $FutureProviderElement<UserData> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<UserData> create(Ref ref) {
    return currentUserProfile(ref);
  }
}

String _$currentUserProfileHash() =>
    r'11e86539c361400ca143ed61fb1285b98c04be77';

/// Individual user provider

@ProviderFor(user)
const userProvider = UserFamily._();

/// Individual user provider

final class UserProvider extends $FunctionalProvider<AsyncValue<UserData>,
        UserData, FutureOr<UserData>>
    with $FutureModifier<UserData>, $FutureProvider<UserData> {
  /// Individual user provider
  const UserProvider._(
      {required UserFamily super.from, required String super.argument})
      : super(
          retry: null,
          name: r'userProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$userHash();

  @override
  String toString() {
    return r'userProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<UserData> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<UserData> create(Ref ref) {
    final argument = this.argument as String;
    return user(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is UserProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$userHash() => r'8bc5be1b5e1128281cf5b615c8442843f6f3fbd7';

/// Individual user provider

final class UserFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<UserData>, String> {
  const UserFamily._()
      : super(
          retry: null,
          name: r'userProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  /// Individual user provider

  UserProvider call(
    String userId,
  ) =>
      UserProvider._(argument: userId, from: this);

  @override
  String toString() => r'userProvider';
}

/// Users list provider

@ProviderFor(users)
const usersProvider = UsersFamily._();

/// Users list provider

final class UsersProvider extends $FunctionalProvider<
        AsyncValue<PaginatedResponse<UserData>>,
        PaginatedResponse<UserData>,
        FutureOr<PaginatedResponse<UserData>>>
    with
        $FutureModifier<PaginatedResponse<UserData>>,
        $FutureProvider<PaginatedResponse<UserData>> {
  /// Users list provider
  const UsersProvider._(
      {required UsersFamily super.from, required QueryParams? super.argument})
      : super(
          retry: null,
          name: r'usersProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$usersHash();

  @override
  String toString() {
    return r'usersProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<PaginatedResponse<UserData>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<PaginatedResponse<UserData>> create(Ref ref) {
    final argument = this.argument as QueryParams?;
    return users(
      ref,
      query: argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is UsersProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$usersHash() => r'4c38359c527f4089dfe07f44f9dcc1cc7eecad90';

/// Users list provider

final class UsersFamily extends $Family
    with
        $FunctionalFamilyOverride<FutureOr<PaginatedResponse<UserData>>,
            QueryParams?> {
  const UsersFamily._()
      : super(
          retry: null,
          name: r'usersProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  /// Users list provider

  UsersProvider call({
    QueryParams? query,
  }) =>
      UsersProvider._(argument: query, from: this);

  @override
  String toString() => r'usersProvider';
}

/// User operations notifier

@ProviderFor(UserOperations)
const userOperationsProvider = UserOperationsProvider._();

/// User operations notifier
final class UserOperationsProvider
    extends $AsyncNotifierProvider<UserOperations, void> {
  /// User operations notifier
  const UserOperationsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'userOperationsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$userOperationsHash();

  @$internal
  @override
  UserOperations create() => UserOperations();
}

String _$userOperationsHash() => r'a0ea3fdbe75fd16abd9dcd0f2516a58ef8259840';

/// User operations notifier

abstract class _$UserOperations extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    build();
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<void>, void>,
        AsyncValue<void>,
        Object?,
        Object?>;
    element.handleValue(ref, null);
  }
}
