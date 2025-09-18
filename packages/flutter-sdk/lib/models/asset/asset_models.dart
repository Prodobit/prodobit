import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prodobit_flutter_sdk/models/common/common_models.dart';

part 'asset_models.freezed.dart';
part 'asset_models.g.dart';

/// Asset model
@freezed
class Asset with _$Asset {
  const factory Asset({
    required String id,
    required String name,
    required String code,
    required String category,
    required String status,
    required DateTime createdAt,
    String? description,
    String? location,
    String? serialNumber,
    Money? purchasePrice,
    DateTime? purchaseDate,
    DateTime? warrantyExpiry,
    String? supplierId,
    String? supplierName,
    String? organizationId,
    bool? isActive,
    DateTime? updatedAt,
    Map<String, dynamic>? metadata,
  }) = _Asset;

  factory Asset.fromJson(Map<String, dynamic> json) => _$AssetFromJson(json);
}

/// Asset creation request
@freezed
class CreateAssetRequest with _$CreateAssetRequest {
  const factory CreateAssetRequest({
    required String name,
    required String code,
    required String category,
    String? description,
    String? location,
    String? serialNumber,
    Money? purchasePrice,
    DateTime? purchaseDate,
    DateTime? warrantyExpiry,
    String? supplierId,
    Map<String, dynamic>? metadata,
  }) = _CreateAssetRequest;

  factory CreateAssetRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateAssetRequestFromJson(json);
}
