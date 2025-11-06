// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Address _$AddressFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_Address',
      json,
      ($checkedConvert) {
        final val = _Address(
          street: $checkedConvert('street', (v) => v as String?),
          city: $checkedConvert('city', (v) => v as String?),
          state: $checkedConvert('state', (v) => v as String?),
          country: $checkedConvert('country', (v) => v as String?),
          zipCode: $checkedConvert('zipCode', (v) => v as String?),
          latitude: $checkedConvert('latitude', (v) => (v as num?)?.toDouble()),
          longitude:
              $checkedConvert('longitude', (v) => (v as num?)?.toDouble()),
        );
        return val;
      },
    );

Map<String, dynamic> _$AddressToJson(_Address instance) => <String, dynamic>{
      'street': instance.street,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'zipCode': instance.zipCode,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_ApiResponse<T> _$ApiResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    $checkedCreate(
      '_ApiResponse',
      json,
      ($checkedConvert) {
        final val = _ApiResponse<T>(
          success: $checkedConvert('success', (v) => v as bool),
          data: $checkedConvert(
              'data', (v) => _$nullableGenericFromJson(v, fromJsonT)),
          message: $checkedConvert('message', (v) => v as String?),
          error: $checkedConvert('error', (v) => v as String?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
          errorCode: $checkedConvert('errorCode', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$ApiResponseToJson<T>(
  _ApiResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'success': instance.success,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'message': instance.message,
      'error': instance.error,
      'metadata': instance.metadata,
      'errorCode': instance.errorCode,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);

_AuditInfo _$AuditInfoFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_AuditInfo',
      json,
      ($checkedConvert) {
        final val = _AuditInfo(
          createdAt:
              $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
          createdBy: $checkedConvert('createdBy', (v) => v as String),
          updatedAt: $checkedConvert('updatedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          updatedBy: $checkedConvert('updatedBy', (v) => v as String?),
          version: $checkedConvert('version', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$AuditInfoToJson(_AuditInfo instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt.toIso8601String(),
      'createdBy': instance.createdBy,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'updatedBy': instance.updatedBy,
      'version': instance.version,
    };

_ContactInfo _$ContactInfoFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_ContactInfo',
      json,
      ($checkedConvert) {
        final val = _ContactInfo(
          email: $checkedConvert('email', (v) => v as String?),
          phone: $checkedConvert('phone', (v) => v as String?),
          mobile: $checkedConvert('mobile', (v) => v as String?),
          fax: $checkedConvert('fax', (v) => v as String?),
          website: $checkedConvert('website', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$ContactInfoToJson(_ContactInfo instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phone': instance.phone,
      'mobile': instance.mobile,
      'fax': instance.fax,
      'website': instance.website,
    };

_FileUploadResponse _$FileUploadResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_FileUploadResponse',
      json,
      ($checkedConvert) {
        final val = _FileUploadResponse(
          id: $checkedConvert('id', (v) => v as String),
          filename: $checkedConvert('filename', (v) => v as String),
          originalName: $checkedConvert('originalName', (v) => v as String),
          mimeType: $checkedConvert('mimeType', (v) => v as String),
          size: $checkedConvert('size', (v) => (v as num).toInt()),
          url: $checkedConvert('url', (v) => v as String),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$FileUploadResponseToJson(_FileUploadResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'filename': instance.filename,
      'originalName': instance.originalName,
      'mimeType': instance.mimeType,
      'size': instance.size,
      'url': instance.url,
      'metadata': instance.metadata,
    };

_Money _$MoneyFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_Money',
      json,
      ($checkedConvert) {
        final val = _Money(
          amount: $checkedConvert('amount', (v) => (v as num).toDouble()),
          currency: $checkedConvert('currency', (v) => v as String? ?? 'USD'),
        );
        return val;
      },
    );

Map<String, dynamic> _$MoneyToJson(_Money instance) => <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
    };

_PaginatedResponse<T> _$PaginatedResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    $checkedCreate(
      '_PaginatedResponse',
      json,
      ($checkedConvert) {
        final val = _PaginatedResponse<T>(
          data: $checkedConvert(
              'data', (v) => (v as List<dynamic>).map(fromJsonT).toList()),
          pagination: $checkedConvert('pagination',
              (v) => PaginationMeta.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$PaginatedResponseToJson<T>(
  _PaginatedResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': instance.data.map(toJsonT).toList(),
      'pagination': instance.pagination.toJson(),
    };

_PaginationMeta _$PaginationMetaFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_PaginationMeta',
      json,
      ($checkedConvert) {
        final val = _PaginationMeta(
          total: $checkedConvert('total', (v) => (v as num).toInt()),
          page: $checkedConvert('page', (v) => (v as num).toInt()),
          perPage: $checkedConvert('perPage', (v) => (v as num).toInt()),
          totalPages: $checkedConvert('totalPages', (v) => (v as num).toInt()),
          hasNext: $checkedConvert('hasNext', (v) => v as bool),
          hasPrev: $checkedConvert('hasPrev', (v) => v as bool),
        );
        return val;
      },
    );

Map<String, dynamic> _$PaginationMetaToJson(_PaginationMeta instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'perPage': instance.perPage,
      'totalPages': instance.totalPages,
      'hasNext': instance.hasNext,
      'hasPrev': instance.hasPrev,
    };

_QueryParams _$QueryParamsFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_QueryParams',
      json,
      ($checkedConvert) {
        final val = _QueryParams(
          page: $checkedConvert('page', (v) => (v as num?)?.toInt() ?? 1),
          limit: $checkedConvert('limit', (v) => (v as num?)?.toInt() ?? 20),
          search: $checkedConvert('search', (v) => v as String?),
          sortBy: $checkedConvert('sortBy', (v) => v as String?),
          sortOrder: $checkedConvert('sortOrder', (v) => v as String? ?? 'asc'),
          filters: $checkedConvert(
              'filters',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
        );
        return val;
      },
    );

Map<String, dynamic> _$QueryParamsToJson(_QueryParams instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'search': instance.search,
      'sortBy': instance.sortBy,
      'sortOrder': instance.sortOrder,
      'filters': instance.filters,
    };
