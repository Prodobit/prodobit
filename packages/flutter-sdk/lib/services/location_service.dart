import 'package:prodobit_flutter_sdk/core/api_client.dart';
import 'package:prodobit_flutter_sdk/models/models.dart';

/// Service for location management operations
class LocationService {
  const LocationService(this._apiClient);

  final ApiClient _apiClient;

  /// Get all locations
  Future<List<Location>> getLocations({
    QueryParams? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/locations',
      queryParameters: query?.toQueryMap(),
    );

    final data = response['data'] as List<dynamic>;
    return data.map((json) => Location.fromJson(json as Map<String, dynamic>)).toList();
  }

  /// Get location by ID
  Future<Location> getLocation(String locationId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/locations/$locationId',
    );

    final data = response['data'] as Map<String, dynamic>;
    return Location.fromJson(data);
  }

  /// Create new location
  Future<Location> createLocation({
    required String name,
    required String code,
    String? description,
    String? type,
    String? parentId,
    Address? address,
    ContactInfo? contactInfo,
    Map<String, dynamic>? metadata,
  }) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/locations',
      data: {
        'name': name,
        'code': code,
        if (description != null) 'description': description,
        if (type != null) 'type': type,
        if (parentId != null) 'parentId': parentId,
        if (address != null) 'address': address.toJson(),
        if (contactInfo != null) 'contactInfo': contactInfo.toJson(),
        if (metadata != null) 'metadata': metadata,
      },
    );

    final data = response['data'] as Map<String, dynamic>;
    return Location.fromJson(data);
  }

  /// Update location
  Future<Location> updateLocation(
    String locationId, {
    String? name,
    String? code,
    String? description,
    String? type,
    String? status,
    String? parentId,
    Address? address,
    ContactInfo? contactInfo,
    Map<String, dynamic>? metadata,
  }) async {
    final data = <String, dynamic>{};
    if (name != null) data['name'] = name;
    if (code != null) data['code'] = code;
    if (description != null) data['description'] = description;
    if (type != null) data['type'] = type;
    if (status != null) data['status'] = status;
    if (parentId != null) data['parentId'] = parentId;
    if (address != null) data['address'] = address.toJson();
    if (contactInfo != null) data['contactInfo'] = contactInfo.toJson();
    if (metadata != null) data['metadata'] = metadata;

    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/locations/$locationId',
      data: data,
    );

    final responseData = response['data'] as Map<String, dynamic>;
    return Location.fromJson(responseData);
  }

  /// Delete location
  Future<void> deleteLocation(String locationId) async {
    await _apiClient.delete('/api/v1/locations/$locationId');
  }
}
