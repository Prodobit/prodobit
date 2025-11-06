// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContactMechanism _$ContactMechanismFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_ContactMechanism',
      json,
      ($checkedConvert) {
        final val = _ContactMechanism(
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

Map<String, dynamic> _$ContactMechanismToJson(_ContactMechanism instance) =>
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

_PartyAddress _$PartyAddressFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_PartyAddress',
      json,
      ($checkedConvert) {
        final val = _PartyAddress(
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

Map<String, dynamic> _$PartyAddressToJson(_PartyAddress instance) =>
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

_CreateContactMechanismRequest _$CreateContactMechanismRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_CreateContactMechanismRequest',
      json,
      ($checkedConvert) {
        final val = _CreateContactMechanismRequest(
          type: $checkedConvert('type', (v) => v as String),
          value: $checkedConvert('value', (v) => v as String),
          isPrimary: $checkedConvert('isPrimary', (v) => v as bool?),
          label: $checkedConvert('label', (v) => v as String?),
          extension: $checkedConvert('extension', (v) => v as String?),
          countryCode: $checkedConvert('countryCode', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          validFrom: $checkedConvert('validFrom',
              (v) => v == null ? null : DateTime.parse(v as String)),
          validTo: $checkedConvert(
              'validTo', (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$CreateContactMechanismRequestToJson(
        _CreateContactMechanismRequest instance) =>
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

_UpdateContactMechanismRequest _$UpdateContactMechanismRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_UpdateContactMechanismRequest',
      json,
      ($checkedConvert) {
        final val = _UpdateContactMechanismRequest(
          value: $checkedConvert('value', (v) => v as String?),
          isPrimary: $checkedConvert('isPrimary', (v) => v as bool?),
          isActive: $checkedConvert('isActive', (v) => v as bool?),
          label: $checkedConvert('label', (v) => v as String?),
          extension: $checkedConvert('extension', (v) => v as String?),
          countryCode: $checkedConvert('countryCode', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          validFrom: $checkedConvert('validFrom',
              (v) => v == null ? null : DateTime.parse(v as String)),
          validTo: $checkedConvert(
              'validTo', (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$UpdateContactMechanismRequestToJson(
        _UpdateContactMechanismRequest instance) =>
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

_CreateAddressRequest _$CreateAddressRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_CreateAddressRequest',
      json,
      ($checkedConvert) {
        final val = _CreateAddressRequest(
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

Map<String, dynamic> _$CreateAddressRequestToJson(
        _CreateAddressRequest instance) =>
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

_UpdateAddressRequest _$UpdateAddressRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_UpdateAddressRequest',
      json,
      ($checkedConvert) {
        final val = _UpdateAddressRequest(
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

Map<String, dynamic> _$UpdateAddressRequestToJson(
        _UpdateAddressRequest instance) =>
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
