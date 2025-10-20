// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_reservation_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockReservationImpl _$$StockReservationImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$StockReservationImpl',
      json,
      ($checkedConvert) {
        final val = _$StockReservationImpl(
          id: $checkedConvert('id', (v) => v as String),
          itemId: $checkedConvert('itemId', (v) => v as String),
          locationId: $checkedConvert('locationId', (v) => v as String),
          quantity: $checkedConvert('quantity', (v) => (v as num).toDouble()),
          reservedQuantity:
              $checkedConvert('reservedQuantity', (v) => (v as num).toDouble()),
          consumedQuantity:
              $checkedConvert('consumedQuantity', (v) => (v as num).toDouble()),
          status: $checkedConvert('status', (v) => v as String),
          purpose: $checkedConvert('purpose', (v) => v as String),
          createdAt:
              $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
          referenceId: $checkedConvert('referenceId', (v) => v as String?),
          referenceType: $checkedConvert('referenceType', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          expiresAt: $checkedConvert('expiresAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          releasedAt: $checkedConvert('releasedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          consumedAt: $checkedConvert('consumedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$StockReservationImplToJson(
        _$StockReservationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'itemId': instance.itemId,
      'locationId': instance.locationId,
      'quantity': instance.quantity,
      'reservedQuantity': instance.reservedQuantity,
      'consumedQuantity': instance.consumedQuantity,
      'status': instance.status,
      'purpose': instance.purpose,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'referenceId': instance.referenceId,
      'referenceType': instance.referenceType,
      'notes': instance.notes,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'releasedAt': instance.releasedAt?.toIso8601String(),
      'consumedAt': instance.consumedAt?.toIso8601String(),
      'metadata': instance.metadata,
    };

_$CreateStockReservationRequestImpl
    _$$CreateStockReservationRequestImplFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$CreateStockReservationRequestImpl',
          json,
          ($checkedConvert) {
            final val = _$CreateStockReservationRequestImpl(
              itemId: $checkedConvert('itemId', (v) => v as String),
              locationId: $checkedConvert('locationId', (v) => v as String),
              quantity:
                  $checkedConvert('quantity', (v) => (v as num).toDouble()),
              purpose: $checkedConvert('purpose', (v) => v as String),
              referenceId: $checkedConvert('referenceId', (v) => v as String?),
              referenceType:
                  $checkedConvert('referenceType', (v) => v as String?),
              notes: $checkedConvert('notes', (v) => v as String?),
              expiresAt: $checkedConvert('expiresAt',
                  (v) => v == null ? null : DateTime.parse(v as String)),
              metadata: $checkedConvert(
                  'metadata', (v) => v as Map<String, dynamic>?),
            );
            return val;
          },
        );

Map<String, dynamic> _$$CreateStockReservationRequestImplToJson(
        _$CreateStockReservationRequestImpl instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'locationId': instance.locationId,
      'quantity': instance.quantity,
      'purpose': instance.purpose,
      'referenceId': instance.referenceId,
      'referenceType': instance.referenceType,
      'notes': instance.notes,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'metadata': instance.metadata,
    };

_$UpdateStockReservationRequestImpl
    _$$UpdateStockReservationRequestImplFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$UpdateStockReservationRequestImpl',
          json,
          ($checkedConvert) {
            final val = _$UpdateStockReservationRequestImpl(
              quantity:
                  $checkedConvert('quantity', (v) => (v as num?)?.toDouble()),
              notes: $checkedConvert('notes', (v) => v as String?),
              expiresAt: $checkedConvert('expiresAt',
                  (v) => v == null ? null : DateTime.parse(v as String)),
              metadata: $checkedConvert(
                  'metadata', (v) => v as Map<String, dynamic>?),
            );
            return val;
          },
        );

Map<String, dynamic> _$$UpdateStockReservationRequestImplToJson(
        _$UpdateStockReservationRequestImpl instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'notes': instance.notes,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'metadata': instance.metadata,
    };

_$StockReservationFiltersImpl _$$StockReservationFiltersImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$StockReservationFiltersImpl',
      json,
      ($checkedConvert) {
        final val = _$StockReservationFiltersImpl(
          itemId: $checkedConvert('itemId', (v) => v as String?),
          locationId: $checkedConvert('locationId', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
          purpose: $checkedConvert('purpose', (v) => v as String?),
          referenceId: $checkedConvert('referenceId', (v) => v as String?),
          referenceType: $checkedConvert('referenceType', (v) => v as String?),
          createdAfter: $checkedConvert('createdAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          createdBefore: $checkedConvert('createdBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          expiresAfter: $checkedConvert('expiresAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          expiresBefore: $checkedConvert('expiresBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          page: $checkedConvert('page', (v) => (v as num?)?.toInt()),
          limit: $checkedConvert('limit', (v) => (v as num?)?.toInt()),
          sortBy: $checkedConvert('sortBy', (v) => v as String?),
          sortOrder: $checkedConvert('sortOrder', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$StockReservationFiltersImplToJson(
        _$StockReservationFiltersImpl instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'locationId': instance.locationId,
      'status': instance.status,
      'purpose': instance.purpose,
      'referenceId': instance.referenceId,
      'referenceType': instance.referenceType,
      'createdAfter': instance.createdAfter?.toIso8601String(),
      'createdBefore': instance.createdBefore?.toIso8601String(),
      'expiresAfter': instance.expiresAfter?.toIso8601String(),
      'expiresBefore': instance.expiresBefore?.toIso8601String(),
      'page': instance.page,
      'limit': instance.limit,
      'sortBy': instance.sortBy,
      'sortOrder': instance.sortOrder,
    };

_$ConsumeStockReservationRequestImpl
    _$$ConsumeStockReservationRequestImplFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$ConsumeStockReservationRequestImpl',
          json,
          ($checkedConvert) {
            final val = _$ConsumeStockReservationRequestImpl(
              quantity:
                  $checkedConvert('quantity', (v) => (v as num).toDouble()),
              notes: $checkedConvert('notes', (v) => v as String?),
            );
            return val;
          },
        );

Map<String, dynamic> _$$ConsumeStockReservationRequestImplToJson(
        _$ConsumeStockReservationRequestImpl instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'notes': instance.notes,
    };
