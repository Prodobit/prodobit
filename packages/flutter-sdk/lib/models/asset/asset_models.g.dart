// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AssetImpl _$$AssetImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$AssetImpl',
      json,
      ($checkedConvert) {
        final val = _$AssetImpl(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          code: $checkedConvert('code', (v) => v as String),
          category: $checkedConvert('category', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          createdAt:
              $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
          description: $checkedConvert('description', (v) => v as String?),
          location: $checkedConvert('location', (v) => v as String?),
          serialNumber: $checkedConvert('serialNumber', (v) => v as String?),
          purchasePrice: $checkedConvert(
              'purchasePrice',
              (v) =>
                  v == null ? null : Money.fromJson(v as Map<String, dynamic>)),
          purchaseDate: $checkedConvert('purchaseDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          warrantyExpiry: $checkedConvert('warrantyExpiry',
              (v) => v == null ? null : DateTime.parse(v as String)),
          supplierId: $checkedConvert('supplierId', (v) => v as String?),
          supplierName: $checkedConvert('supplierName', (v) => v as String?),
          organizationId:
              $checkedConvert('organizationId', (v) => v as String?),
          isActive: $checkedConvert('isActive', (v) => v as bool?),
          updatedAt: $checkedConvert('updatedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$AssetImplToJson(_$AssetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'category': instance.category,
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
      'description': instance.description,
      'location': instance.location,
      'serialNumber': instance.serialNumber,
      'purchasePrice': instance.purchasePrice?.toJson(),
      'purchaseDate': instance.purchaseDate?.toIso8601String(),
      'warrantyExpiry': instance.warrantyExpiry?.toIso8601String(),
      'supplierId': instance.supplierId,
      'supplierName': instance.supplierName,
      'organizationId': instance.organizationId,
      'isActive': instance.isActive,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'metadata': instance.metadata,
    };

_$CreateAssetRequestImpl _$$CreateAssetRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CreateAssetRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$CreateAssetRequestImpl(
          name: $checkedConvert('name', (v) => v as String),
          code: $checkedConvert('code', (v) => v as String),
          category: $checkedConvert('category', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          location: $checkedConvert('location', (v) => v as String?),
          serialNumber: $checkedConvert('serialNumber', (v) => v as String?),
          purchasePrice: $checkedConvert(
              'purchasePrice',
              (v) =>
                  v == null ? null : Money.fromJson(v as Map<String, dynamic>)),
          purchaseDate: $checkedConvert('purchaseDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          warrantyExpiry: $checkedConvert('warrantyExpiry',
              (v) => v == null ? null : DateTime.parse(v as String)),
          supplierId: $checkedConvert('supplierId', (v) => v as String?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CreateAssetRequestImplToJson(
        _$CreateAssetRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'category': instance.category,
      'description': instance.description,
      'location': instance.location,
      'serialNumber': instance.serialNumber,
      'purchasePrice': instance.purchasePrice?.toJson(),
      'purchaseDate': instance.purchaseDate?.toIso8601String(),
      'warrantyExpiry': instance.warrantyExpiry?.toIso8601String(),
      'supplierId': instance.supplierId,
      'metadata': instance.metadata,
    };
