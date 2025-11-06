// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Asset _$AssetFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_Asset',
      json,
      ($checkedConvert) {
        final val = _Asset(
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

Map<String, dynamic> _$AssetToJson(_Asset instance) => <String, dynamic>{
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

_CreateAssetRequest _$CreateAssetRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_CreateAssetRequest',
      json,
      ($checkedConvert) {
        final val = _CreateAssetRequest(
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

Map<String, dynamic> _$CreateAssetRequestToJson(_CreateAssetRequest instance) =>
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

_UpdateAssetRequest _$UpdateAssetRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_UpdateAssetRequest',
      json,
      ($checkedConvert) {
        final val = _UpdateAssetRequest(
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

Map<String, dynamic> _$UpdateAssetRequestToJson(_UpdateAssetRequest instance) =>
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
