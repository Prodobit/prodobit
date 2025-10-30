import 'package:freezed_annotation/freezed_annotation.dart';

part 'asset_models.freezed.dart';
part 'asset_models.g.dart';

/// Asset model
@freezed
class Asset with _$Asset {
  const factory Asset({
    required String id,
    required String tenantId,
    required String locationId,
    required String name,
    required String code,
    required String status, // 'active', 'inactive', 'maintenance', 'retired'
    required DateTime insertedAt,
    required DateTime updatedAt,
    String? parentAssetId,
    String? assetTypeId,
    String? serialNumber,
    String? qrCode,
    String? imageUrl,
    DateTime? deletedAt,
  }) = _Asset;

  factory Asset.fromJson(Map<String, dynamic> json) => _$AssetFromJson(json);
}

/// Asset creation request
@freezed
class CreateAssetRequest with _$CreateAssetRequest {
  const factory CreateAssetRequest({
    required String locationId,
    required String name,
    required String code,
    String? parentAssetId,
    String? assetTypeId,
    String? serialNumber,
    String? qrCode,
    String? imageUrl,
  }) = _CreateAssetRequest;

  factory CreateAssetRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateAssetRequestFromJson(json);
}

/// Asset update request
@freezed
class UpdateAssetRequest with _$UpdateAssetRequest {
  const factory UpdateAssetRequest({
    String? locationId,
    String? name,
    String? code,
    String? status,
    String? parentAssetId,
    String? assetTypeId,
    String? serialNumber,
    String? qrCode,
    String? imageUrl,
  }) = _UpdateAssetRequest;

  factory UpdateAssetRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateAssetRequestFromJson(json);
}
