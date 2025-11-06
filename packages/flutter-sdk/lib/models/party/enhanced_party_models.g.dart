// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enhanced_party_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreatePersonRequest _$CreatePersonRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_CreatePersonRequest',
      json,
      ($checkedConvert) {
        final val = _CreatePersonRequest(
          firstName: $checkedConvert('firstName', (v) => v as String),
          lastName: $checkedConvert('lastName', (v) => v as String),
          middleName: $checkedConvert('middleName', (v) => v as String?),
          salutation: $checkedConvert('salutation', (v) => v as String?),
          suffix: $checkedConvert('suffix', (v) => v as String?),
          nickname: $checkedConvert('nickname', (v) => v as String?),
          birthDate: $checkedConvert('birthDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          gender: $checkedConvert('gender', (v) => v as String?),
          maritalStatus: $checkedConvert('maritalStatus', (v) => v as String?),
          occupation: $checkedConvert('occupation', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          roles: $checkedConvert('roles',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          attributes:
              $checkedConvert('attributes', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$CreatePersonRequestToJson(
        _CreatePersonRequest instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'middleName': instance.middleName,
      'salutation': instance.salutation,
      'suffix': instance.suffix,
      'nickname': instance.nickname,
      'birthDate': instance.birthDate?.toIso8601String(),
      'gender': instance.gender,
      'maritalStatus': instance.maritalStatus,
      'occupation': instance.occupation,
      'notes': instance.notes,
      'roles': instance.roles,
      'attributes': instance.attributes,
    };

_CreateOrganizationRequest _$CreateOrganizationRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_CreateOrganizationRequest',
      json,
      ($checkedConvert) {
        final val = _CreateOrganizationRequest(
          name: $checkedConvert('name', (v) => v as String),
          legalName: $checkedConvert('legalName', (v) => v as String?),
          shortName: $checkedConvert('shortName', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          taxId: $checkedConvert('taxId', (v) => v as String?),
          registrationNumber:
              $checkedConvert('registrationNumber', (v) => v as String?),
          industry: $checkedConvert('industry', (v) => v as String?),
          website: $checkedConvert('website', (v) => v as String?),
          establishedDate: $checkedConvert('establishedDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          notes: $checkedConvert('notes', (v) => v as String?),
          roles: $checkedConvert('roles',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          attributes:
              $checkedConvert('attributes', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$CreateOrganizationRequestToJson(
        _CreateOrganizationRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'legalName': instance.legalName,
      'shortName': instance.shortName,
      'description': instance.description,
      'taxId': instance.taxId,
      'registrationNumber': instance.registrationNumber,
      'industry': instance.industry,
      'website': instance.website,
      'establishedDate': instance.establishedDate?.toIso8601String(),
      'notes': instance.notes,
      'roles': instance.roles,
      'attributes': instance.attributes,
    };

_CreatePersonWithRolesRequest _$CreatePersonWithRolesRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_CreatePersonWithRolesRequest',
      json,
      ($checkedConvert) {
        final val = _CreatePersonWithRolesRequest(
          firstName: $checkedConvert('firstName', (v) => v as String),
          lastName: $checkedConvert('lastName', (v) => v as String),
          roles: $checkedConvert('roles',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          middleName: $checkedConvert('middleName', (v) => v as String?),
          salutation: $checkedConvert('salutation', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          attributes:
              $checkedConvert('attributes', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$CreatePersonWithRolesRequestToJson(
        _CreatePersonWithRolesRequest instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'roles': instance.roles,
      'middleName': instance.middleName,
      'salutation': instance.salutation,
      'notes': instance.notes,
      'attributes': instance.attributes,
    };

_CreatePersonCustomerRequest _$CreatePersonCustomerRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_CreatePersonCustomerRequest',
      json,
      ($checkedConvert) {
        final val = _CreatePersonCustomerRequest(
          firstName: $checkedConvert('firstName', (v) => v as String),
          lastName: $checkedConvert('lastName', (v) => v as String),
          middleName: $checkedConvert('middleName', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
          phone: $checkedConvert('phone', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          attributes:
              $checkedConvert('attributes', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$CreatePersonCustomerRequestToJson(
        _CreatePersonCustomerRequest instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'middleName': instance.middleName,
      'email': instance.email,
      'phone': instance.phone,
      'notes': instance.notes,
      'attributes': instance.attributes,
    };

_CreatePersonSupplierRequest _$CreatePersonSupplierRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_CreatePersonSupplierRequest',
      json,
      ($checkedConvert) {
        final val = _CreatePersonSupplierRequest(
          firstName: $checkedConvert('firstName', (v) => v as String),
          lastName: $checkedConvert('lastName', (v) => v as String),
          middleName: $checkedConvert('middleName', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
          phone: $checkedConvert('phone', (v) => v as String?),
          businessName: $checkedConvert('businessName', (v) => v as String?),
          taxId: $checkedConvert('taxId', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          attributes:
              $checkedConvert('attributes', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$CreatePersonSupplierRequestToJson(
        _CreatePersonSupplierRequest instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'middleName': instance.middleName,
      'email': instance.email,
      'phone': instance.phone,
      'businessName': instance.businessName,
      'taxId': instance.taxId,
      'notes': instance.notes,
      'attributes': instance.attributes,
    };

_CreateOrganizationCustomerRequest _$CreateOrganizationCustomerRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_CreateOrganizationCustomerRequest',
      json,
      ($checkedConvert) {
        final val = _CreateOrganizationCustomerRequest(
          name: $checkedConvert('name', (v) => v as String),
          legalName: $checkedConvert('legalName', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
          phone: $checkedConvert('phone', (v) => v as String?),
          website: $checkedConvert('website', (v) => v as String?),
          taxId: $checkedConvert('taxId', (v) => v as String?),
          registrationNumber:
              $checkedConvert('registrationNumber', (v) => v as String?),
          industry: $checkedConvert('industry', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          attributes:
              $checkedConvert('attributes', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$CreateOrganizationCustomerRequestToJson(
        _CreateOrganizationCustomerRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'legalName': instance.legalName,
      'email': instance.email,
      'phone': instance.phone,
      'website': instance.website,
      'taxId': instance.taxId,
      'registrationNumber': instance.registrationNumber,
      'industry': instance.industry,
      'notes': instance.notes,
      'attributes': instance.attributes,
    };

_CreateOrganizationSupplierRequest _$CreateOrganizationSupplierRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_CreateOrganizationSupplierRequest',
      json,
      ($checkedConvert) {
        final val = _CreateOrganizationSupplierRequest(
          name: $checkedConvert('name', (v) => v as String),
          legalName: $checkedConvert('legalName', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
          phone: $checkedConvert('phone', (v) => v as String?),
          website: $checkedConvert('website', (v) => v as String?),
          taxId: $checkedConvert('taxId', (v) => v as String?),
          registrationNumber:
              $checkedConvert('registrationNumber', (v) => v as String?),
          industry: $checkedConvert('industry', (v) => v as String?),
          paymentTerms: $checkedConvert('paymentTerms', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          attributes:
              $checkedConvert('attributes', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$CreateOrganizationSupplierRequestToJson(
        _CreateOrganizationSupplierRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'legalName': instance.legalName,
      'email': instance.email,
      'phone': instance.phone,
      'website': instance.website,
      'taxId': instance.taxId,
      'registrationNumber': instance.registrationNumber,
      'industry': instance.industry,
      'paymentTerms': instance.paymentTerms,
      'notes': instance.notes,
      'attributes': instance.attributes,
    };

_PartySearchFilters _$PartySearchFiltersFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_PartySearchFilters',
      json,
      ($checkedConvert) {
        final val = _PartySearchFilters(
          name: $checkedConvert('name', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
          phone: $checkedConvert('phone', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String?),
          roles: $checkedConvert('roles',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          status: $checkedConvert('status', (v) => v as String?),
          city: $checkedConvert('city', (v) => v as String?),
          state: $checkedConvert('state', (v) => v as String?),
          country: $checkedConvert('country', (v) => v as String?),
          createdAfter: $checkedConvert('createdAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          createdBefore: $checkedConvert('createdBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          page: $checkedConvert('page', (v) => (v as num?)?.toInt()),
          limit: $checkedConvert('limit', (v) => (v as num?)?.toInt()),
          sortBy: $checkedConvert('sortBy', (v) => v as String?),
          sortOrder: $checkedConvert('sortOrder', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$PartySearchFiltersToJson(_PartySearchFilters instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'type': instance.type,
      'roles': instance.roles,
      'status': instance.status,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'createdAfter': instance.createdAfter?.toIso8601String(),
      'createdBefore': instance.createdBefore?.toIso8601String(),
      'page': instance.page,
      'limit': instance.limit,
      'sortBy': instance.sortBy,
      'sortOrder': instance.sortOrder,
    };
