// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$itemHash() => r'2abf14df3fd21b1c559ca64a1b162ec439077ee1';

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

/// Individual item provider
///
/// Copied from [item].
@ProviderFor(item)
const itemProvider = ItemFamily();

/// Individual item provider
///
/// Copied from [item].
class ItemFamily extends Family<AsyncValue<Item>> {
  /// Individual item provider
  ///
  /// Copied from [item].
  const ItemFamily();

  /// Individual item provider
  ///
  /// Copied from [item].
  ItemProvider call(
    String itemId,
  ) {
    return ItemProvider(
      itemId,
    );
  }

  @override
  ItemProvider getProviderOverride(
    covariant ItemProvider provider,
  ) {
    return call(
      provider.itemId,
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
  String? get name => r'itemProvider';
}

/// Individual item provider
///
/// Copied from [item].
class ItemProvider extends AutoDisposeFutureProvider<Item> {
  /// Individual item provider
  ///
  /// Copied from [item].
  ItemProvider(
    String itemId,
  ) : this._internal(
          (ref) => item(
            ref as ItemRef,
            itemId,
          ),
          from: itemProvider,
          name: r'itemProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$itemHash,
          dependencies: ItemFamily._dependencies,
          allTransitiveDependencies: ItemFamily._allTransitiveDependencies,
          itemId: itemId,
        );

  ItemProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.itemId,
  }) : super.internal();

  final String itemId;

  @override
  Override overrideWith(
    FutureOr<Item> Function(ItemRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ItemProvider._internal(
        (ref) => create(ref as ItemRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        itemId: itemId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Item> createElement() {
    return _ItemProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ItemProvider && other.itemId == itemId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, itemId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ItemRef on AutoDisposeFutureProviderRef<Item> {
  /// The parameter `itemId` of this provider.
  String get itemId;
}

class _ItemProviderElement extends AutoDisposeFutureProviderElement<Item>
    with ItemRef {
  _ItemProviderElement(super.provider);

  @override
  String get itemId => (origin as ItemProvider).itemId;
}

String _$itemStockHash() => r'5f959feccf38f0905186553af7f682de68ce7970';

/// Item stock provider
///
/// Copied from [itemStock].
@ProviderFor(itemStock)
const itemStockProvider = ItemStockFamily();

/// Item stock provider
///
/// Copied from [itemStock].
class ItemStockFamily extends Family<AsyncValue<List<StockEntry>>> {
  /// Item stock provider
  ///
  /// Copied from [itemStock].
  const ItemStockFamily();

  /// Item stock provider
  ///
  /// Copied from [itemStock].
  ItemStockProvider call(
    String itemId,
  ) {
    return ItemStockProvider(
      itemId,
    );
  }

  @override
  ItemStockProvider getProviderOverride(
    covariant ItemStockProvider provider,
  ) {
    return call(
      provider.itemId,
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
  String? get name => r'itemStockProvider';
}

/// Item stock provider
///
/// Copied from [itemStock].
class ItemStockProvider extends AutoDisposeFutureProvider<List<StockEntry>> {
  /// Item stock provider
  ///
  /// Copied from [itemStock].
  ItemStockProvider(
    String itemId,
  ) : this._internal(
          (ref) => itemStock(
            ref as ItemStockRef,
            itemId,
          ),
          from: itemStockProvider,
          name: r'itemStockProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$itemStockHash,
          dependencies: ItemStockFamily._dependencies,
          allTransitiveDependencies: ItemStockFamily._allTransitiveDependencies,
          itemId: itemId,
        );

  ItemStockProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.itemId,
  }) : super.internal();

  final String itemId;

  @override
  Override overrideWith(
    FutureOr<List<StockEntry>> Function(ItemStockRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ItemStockProvider._internal(
        (ref) => create(ref as ItemStockRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        itemId: itemId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<StockEntry>> createElement() {
    return _ItemStockProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ItemStockProvider && other.itemId == itemId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, itemId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ItemStockRef on AutoDisposeFutureProviderRef<List<StockEntry>> {
  /// The parameter `itemId` of this provider.
  String get itemId;
}

class _ItemStockProviderElement
    extends AutoDisposeFutureProviderElement<List<StockEntry>>
    with ItemStockRef {
  _ItemStockProviderElement(super.provider);

  @override
  String get itemId => (origin as ItemStockProvider).itemId;
}

String _$locationHash() => r'b473e343e05d1bdbc144041db392e5bd9cd98682';

/// Individual location provider
///
/// Copied from [location].
@ProviderFor(location)
const locationProvider = LocationFamily();

/// Individual location provider
///
/// Copied from [location].
class LocationFamily extends Family<AsyncValue<Location>> {
  /// Individual location provider
  ///
  /// Copied from [location].
  const LocationFamily();

  /// Individual location provider
  ///
  /// Copied from [location].
  LocationProvider call(
    String locationId,
  ) {
    return LocationProvider(
      locationId,
    );
  }

  @override
  LocationProvider getProviderOverride(
    covariant LocationProvider provider,
  ) {
    return call(
      provider.locationId,
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
  String? get name => r'locationProvider';
}

/// Individual location provider
///
/// Copied from [location].
class LocationProvider extends AutoDisposeFutureProvider<Location> {
  /// Individual location provider
  ///
  /// Copied from [location].
  LocationProvider(
    String locationId,
  ) : this._internal(
          (ref) => location(
            ref as LocationRef,
            locationId,
          ),
          from: locationProvider,
          name: r'locationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$locationHash,
          dependencies: LocationFamily._dependencies,
          allTransitiveDependencies: LocationFamily._allTransitiveDependencies,
          locationId: locationId,
        );

  LocationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.locationId,
  }) : super.internal();

  final String locationId;

  @override
  Override overrideWith(
    FutureOr<Location> Function(LocationRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LocationProvider._internal(
        (ref) => create(ref as LocationRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        locationId: locationId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Location> createElement() {
    return _LocationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LocationProvider && other.locationId == locationId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, locationId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LocationRef on AutoDisposeFutureProviderRef<Location> {
  /// The parameter `locationId` of this provider.
  String get locationId;
}

class _LocationProviderElement
    extends AutoDisposeFutureProviderElement<Location> with LocationRef {
  _LocationProviderElement(super.provider);

  @override
  String get locationId => (origin as LocationProvider).locationId;
}

String _$locationStockHash() => r'843611442f1659cb4e77227bec935842d06bab81';

/// Location stock provider
///
/// Copied from [locationStock].
@ProviderFor(locationStock)
const locationStockProvider = LocationStockFamily();

/// Location stock provider
///
/// Copied from [locationStock].
class LocationStockFamily
    extends Family<AsyncValue<PaginatedResponse<StockEntry>>> {
  /// Location stock provider
  ///
  /// Copied from [locationStock].
  const LocationStockFamily();

  /// Location stock provider
  ///
  /// Copied from [locationStock].
  LocationStockProvider call(
    String locationId, {
    QueryParams? query,
  }) {
    return LocationStockProvider(
      locationId,
      query: query,
    );
  }

  @override
  LocationStockProvider getProviderOverride(
    covariant LocationStockProvider provider,
  ) {
    return call(
      provider.locationId,
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
  String? get name => r'locationStockProvider';
}

/// Location stock provider
///
/// Copied from [locationStock].
class LocationStockProvider
    extends AutoDisposeFutureProvider<PaginatedResponse<StockEntry>> {
  /// Location stock provider
  ///
  /// Copied from [locationStock].
  LocationStockProvider(
    String locationId, {
    QueryParams? query,
  }) : this._internal(
          (ref) => locationStock(
            ref as LocationStockRef,
            locationId,
            query: query,
          ),
          from: locationStockProvider,
          name: r'locationStockProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$locationStockHash,
          dependencies: LocationStockFamily._dependencies,
          allTransitiveDependencies:
              LocationStockFamily._allTransitiveDependencies,
          locationId: locationId,
          query: query,
        );

  LocationStockProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.locationId,
    required this.query,
  }) : super.internal();

  final String locationId;
  final QueryParams? query;

  @override
  Override overrideWith(
    FutureOr<PaginatedResponse<StockEntry>> Function(LocationStockRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LocationStockProvider._internal(
        (ref) => create(ref as LocationStockRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        locationId: locationId,
        query: query,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PaginatedResponse<StockEntry>>
      createElement() {
    return _LocationStockProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LocationStockProvider &&
        other.locationId == locationId &&
        other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, locationId.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LocationStockRef
    on AutoDisposeFutureProviderRef<PaginatedResponse<StockEntry>> {
  /// The parameter `locationId` of this provider.
  String get locationId;

  /// The parameter `query` of this provider.
  QueryParams? get query;
}

class _LocationStockProviderElement
    extends AutoDisposeFutureProviderElement<PaginatedResponse<StockEntry>>
    with LocationStockRef {
  _LocationStockProviderElement(super.provider);

  @override
  String get locationId => (origin as LocationStockProvider).locationId;
  @override
  QueryParams? get query => (origin as LocationStockProvider).query;
}

String _$lowStockItemsHash() => r'53d02fb5be1b4c98a00c6583db7284599b9382f1';

/// Low stock items provider
///
/// Copied from [lowStockItems].
@ProviderFor(lowStockItems)
final lowStockItemsProvider =
    AutoDisposeFutureProvider<List<StockEntry>>.internal(
  lowStockItems,
  name: r'lowStockItemsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$lowStockItemsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LowStockItemsRef = AutoDisposeFutureProviderRef<List<StockEntry>>;
String _$stockMovementsHash() => r'2d1e833dca7ea41b85f2d60f9a580f3c4dcb91e1';

/// Stock movements provider
///
/// Copied from [stockMovements].
@ProviderFor(stockMovements)
const stockMovementsProvider = StockMovementsFamily();

/// Stock movements provider
///
/// Copied from [stockMovements].
class StockMovementsFamily
    extends Family<AsyncValue<PaginatedResponse<StockMovement>>> {
  /// Stock movements provider
  ///
  /// Copied from [stockMovements].
  const StockMovementsFamily();

  /// Stock movements provider
  ///
  /// Copied from [stockMovements].
  StockMovementsProvider call({
    String? itemId,
    String? locationId,
    QueryParams? query,
  }) {
    return StockMovementsProvider(
      itemId: itemId,
      locationId: locationId,
      query: query,
    );
  }

  @override
  StockMovementsProvider getProviderOverride(
    covariant StockMovementsProvider provider,
  ) {
    return call(
      itemId: provider.itemId,
      locationId: provider.locationId,
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
  String? get name => r'stockMovementsProvider';
}

/// Stock movements provider
///
/// Copied from [stockMovements].
class StockMovementsProvider
    extends AutoDisposeFutureProvider<PaginatedResponse<StockMovement>> {
  /// Stock movements provider
  ///
  /// Copied from [stockMovements].
  StockMovementsProvider({
    String? itemId,
    String? locationId,
    QueryParams? query,
  }) : this._internal(
          (ref) => stockMovements(
            ref as StockMovementsRef,
            itemId: itemId,
            locationId: locationId,
            query: query,
          ),
          from: stockMovementsProvider,
          name: r'stockMovementsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$stockMovementsHash,
          dependencies: StockMovementsFamily._dependencies,
          allTransitiveDependencies:
              StockMovementsFamily._allTransitiveDependencies,
          itemId: itemId,
          locationId: locationId,
          query: query,
        );

  StockMovementsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.itemId,
    required this.locationId,
    required this.query,
  }) : super.internal();

  final String? itemId;
  final String? locationId;
  final QueryParams? query;

  @override
  Override overrideWith(
    FutureOr<PaginatedResponse<StockMovement>> Function(
            StockMovementsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StockMovementsProvider._internal(
        (ref) => create(ref as StockMovementsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        itemId: itemId,
        locationId: locationId,
        query: query,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PaginatedResponse<StockMovement>>
      createElement() {
    return _StockMovementsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StockMovementsProvider &&
        other.itemId == itemId &&
        other.locationId == locationId &&
        other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, itemId.hashCode);
    hash = _SystemHash.combine(hash, locationId.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin StockMovementsRef
    on AutoDisposeFutureProviderRef<PaginatedResponse<StockMovement>> {
  /// The parameter `itemId` of this provider.
  String? get itemId;

  /// The parameter `locationId` of this provider.
  String? get locationId;

  /// The parameter `query` of this provider.
  QueryParams? get query;
}

class _StockMovementsProviderElement
    extends AutoDisposeFutureProviderElement<PaginatedResponse<StockMovement>>
    with StockMovementsRef {
  _StockMovementsProviderElement(super.provider);

  @override
  String? get itemId => (origin as StockMovementsProvider).itemId;
  @override
  String? get locationId => (origin as StockMovementsProvider).locationId;
  @override
  QueryParams? get query => (origin as StockMovementsProvider).query;
}

String _$stockValueByLocationHash() =>
    r'4507aaf07af59a583ff55ac2ecd7312cd130e44d';

/// Stock value by location provider
///
/// Copied from [stockValueByLocation].
@ProviderFor(stockValueByLocation)
final stockValueByLocationProvider =
    AutoDisposeFutureProvider<Map<String, double>>.internal(
  stockValueByLocation,
  name: r'stockValueByLocationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$stockValueByLocationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef StockValueByLocationRef
    = AutoDisposeFutureProviderRef<Map<String, double>>;
String _$inventoryOperationsHash() =>
    r'dff30710a7ed815103312125cdca9fac8d9fb654';

/// Inventory operations notifier
///
/// Copied from [InventoryOperations].
@ProviderFor(InventoryOperations)
final inventoryOperationsProvider =
    AutoDisposeAsyncNotifierProvider<InventoryOperations, void>.internal(
  InventoryOperations.new,
  name: r'inventoryOperationsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$inventoryOperationsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$InventoryOperations = AutoDisposeAsyncNotifier<void>;
String _$itemsHash() => r'bd46a4b437b1d286f65cf597401c6cbea538f0cf';

abstract class _$Items
    extends BuildlessAutoDisposeAsyncNotifier<PaginatedResponse<Item>> {
  late final QueryParams? query;

  FutureOr<PaginatedResponse<Item>> build({
    QueryParams? query,
  });
}

/// Items provider with pagination and search
///
/// Copied from [Items].
@ProviderFor(Items)
const itemsProvider = ItemsFamily();

/// Items provider with pagination and search
///
/// Copied from [Items].
class ItemsFamily extends Family<AsyncValue<PaginatedResponse<Item>>> {
  /// Items provider with pagination and search
  ///
  /// Copied from [Items].
  const ItemsFamily();

  /// Items provider with pagination and search
  ///
  /// Copied from [Items].
  ItemsProvider call({
    QueryParams? query,
  }) {
    return ItemsProvider(
      query: query,
    );
  }

  @override
  ItemsProvider getProviderOverride(
    covariant ItemsProvider provider,
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
  String? get name => r'itemsProvider';
}

/// Items provider with pagination and search
///
/// Copied from [Items].
class ItemsProvider extends AutoDisposeAsyncNotifierProviderImpl<Items,
    PaginatedResponse<Item>> {
  /// Items provider with pagination and search
  ///
  /// Copied from [Items].
  ItemsProvider({
    QueryParams? query,
  }) : this._internal(
          () => Items()..query = query,
          from: itemsProvider,
          name: r'itemsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$itemsHash,
          dependencies: ItemsFamily._dependencies,
          allTransitiveDependencies: ItemsFamily._allTransitiveDependencies,
          query: query,
        );

  ItemsProvider._internal(
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
  FutureOr<PaginatedResponse<Item>> runNotifierBuild(
    covariant Items notifier,
  ) {
    return notifier.build(
      query: query,
    );
  }

  @override
  Override overrideWith(Items Function() create) {
    return ProviderOverride(
      origin: this,
      override: ItemsProvider._internal(
        () => create()..query = query,
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
  AutoDisposeAsyncNotifierProviderElement<Items, PaginatedResponse<Item>>
      createElement() {
    return _ItemsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ItemsProvider && other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ItemsRef on AutoDisposeAsyncNotifierProviderRef<PaginatedResponse<Item>> {
  /// The parameter `query` of this provider.
  QueryParams? get query;
}

class _ItemsProviderElement extends AutoDisposeAsyncNotifierProviderElement<
    Items, PaginatedResponse<Item>> with ItemsRef {
  _ItemsProviderElement(super.provider);

  @override
  QueryParams? get query => (origin as ItemsProvider).query;
}

String _$locationsHash() => r'a3150049a524d7ce2f8c326853a353fa121076ab';

abstract class _$Locations
    extends BuildlessAutoDisposeAsyncNotifier<PaginatedResponse<Location>> {
  late final QueryParams? query;

  FutureOr<PaginatedResponse<Location>> build({
    QueryParams? query,
  });
}

/// Locations provider
///
/// Copied from [Locations].
@ProviderFor(Locations)
const locationsProvider = LocationsFamily();

/// Locations provider
///
/// Copied from [Locations].
class LocationsFamily extends Family<AsyncValue<PaginatedResponse<Location>>> {
  /// Locations provider
  ///
  /// Copied from [Locations].
  const LocationsFamily();

  /// Locations provider
  ///
  /// Copied from [Locations].
  LocationsProvider call({
    QueryParams? query,
  }) {
    return LocationsProvider(
      query: query,
    );
  }

  @override
  LocationsProvider getProviderOverride(
    covariant LocationsProvider provider,
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
  String? get name => r'locationsProvider';
}

/// Locations provider
///
/// Copied from [Locations].
class LocationsProvider extends AutoDisposeAsyncNotifierProviderImpl<Locations,
    PaginatedResponse<Location>> {
  /// Locations provider
  ///
  /// Copied from [Locations].
  LocationsProvider({
    QueryParams? query,
  }) : this._internal(
          () => Locations()..query = query,
          from: locationsProvider,
          name: r'locationsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$locationsHash,
          dependencies: LocationsFamily._dependencies,
          allTransitiveDependencies: LocationsFamily._allTransitiveDependencies,
          query: query,
        );

  LocationsProvider._internal(
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
  FutureOr<PaginatedResponse<Location>> runNotifierBuild(
    covariant Locations notifier,
  ) {
    return notifier.build(
      query: query,
    );
  }

  @override
  Override overrideWith(Locations Function() create) {
    return ProviderOverride(
      origin: this,
      override: LocationsProvider._internal(
        () => create()..query = query,
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
  AutoDisposeAsyncNotifierProviderElement<Locations,
      PaginatedResponse<Location>> createElement() {
    return _LocationsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LocationsProvider && other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LocationsRef
    on AutoDisposeAsyncNotifierProviderRef<PaginatedResponse<Location>> {
  /// The parameter `query` of this provider.
  QueryParams? get query;
}

class _LocationsProviderElement extends AutoDisposeAsyncNotifierProviderElement<
    Locations, PaginatedResponse<Location>> with LocationsRef {
  _LocationsProviderElement(super.provider);

  @override
  QueryParams? get query => (origin as LocationsProvider).query;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
