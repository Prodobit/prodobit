import 'package:prodobit_flutter_sdk/models/models.dart';
import 'package:prodobit_flutter_sdk/providers/client_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'inventory_provider.g.dart';

/// Individual item provider
@riverpod
Future<Item> item(ItemRef ref, String itemId) async {
  final client = ref.read(prodobitClientProvider);
  return client.inventory.getItem(itemId);
}

/// Item stock provider
@riverpod
Future<List<StockEntry>> itemStock(ItemStockRef ref, String itemId) async {
  final client = ref.read(prodobitClientProvider);
  return client.inventory.getItemStock(itemId);
}

/// Individual location provider
@riverpod
Future<Location> location(LocationRef ref, String locationId) async {
  final client = ref.read(prodobitClientProvider);
  return client.inventory.getLocation(locationId);
}

/// Location stock provider
@riverpod
Future<PaginatedResponse<StockEntry>> locationStock(
  LocationStockRef ref,
  String locationId, {
  QueryParams? query,
}) async {
  final client = ref.read(prodobitClientProvider);
  return client.inventory.getLocationStock(locationId, query: query);
}

/// Low stock items provider
@riverpod
Future<List<StockEntry>> lowStockItems(LowStockItemsRef ref) async {
  final client = ref.read(prodobitClientProvider);
  return client.inventory.getLowStockItems();
}

/// Stock movements provider
@riverpod
Future<PaginatedResponse<StockMovement>> stockMovements(
  StockMovementsRef ref, {
  String? itemId,
  String? locationId,
  QueryParams? query,
}) async {
  final client = ref.read(prodobitClientProvider);
  return client.inventory.getStockMovements(
    itemId: itemId,
    locationId: locationId,
    query: query,
  );
}

/// Stock value by location provider
@riverpod
Future<Map<String, double>> stockValueByLocation(
  StockValueByLocationRef ref,
) async {
  final client = ref.read(prodobitClientProvider);
  return client.inventory.getStockValueByLocation();
}

/// Inventory operations notifier
@riverpod
class InventoryOperations extends _$InventoryOperations {
  /// Adjust stock
  Future<StockMovement> adjustStock(StockAdjustmentRequest request) async {
    state = const AsyncValue.loading();

    try {
      final client = ref.read(prodobitClientProvider);
      final movement = await client.inventory.adjustStock(request);

      // Refresh related providers
      ref
        ..invalidate(itemStockProvider(request.itemId))
        ..invalidate(locationStockProvider(request.locationId))
        ..invalidate(stockMovementsProvider)
        ..invalidate(lowStockItemsProvider);

      state = const AsyncValue.data(null);
      return movement;
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }

  @override
  FutureOr<void> build() {
    return null;
  }

  /// Create new item
  Future<Item> createItem(ItemRequest request) async {
    state = const AsyncValue.loading();

    try {
      final client = ref.read(prodobitClientProvider);
      final item = await client.inventory.createItem(request);

      // Refresh items list
      ref.invalidate(itemsProvider);

      state = const AsyncValue.data(null);
      return item;
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }

  /// Delete item
  Future<void> deleteItem(String itemId) async {
    state = const AsyncValue.loading();

    try {
      final client = ref.read(prodobitClientProvider);
      await client.inventory.deleteItem(itemId);

      // Refresh items list
      ref.invalidate(itemsProvider);

      state = const AsyncValue.data(null);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }

  /// Transfer stock
  Future<StockMovement> transferStock(StockTransferRequest request) async {
    state = const AsyncValue.loading();

    try {
      final client = ref.read(prodobitClientProvider);
      final movement = await client.inventory.transferStock(request);

      // Refresh related providers
      ref
        ..invalidate(itemStockProvider(request.itemId))
        ..invalidate(locationStockProvider(request.fromLocationId))
        ..invalidate(locationStockProvider(request.toLocationId))
        ..invalidate(stockMovementsProvider);

      state = const AsyncValue.data(null);
      return movement;
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }

  /// Update item
  Future<Item> updateItem(String itemId, ItemRequest request) async {
    state = const AsyncValue.loading();

    try {
      final client = ref.read(prodobitClientProvider);
      final item = await client.inventory.updateItem(itemId, request);

      // Refresh related providers
      ref
        ..invalidate(itemsProvider)
        ..invalidate(itemProvider(itemId));

      state = const AsyncValue.data(null);
      return item;
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }
}

/// Items provider with pagination and search
@riverpod
class Items extends _$Items {
  @override
  Future<PaginatedResponse<Item>> build({
    QueryParams? query,
  }) async {
    final client = ref.read(prodobitClientProvider);
    return client.inventory.getItems(query: query);
  }

  /// Refresh items
  Future<void> refresh() async {
    ref.invalidateSelf();
  }

  /// Search items
  Future<void> search(String searchQuery) async {
    final newQuery =
        (query ?? const QueryParams()).copyWith(search: searchQuery);
    ref.invalidateSelf();
    state = await AsyncValue.guard(() => build(query: newQuery));
  }
}

/// Locations provider
@riverpod
class Locations extends _$Locations {
  @override
  Future<PaginatedResponse<Location>> build({
    QueryParams? query,
  }) async {
    final client = ref.read(prodobitClientProvider);
    return client.inventory.getLocations(query: query);
  }

  /// Refresh locations
  Future<void> refresh() async {
    ref.invalidateSelf();
  }
}
