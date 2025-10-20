// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactMechanismImpl _$$ContactMechanismImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ContactMechanismImpl',
      json,
      ($checkedConvert) {
        final val = _$ContactMechanismImpl(
          id: $checkedConvert('id', (v) => v as String),
          partyId: $checkedConvert('partyId', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          value: $checkedConvert('value', (v) => v as String),
          isPrimary: $checkedConvert('isPrimary', (v) => v as bool),
          isActive: $checkedConvert('isActive', (v) => v as bool),
          label: $checkedConvert('label', (v) => v as String?),
          extension: $checkedConvert('extension', (v) => v as String?),
          countryCode: $checkedConvert('countryCode', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          validFrom: $checkedConvert('validFrom',
              (v) => v == null ? null : DateTime.parse(v as String)),
          validTo: $checkedConvert(
              'validTo', (v) => v == null ? null : DateTime.parse(v as String)),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ContactMechanismImplToJson(
        _$ContactMechanismImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partyId': instance.partyId,
      'type': instance.type,
      'value': instance.value,
      'isPrimary': instance.isPrimary,
      'isActive': instance.isActive,
      'label': instance.label,
      'extension': instance.extension,
      'countryCode': instance.countryCode,
      'notes': instance.notes,
      'validFrom': instance.validFrom?.toIso8601String(),
      'validTo': instance.validTo?.toIso8601String(),
      'metadata': instance.metadata,
    };

_$PartyAddressImpl _$$PartyAddressImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PartyAddressImpl',
      json,
      ($checkedConvert) {
        final val = _$PartyAddressImpl(
          id: $checkedConvert('id', (v) => v as String),
          partyId: $checkedConvert('partyId', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          addressLine1: $checkedConvert('addressLine1', (v) => v as String),
          isPrimary: $checkedConvert('isPrimary', (v) => v as bool),
          isActive: $checkedConvert('isActive', (v) => v as bool),
          addressLine2: $checkedConvert('addressLine2', (v) => v as String?),
          addressLine3: $checkedConvert('addressLine3', (v) => v as String?),
          city: $checkedConvert('city', (v) => v as String?),
          state: $checkedConvert('state', (v) => v as String?),
          postalCode: $checkedConvert('postalCode', (v) => v as String?),
          country: $checkedConvert('country', (v) => v as String?),
          region: $checkedConvert('region', (v) => v as String?),
          label: $checkedConvert('label', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          latitude: $checkedConvert('latitude', (v) => (v as num?)?.toDouble()),
          longitude:
              $checkedConvert('longitude', (v) => (v as num?)?.toDouble()),
          validFrom: $checkedConvert('validFrom',
              (v) => v == null ? null : DateTime.parse(v as String)),
          validTo: $checkedConvert(
              'validTo', (v) => v == null ? null : DateTime.parse(v as String)),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PartyAddressImplToJson(_$PartyAddressImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partyId': instance.partyId,
      'type': instance.type,
      'addressLine1': instance.addressLine1,
      'isPrimary': instance.isPrimary,
      'isActive': instance.isActive,
      'addressLine2': instance.addressLine2,
      'addressLine3': instance.addressLine3,
      'city': instance.city,
      'state': instance.state,
      'postalCode': instance.postalCode,
      'country': instance.country,
      'region': instance.region,
      'label': instance.label,
      'notes': instance.notes,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'validFrom': instance.validFrom?.toIso8601String(),
      'validTo': instance.validTo?.toIso8601String(),
      'metadata': instance.metadata,
    };

_$CreateContactMechanismRequestImpl
    _$$CreateContactMechanismRequestImplFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$CreateContactMechanismRequestImpl',
          json,
          ($checkedConvert) {
            final val = _$CreateContactMechanismRequestImpl(
              type: $checkedConvert('type', (v) => v as String),
              value: $checkedConvert('value', (v) => v as String),
              isPrimary: $checkedConvert('isPrimary', (v) => v as bool?),
              label: $checkedConvert('label', (v) => v as String?),
              extension: $checkedConvert('extension', (v) => v as String?),
              countryCode: $checkedConvert('countryCode', (v) => v as String?),
              notes: $checkedConvert('notes', (v) => v as String?),
              validFrom: $checkedConvert('validFrom',
                  (v) => v == null ? null : DateTime.parse(v as String)),
              validTo: $checkedConvert('validTo',
                  (v) => v == null ? null : DateTime.parse(v as String)),
            );
            return val;
          },
        );

Map<String, dynamic> _$$CreateContactMechanismRequestImplToJson(
        _$CreateContactMechanismRequestImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
      'isPrimary': instance.isPrimary,
      'label': instance.label,
      'extension': instance.extension,
      'countryCode': instance.countryCode,
      'notes': instance.notes,
      'validFrom': instance.validFrom?.toIso8601String(),
      'validTo': instance.validTo?.toIso8601String(),
    };

_$UpdateContactMechanismRequestImpl
    _$$UpdateContactMechanismRequestImplFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$UpdateContactMechanismRequestImpl',
          json,
          ($checkedConvert) {
            final val = _$UpdateContactMechanismRequestImpl(
              value: $checkedConvert('value', (v) => v as String?),
              isPrimary: $checkedConvert('isPrimary', (v) => v as bool?),
              isActive: $checkedConvert('isActive', (v) => v as bool?),
              label: $checkedConvert('label', (v) => v as String?),
              extension: $checkedConvert('extension', (v) => v as String?),
              countryCode: $checkedConvert('countryCode', (v) => v as String?),
              notes: $checkedConvert('notes', (v) => v as String?),
              validFrom: $checkedConvert('validFrom',
                  (v) => v == null ? null : DateTime.parse(v as String)),
              validTo: $checkedConvert('validTo',
                  (v) => v == null ? null : DateTime.parse(v as String)),
            );
            return val;
          },
        );

Map<String, dynamic> _$$UpdateContactMechanismRequestImplToJson(
        _$UpdateContactMechanismRequestImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'isPrimary': instance.isPrimary,
      'isActive': instance.isActive,
      'label': instance.label,
      'extension': instance.extension,
      'countryCode': instance.countryCode,
      'notes': instance.notes,
      'validFrom': instance.validFrom?.toIso8601String(),
      'validTo': instance.validTo?.toIso8601String(),
    };

_$CreateAddressRequestImpl _$$CreateAddressRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CreateAddressRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$CreateAddressRequestImpl(
          type: $checkedConvert('type', (v) => v as String),
          addressLine1: $checkedConvert('addressLine1', (v) => v as String),
          addressLine2: $checkedConvert('addressLine2', (v) => v as String?),
          addressLine3: $checkedConvert('addressLine3', (v) => v as String?),
          city: $checkedConvert('city', (v) => v as String?),
          state: $checkedConvert('state', (v) => v as String?),
          postalCode: $checkedConvert('postalCode', (v) => v as String?),
          country: $checkedConvert('country', (v) => v as String?),
          region: $checkedConvert('region', (v) => v as String?),
          isPrimary: $checkedConvert('isPrimary', (v) => v as bool?),
          label: $checkedConvert('label', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          latitude: $checkedConvert('latitude', (v) => (v as num?)?.toDouble()),
          longitude:
              $checkedConvert('longitude', (v) => (v as num?)?.toDouble()),
          validFrom: $checkedConvert('validFrom',
              (v) => v == null ? null : DateTime.parse(v as String)),
          validTo: $checkedConvert(
              'validTo', (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CreateAddressRequestImplToJson(
        _$CreateAddressRequestImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'addressLine1': instance.addressLine1,
      'addressLine2': instance.addressLine2,
      'addressLine3': instance.addressLine3,
      'city': instance.city,
      'state': instance.state,
      'postalCode': instance.postalCode,
      'country': instance.country,
      'region': instance.region,
      'isPrimary': instance.isPrimary,
      'label': instance.label,
      'notes': instance.notes,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'validFrom': instance.validFrom?.toIso8601String(),
      'validTo': instance.validTo?.toIso8601String(),
    };

_$UpdateAddressRequestImpl _$$UpdateAddressRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$UpdateAddressRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$UpdateAddressRequestImpl(
          addressLine1: $checkedConvert('addressLine1', (v) => v as String?),
          addressLine2: $checkedConvert('addressLine2', (v) => v as String?),
          addressLine3: $checkedConvert('addressLine3', (v) => v as String?),
          city: $checkedConvert('city', (v) => v as String?),
          state: $checkedConvert('state', (v) => v as String?),
          postalCode: $checkedConvert('postalCode', (v) => v as String?),
          country: $checkedConvert('country', (v) => v as String?),
          region: $checkedConvert('region', (v) => v as String?),
          isPrimary: $checkedConvert('isPrimary', (v) => v as bool?),
          isActive: $checkedConvert('isActive', (v) => v as bool?),
          label: $checkedConvert('label', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          latitude: $checkedConvert('latitude', (v) => (v as num?)?.toDouble()),
          longitude:
              $checkedConvert('longitude', (v) => (v as num?)?.toDouble()),
          validFrom: $checkedConvert('validFrom',
              (v) => v == null ? null : DateTime.parse(v as String)),
          validTo: $checkedConvert(
              'validTo', (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$UpdateAddressRequestImplToJson(
        _$UpdateAddressRequestImpl instance) =>
    <String, dynamic>{
      'addressLine1': instance.addressLine1,
      'addressLine2': instance.addressLine2,
      'addressLine3': instance.addressLine3,
      'city': instance.city,
      'state': instance.state,
      'postalCode': instance.postalCode,
      'country': instance.country,
      'region': instance.region,
      'isPrimary': instance.isPrimary,
      'isActive': instance.isActive,
      'label': instance.label,
      'notes': instance.notes,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'validFrom': instance.validFrom?.toIso8601String(),
      'validTo': instance.validTo?.toIso8601String(),
    };
