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
          tenantId: $checkedConvert('tenantId', (v) => v as String),
          locationId: $checkedConvert('locationId', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          code: $checkedConvert('code', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          insertedAt:
              $checkedConvert('insertedAt', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
          parentAssetId: $checkedConvert('parentAssetId', (v) => v as String?),
          assetTypeId: $checkedConvert('assetTypeId', (v) => v as String?),
          serialNumber: $checkedConvert('serialNumber', (v) => v as String?),
          qrCode: $checkedConvert('qrCode', (v) => v as String?),
          imageUrl: $checkedConvert('imageUrl', (v) => v as String?),
          deletedAt: $checkedConvert('deletedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$AssetImplToJson(_$AssetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tenantId': instance.tenantId,
      'locationId': instance.locationId,
      'name': instance.name,
      'code': instance.code,
      'status': instance.status,
      'insertedAt': instance.insertedAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'parentAssetId': instance.parentAssetId,
      'assetTypeId': instance.assetTypeId,
      'serialNumber': instance.serialNumber,
      'qrCode': instance.qrCode,
      'imageUrl': instance.imageUrl,
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };

_$CreateAssetRequestImpl _$$CreateAssetRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CreateAssetRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$CreateAssetRequestImpl(
          locationId: $checkedConvert('locationId', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          code: $checkedConvert('code', (v) => v as String),
          parentAssetId: $checkedConvert('parentAssetId', (v) => v as String?),
          assetTypeId: $checkedConvert('assetTypeId', (v) => v as String?),
          serialNumber: $checkedConvert('serialNumber', (v) => v as String?),
          qrCode: $checkedConvert('qrCode', (v) => v as String?),
          imageUrl: $checkedConvert('imageUrl', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CreateAssetRequestImplToJson(
        _$CreateAssetRequestImpl instance) =>
    <String, dynamic>{
      'locationId': instance.locationId,
      'name': instance.name,
      'code': instance.code,
      'parentAssetId': instance.parentAssetId,
      'assetTypeId': instance.assetTypeId,
      'serialNumber': instance.serialNumber,
      'qrCode': instance.qrCode,
      'imageUrl': instance.imageUrl,
    };

_$UpdateAssetRequestImpl _$$UpdateAssetRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$UpdateAssetRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$UpdateAssetRequestImpl(
          locationId: $checkedConvert('locationId', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          code: $checkedConvert('code', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
          parentAssetId: $checkedConvert('parentAssetId', (v) => v as String?),
          assetTypeId: $checkedConvert('assetTypeId', (v) => v as String?),
          serialNumber: $checkedConvert('serialNumber', (v) => v as String?),
          qrCode: $checkedConvert('qrCode', (v) => v as String?),
          imageUrl: $checkedConvert('imageUrl', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$UpdateAssetRequestImplToJson(
        _$UpdateAssetRequestImpl instance) =>
    <String, dynamic>{
      'locationId': instance.locationId,
      'name': instance.name,
      'code': instance.code,
      'status': instance.status,
      'parentAssetId': instance.parentAssetId,
      'assetTypeId': instance.assetTypeId,
      'serialNumber': instance.serialNumber,
      'qrCode': instance.qrCode,
      'imageUrl': instance.imageUrl,
    };
