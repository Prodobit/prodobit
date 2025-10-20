// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'party_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatePartyRequestImpl _$$CreatePartyRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CreatePartyRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$CreatePartyRequestImpl(
          name: $checkedConvert('name', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          code: $checkedConvert('code', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
          phone: $checkedConvert('phone', (v) => v as String?),
          taxId: $checkedConvert('taxId', (v) => v as String?),
          address: $checkedConvert(
              'address',
              (v) => v == null
                  ? null
                  : Address.fromJson(v as Map<String, dynamic>)),
          contactInfo: $checkedConvert(
              'contactInfo',
              (v) => v == null
                  ? null
                  : ContactInfo.fromJson(v as Map<String, dynamic>)),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CreatePartyRequestImplToJson(
        _$CreatePartyRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'code': instance.code,
      'email': instance.email,
      'phone': instance.phone,
      'taxId': instance.taxId,
      'address': instance.address?.toJson(),
      'contactInfo': instance.contactInfo?.toJson(),
      'metadata': instance.metadata,
    };

_$PartyImpl _$$PartyImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$PartyImpl',
      json,
      ($checkedConvert) {
        final val = _$PartyImpl(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          createdAt:
              $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
          code: $checkedConvert('code', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
          phone: $checkedConvert('phone', (v) => v as String?),
          taxId: $checkedConvert('taxId', (v) => v as String?),
          address: $checkedConvert(
              'address',
              (v) => v == null
                  ? null
                  : Address.fromJson(v as Map<String, dynamic>)),
          contactInfo: $checkedConvert(
              'contactInfo',
              (v) => v == null
                  ? null
                  : ContactInfo.fromJson(v as Map<String, dynamic>)),
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

Map<String, dynamic> _$$PartyImplToJson(_$PartyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'createdAt': instance.createdAt.toIso8601String(),
      'code': instance.code,
      'email': instance.email,
      'phone': instance.phone,
      'taxId': instance.taxId,
      'address': instance.address?.toJson(),
      'contactInfo': instance.contactInfo?.toJson(),
      'organizationId': instance.organizationId,
      'isActive': instance.isActive,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'metadata': instance.metadata,
    };

_$UpdatePartyRequestImpl _$$UpdatePartyRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$UpdatePartyRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$UpdatePartyRequestImpl(
          name: $checkedConvert('name', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          isActive: $checkedConvert('isActive', (v) => v as bool?),
          attributes:
              $checkedConvert('attributes', (v) => v as Map<String, dynamic>?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$UpdatePartyRequestImplToJson(
        _$UpdatePartyRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'isActive': instance.isActive,
      'attributes': instance.attributes,
      'metadata': instance.metadata,
    };
