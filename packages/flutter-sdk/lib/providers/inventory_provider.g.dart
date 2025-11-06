// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Individual item provider

@ProviderFor(item)
const itemProvider = ItemFamily._();

/// Individual item provider

final class ItemProvider
    extends $FunctionalProvider<AsyncValue<Item>, Item, FutureOr<Item>>
    with $FutureModifier<Item>, $FutureProvider<Item> {
  /// Individual item provider
  const ItemProvider._(
      {required ItemFamily super.from, required String super.argument})
      : super(
          retry: null,
          name: r'itemProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$itemHash();

  @override
  String toString() {
    return r'itemProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Item> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Item> create(Ref ref) {
    final argument = this.argument as String;
    return item(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ItemProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$itemHash() => r'dc6d33dcd14e1cbe440eccce081730851aec3d19';

/// Individual item provider

final class ItemFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Item>, String> {
  const ItemFamily._()
      : super(
          retry: null,
          name: r'itemProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  /// Individual item provider

  ItemProvider call(
    String itemId,
  ) =>
      ItemProvider._(argument: itemId, from: this);

  @override
  String toString() => r'itemProvider';
}

/// Item stock provider

@ProviderFor(itemStock)
const itemStockProvider = ItemStockFamily._();

/// Item stock provider

final class ItemStockProvider extends $FunctionalProvider<
        AsyncValue<List<StockEntry>>,
        List<StockEntry>,
        FutureOr<List<StockEntry>>>
    with $FutureModifier<List<StockEntry>>, $FutureProvider<List<StockEntry>> {
  /// Item stock provider
  const ItemStockProvider._(
      {required ItemStockFamily super.from, required String super.argument})
      : super(
          retry: null,
          name: r'itemStockProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$itemStockHash();

  @override
  String toString() {
    return r'itemStockProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<StockEntry>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<StockEntry>> create(Ref ref) {
    final argument = this.argument as String;
    return itemStock(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ItemStockProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$itemStockHash() => r'a326c39160325d0b962689d9e4432682030c0566';

/// Item stock provider

final class ItemStockFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<StockEntry>>, String> {
  const ItemStockFamily._()
      : super(
          retry: null,
          name: r'itemStockProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  /// Item stock provider

  ItemStockProvider call(
    String itemId,
  ) =>
      ItemStockProvider._(argument: itemId, from: this);

  @override
  String toString() => r'itemStockProvider';
}

/// Individual location provider

@ProviderFor(location)
const locationProvider = LocationFamily._();

/// Individual location provider

final class LocationProvider extends $FunctionalProvider<AsyncValue<Location>,
        Location, FutureOr<Location>>
    with $FutureModifier<Location>, $FutureProvider<Location> {
  /// Individual location provider
  const LocationProvider._(
      {required LocationFamily super.from, required String super.argument})
      : super(
          retry: null,
          name: r'locationProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$locationHash();

  @override
  String toString() {
    return r'locationProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Location> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Location> create(Ref ref) {
    final argument = this.argument as String;
    return location(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is LocationProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$locationHash() => r'ca7ab799cc3af06e5363e0e8424f6fafb3b72996';

/// Individual location provider

final class LocationFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Location>, String> {
  const LocationFamily._()
      : super(
          retry: null,
          name: r'locationProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  /// Individual location provider

  LocationProvider call(
    String locationId,
  ) =>
      LocationProvider._(argument: locationId, from: this);

  @override
  String toString() => r'locationProvider';
}

/// Location stock provider

@ProviderFor(locationStock)
const locationStockProvider = LocationStockFamily._();

/// Location stock provider

final class LocationStockProvider extends $FunctionalProvider<
        AsyncValue<PaginatedResponse<StockEntry>>,
        PaginatedResponse<StockEntry>,
        FutureOr<PaginatedResponse<StockEntry>>>
    with
        $FutureModifier<PaginatedResponse<StockEntry>>,
        $FutureProvider<PaginatedResponse<StockEntry>> {
  /// Location stock provider
  const LocationStockProvider._(
      {required LocationStockFamily super.from,
      required (
        String, {
        QueryParams? query,
      })
          super.argument})
      : super(
          retry: null,
          name: r'locationStockProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$locationStockHash();

  @override
  String toString() {
    return r'locationStockProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<PaginatedResponse<StockEntry>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<PaginatedResponse<StockEntry>> create(Ref ref) {
    final argument = this.argument as (
      String, {
      QueryParams? query,
    });
    return locationStock(
      ref,
      argument.$1,
      query: argument.query,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is LocationStockProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$locationStockHash() => r'6db130b9e9081cc69f4f682a9e5044ebe063501d';

/// Location stock provider

final class LocationStockFamily extends $Family
    with
        $FunctionalFamilyOverride<
            FutureOr<PaginatedResponse<StockEntry>>,
            (
              String, {
              QueryParams? query,
            })> {
  const LocationStockFamily._()
      : super(
          retry: null,
          name: r'locationStockProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  /// Location stock provider

  LocationStockProvider call(
    String locationId, {
    QueryParams? query,
  }) =>
      LocationStockProvider._(argument: (
        locationId,
        query: query,
      ), from: this);

  @override
  String toString() => r'locationStockProvider';
}

/// Low stock items provider

@ProviderFor(lowStockItems)
const lowStockItemsProvider = LowStockItemsProvider._();

/// Low stock items provider

final class LowStockItemsProvider extends $FunctionalProvider<
        AsyncValue<List<StockEntry>>,
        List<StockEntry>,
        FutureOr<List<StockEntry>>>
    with $FutureModifier<List<StockEntry>>, $FutureProvider<List<StockEntry>> {
  /// Low stock items provider
  const LowStockItemsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'lowStockItemsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$lowStockItemsHash();

  @$internal
  @override
  $FutureProviderElement<List<StockEntry>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<StockEntry>> create(Ref ref) {
    return lowStockItems(ref);
  }
}

String _$lowStockItemsHash() => r'ef4021fc8316cf18839d42fd34651b4fdd257f36';

/// Stock movements provider

@ProviderFor(stockMovements)
const stockMovementsProvider = StockMovementsFamily._();

/// Stock movements provider

final class StockMovementsProvider extends $FunctionalProvider<
        AsyncValue<PaginatedResponse<StockMovement>>,
        PaginatedResponse<StockMovement>,
        FutureOr<PaginatedResponse<StockMovement>>>
    with
        $FutureModifier<PaginatedResponse<StockMovement>>,
        $FutureProvider<PaginatedResponse<StockMovement>> {
  /// Stock movements provider
  const StockMovementsProvider._(
      {required StockMovementsFamily super.from,
      required ({
        String? itemId,
        String? locationId,
        QueryParams? query,
      })
          super.argument})
      : super(
          retry: null,
          name: r'stockMovementsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$stockMovementsHash();

  @override
  String toString() {
    return r'stockMovementsProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<PaginatedResponse<StockMovement>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<PaginatedResponse<StockMovement>> create(Ref ref) {
    final argument = this.argument as ({
      String? itemId,
      String? locationId,
      QueryParams? query,
    });
    return stockMovements(
      ref,
      itemId: argument.itemId,
      locationId: argument.locationId,
      query: argument.query,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is StockMovementsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$stockMovementsHash() => r'83030606685ebc4a13a0d3c0c25d700f257cdafd';

/// Stock movements provider

final class StockMovementsFamily extends $Family
    with
        $FunctionalFamilyOverride<
            FutureOr<PaginatedResponse<StockMovement>>,
            ({
              String? itemId,
              String? locationId,
              QueryParams? query,
            })> {
  const StockMovementsFamily._()
      : super(
          retry: null,
          name: r'stockMovementsProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  /// Stock movements provider

  StockMovementsProvider call({
    String? itemId,
    String? locationId,
    QueryParams? query,
  }) =>
      StockMovementsProvider._(argument: (
        itemId: itemId,
        locationId: locationId,
        query: query,
      ), from: this);

  @override
  String toString() => r'stockMovementsProvider';
}

/// Stock value by location provider

@ProviderFor(stockValueByLocation)
const stockValueByLocationProvider = StockValueByLocationProvider._();

/// Stock value by location provider

final class StockValueByLocationProvider extends $FunctionalProvider<
        AsyncValue<Map<String, double>>,
        Map<String, double>,
        FutureOr<Map<String, double>>>
    with
        $FutureModifier<Map<String, double>>,
        $FutureProvider<Map<String, double>> {
  /// Stock value by location provider
  const StockValueByLocationProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'stockValueByLocationProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$stockValueByLocationHash();

  @$internal
  @override
  $FutureProviderElement<Map<String, double>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Map<String, double>> create(Ref ref) {
    return stockValueByLocation(ref);
  }
}

String _$stockValueByLocationHash() =>
    r'6a2a987d92ed8078fec9b915912dff724b4056ae';

/// Inventory operations notifier

@ProviderFor(InventoryOperations)
const inventoryOperationsProvider = InventoryOperationsProvider._();

/// Inventory operations notifier
final class InventoryOperationsProvider
    extends $AsyncNotifierProvider<InventoryOperations, void> {
  /// Inventory operations notifier
  const InventoryOperationsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'inventoryOperationsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$inventoryOperationsHash();

  @$internal
  @override
  InventoryOperations create() => InventoryOperations();
}

String _$inventoryOperationsHash() =>
    r'dff30710a7ed815103312125cdca9fac8d9fb654';

/// Inventory operations notifier

abstract class _$InventoryOperations extends $AsyncNotifier<void> {
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

/// Items provider with pagination and search

@ProviderFor(Items)
const itemsProvider = ItemsFamily._();

/// Items provider with pagination and search
final class ItemsProvider
    extends $AsyncNotifierProvider<Items, PaginatedResponse<Item>> {
  /// Items provider with pagination and search
  const ItemsProvider._(
      {required ItemsFamily super.from, required QueryParams? super.argument})
      : super(
          retry: null,
          name: r'itemsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$itemsHash();

  @override
  String toString() {
    return r'itemsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  Items create() => Items();

  @override
  bool operator ==(Object other) {
    return other is ItemsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$itemsHash() => r'bd46a4b437b1d286f65cf597401c6cbea538f0cf';

/// Items provider with pagination and search

final class ItemsFamily extends $Family
    with
        $ClassFamilyOverride<
            Items,
            AsyncValue<PaginatedResponse<Item>>,
            PaginatedResponse<Item>,
            FutureOr<PaginatedResponse<Item>>,
            QueryParams?> {
  const ItemsFamily._()
      : super(
          retry: null,
          name: r'itemsProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  /// Items provider with pagination and search

  ItemsProvider call({
    QueryParams? query,
  }) =>
      ItemsProvider._(argument: query, from: this);

  @override
  String toString() => r'itemsProvider';
}

/// Items provider with pagination and search

abstract class _$Items extends $AsyncNotifier<PaginatedResponse<Item>> {
  late final _$args = ref.$arg as QueryParams?;
  QueryParams? get query => _$args;

  FutureOr<PaginatedResponse<Item>> build({
    QueryParams? query,
  });
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(
      query: _$args,
    );
    final ref = this.ref
        as $Ref<AsyncValue<PaginatedResponse<Item>>, PaginatedResponse<Item>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<PaginatedResponse<Item>>,
            PaginatedResponse<Item>>,
        AsyncValue<PaginatedResponse<Item>>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}

/// Locations provider

@ProviderFor(Locations)
const locationsProvider = LocationsFamily._();

/// Locations provider
final class LocationsProvider
    extends $AsyncNotifierProvider<Locations, PaginatedResponse<Location>> {
  /// Locations provider
  const LocationsProvider._(
      {required LocationsFamily super.from,
      required QueryParams? super.argument})
      : super(
          retry: null,
          name: r'locationsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$locationsHash();

  @override
  String toString() {
    return r'locationsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  Locations create() => Locations();

  @override
  bool operator ==(Object other) {
    return other is LocationsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$locationsHash() => r'a3150049a524d7ce2f8c326853a353fa121076ab';

/// Locations provider

final class LocationsFamily extends $Family
    with
        $ClassFamilyOverride<
            Locations,
            AsyncValue<PaginatedResponse<Location>>,
            PaginatedResponse<Location>,
            FutureOr<PaginatedResponse<Location>>,
            QueryParams?> {
  const LocationsFamily._()
      : super(
          retry: null,
          name: r'locationsProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  /// Locations provider

  LocationsProvider call({
    QueryParams? query,
  }) =>
      LocationsProvider._(argument: query, from: this);

  @override
  String toString() => r'locationsProvider';
}

/// Locations provider

abstract class _$Locations extends $AsyncNotifier<PaginatedResponse<Location>> {
  late final _$args = ref.$arg as QueryParams?;
  QueryParams? get query => _$args;

  FutureOr<PaginatedResponse<Location>> build({
    QueryParams? query,
  });
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(
      query: _$args,
    );
    final ref = this.ref as $Ref<AsyncValue<PaginatedResponse<Location>>,
        PaginatedResponse<Location>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<PaginatedResponse<Location>>,
            PaginatedResponse<Location>>,
        AsyncValue<PaginatedResponse<Location>>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
