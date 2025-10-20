// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lot_management_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LotGenealogy _$LotGenealogyFromJson(Map<String, dynamic> json) {
  return _LotGenealogy.fromJson(json);
}

/// @nodoc
mixin _$LotGenealogy {
  String get id => throw _privateConstructorUsedError;
  String get lotNumber => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  String get locationId => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // 'active', 'consumed', 'quarantined', 'expired', 'recalled'
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime? get expiryDate => throw _privateConstructorUsedError;
  DateTime? get quarantinedAt => throw _privateConstructorUsedError;
  DateTime? get releasedAt => throw _privateConstructorUsedError;
  String? get parentLotId => throw _privateConstructorUsedError;
  String? get supplierLotNumber => throw _privateConstructorUsedError;
  String? get supplierName => throw _privateConstructorUsedError;
  String? get receiptNumber => throw _privateConstructorUsedError;
  String? get quarantineReason => throw _privateConstructorUsedError;
  String? get releaseReason => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  Map<String, dynamic>? get attributes => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LotGenealogyCopyWith<LotGenealogy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotGenealogyCopyWith<$Res> {
  factory $LotGenealogyCopyWith(
          LotGenealogy value, $Res Function(LotGenealogy) then) =
      _$LotGenealogyCopyWithImpl<$Res, LotGenealogy>;
  @useResult
  $Res call(
      {String id,
      String lotNumber,
      String itemId,
      String locationId,
      double quantity,
      String status,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? expiryDate,
      DateTime? quarantinedAt,
      DateTime? releasedAt,
      String? parentLotId,
      String? supplierLotNumber,
      String? supplierName,
      String? receiptNumber,
      String? quarantineReason,
      String? releaseReason,
      String? notes,
      Map<String, dynamic>? attributes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$LotGenealogyCopyWithImpl<$Res, $Val extends LotGenealogy>
    implements $LotGenealogyCopyWith<$Res> {
  _$LotGenealogyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lotNumber = null,
    Object? itemId = null,
    Object? locationId = null,
    Object? quantity = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? expiryDate = freezed,
    Object? quarantinedAt = freezed,
    Object? releasedAt = freezed,
    Object? parentLotId = freezed,
    Object? supplierLotNumber = freezed,
    Object? supplierName = freezed,
    Object? receiptNumber = freezed,
    Object? quarantineReason = freezed,
    Object? releaseReason = freezed,
    Object? notes = freezed,
    Object? attributes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lotNumber: null == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quarantinedAt: freezed == quarantinedAt
          ? _value.quarantinedAt
          : quarantinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      releasedAt: freezed == releasedAt
          ? _value.releasedAt
          : releasedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      parentLotId: freezed == parentLotId
          ? _value.parentLotId
          : parentLotId // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierLotNumber: freezed == supplierLotNumber
          ? _value.supplierLotNumber
          : supplierLotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierName: freezed == supplierName
          ? _value.supplierName
          : supplierName // ignore: cast_nullable_to_non_nullable
              as String?,
      receiptNumber: freezed == receiptNumber
          ? _value.receiptNumber
          : receiptNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      quarantineReason: freezed == quarantineReason
          ? _value.quarantineReason
          : quarantineReason // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseReason: freezed == releaseReason
          ? _value.releaseReason
          : releaseReason // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LotGenealogyImplCopyWith<$Res>
    implements $LotGenealogyCopyWith<$Res> {
  factory _$$LotGenealogyImplCopyWith(
          _$LotGenealogyImpl value, $Res Function(_$LotGenealogyImpl) then) =
      __$$LotGenealogyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String lotNumber,
      String itemId,
      String locationId,
      double quantity,
      String status,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? expiryDate,
      DateTime? quarantinedAt,
      DateTime? releasedAt,
      String? parentLotId,
      String? supplierLotNumber,
      String? supplierName,
      String? receiptNumber,
      String? quarantineReason,
      String? releaseReason,
      String? notes,
      Map<String, dynamic>? attributes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$LotGenealogyImplCopyWithImpl<$Res>
    extends _$LotGenealogyCopyWithImpl<$Res, _$LotGenealogyImpl>
    implements _$$LotGenealogyImplCopyWith<$Res> {
  __$$LotGenealogyImplCopyWithImpl(
      _$LotGenealogyImpl _value, $Res Function(_$LotGenealogyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lotNumber = null,
    Object? itemId = null,
    Object? locationId = null,
    Object? quantity = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? expiryDate = freezed,
    Object? quarantinedAt = freezed,
    Object? releasedAt = freezed,
    Object? parentLotId = freezed,
    Object? supplierLotNumber = freezed,
    Object? supplierName = freezed,
    Object? receiptNumber = freezed,
    Object? quarantineReason = freezed,
    Object? releaseReason = freezed,
    Object? notes = freezed,
    Object? attributes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$LotGenealogyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lotNumber: null == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quarantinedAt: freezed == quarantinedAt
          ? _value.quarantinedAt
          : quarantinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      releasedAt: freezed == releasedAt
          ? _value.releasedAt
          : releasedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      parentLotId: freezed == parentLotId
          ? _value.parentLotId
          : parentLotId // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierLotNumber: freezed == supplierLotNumber
          ? _value.supplierLotNumber
          : supplierLotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierName: freezed == supplierName
          ? _value.supplierName
          : supplierName // ignore: cast_nullable_to_non_nullable
              as String?,
      receiptNumber: freezed == receiptNumber
          ? _value.receiptNumber
          : receiptNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      quarantineReason: freezed == quarantineReason
          ? _value.quarantineReason
          : quarantineReason // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseReason: freezed == releaseReason
          ? _value.releaseReason
          : releaseReason // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LotGenealogyImpl implements _LotGenealogy {
  const _$LotGenealogyImpl(
      {required this.id,
      required this.lotNumber,
      required this.itemId,
      required this.locationId,
      required this.quantity,
      required this.status,
      required this.createdAt,
      required this.updatedAt,
      this.expiryDate,
      this.quarantinedAt,
      this.releasedAt,
      this.parentLotId,
      this.supplierLotNumber,
      this.supplierName,
      this.receiptNumber,
      this.quarantineReason,
      this.releaseReason,
      this.notes,
      final Map<String, dynamic>? attributes,
      final Map<String, dynamic>? metadata})
      : _attributes = attributes,
        _metadata = metadata;

  factory _$LotGenealogyImpl.fromJson(Map<String, dynamic> json) =>
      _$$LotGenealogyImplFromJson(json);

  @override
  final String id;
  @override
  final String lotNumber;
  @override
  final String itemId;
  @override
  final String locationId;
  @override
  final double quantity;
  @override
  final String status;
// 'active', 'consumed', 'quarantined', 'expired', 'recalled'
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime? expiryDate;
  @override
  final DateTime? quarantinedAt;
  @override
  final DateTime? releasedAt;
  @override
  final String? parentLotId;
  @override
  final String? supplierLotNumber;
  @override
  final String? supplierName;
  @override
  final String? receiptNumber;
  @override
  final String? quarantineReason;
  @override
  final String? releaseReason;
  @override
  final String? notes;
  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'LotGenealogy(id: $id, lotNumber: $lotNumber, itemId: $itemId, locationId: $locationId, quantity: $quantity, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, expiryDate: $expiryDate, quarantinedAt: $quarantinedAt, releasedAt: $releasedAt, parentLotId: $parentLotId, supplierLotNumber: $supplierLotNumber, supplierName: $supplierName, receiptNumber: $receiptNumber, quarantineReason: $quarantineReason, releaseReason: $releaseReason, notes: $notes, attributes: $attributes, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotGenealogyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.quarantinedAt, quarantinedAt) ||
                other.quarantinedAt == quarantinedAt) &&
            (identical(other.releasedAt, releasedAt) ||
                other.releasedAt == releasedAt) &&
            (identical(other.parentLotId, parentLotId) ||
                other.parentLotId == parentLotId) &&
            (identical(other.supplierLotNumber, supplierLotNumber) ||
                other.supplierLotNumber == supplierLotNumber) &&
            (identical(other.supplierName, supplierName) ||
                other.supplierName == supplierName) &&
            (identical(other.receiptNumber, receiptNumber) ||
                other.receiptNumber == receiptNumber) &&
            (identical(other.quarantineReason, quarantineReason) ||
                other.quarantineReason == quarantineReason) &&
            (identical(other.releaseReason, releaseReason) ||
                other.releaseReason == releaseReason) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        lotNumber,
        itemId,
        locationId,
        quantity,
        status,
        createdAt,
        updatedAt,
        expiryDate,
        quarantinedAt,
        releasedAt,
        parentLotId,
        supplierLotNumber,
        supplierName,
        receiptNumber,
        quarantineReason,
        releaseReason,
        notes,
        const DeepCollectionEquality().hash(_attributes),
        const DeepCollectionEquality().hash(_metadata)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotGenealogyImplCopyWith<_$LotGenealogyImpl> get copyWith =>
      __$$LotGenealogyImplCopyWithImpl<_$LotGenealogyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LotGenealogyImplToJson(
      this,
    );
  }
}

abstract class _LotGenealogy implements LotGenealogy {
  const factory _LotGenealogy(
      {required final String id,
      required final String lotNumber,
      required final String itemId,
      required final String locationId,
      required final double quantity,
      required final String status,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final DateTime? expiryDate,
      final DateTime? quarantinedAt,
      final DateTime? releasedAt,
      final String? parentLotId,
      final String? supplierLotNumber,
      final String? supplierName,
      final String? receiptNumber,
      final String? quarantineReason,
      final String? releaseReason,
      final String? notes,
      final Map<String, dynamic>? attributes,
      final Map<String, dynamic>? metadata}) = _$LotGenealogyImpl;

  factory _LotGenealogy.fromJson(Map<String, dynamic> json) =
      _$LotGenealogyImpl.fromJson;

  @override
  String get id;
  @override
  String get lotNumber;
  @override
  String get itemId;
  @override
  String get locationId;
  @override
  double get quantity;
  @override
  String get status;
  @override // 'active', 'consumed', 'quarantined', 'expired', 'recalled'
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  DateTime? get expiryDate;
  @override
  DateTime? get quarantinedAt;
  @override
  DateTime? get releasedAt;
  @override
  String? get parentLotId;
  @override
  String? get supplierLotNumber;
  @override
  String? get supplierName;
  @override
  String? get receiptNumber;
  @override
  String? get quarantineReason;
  @override
  String? get releaseReason;
  @override
  String? get notes;
  @override
  Map<String, dynamic>? get attributes;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$LotGenealogyImplCopyWith<_$LotGenealogyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LotTrackingHistory _$LotTrackingHistoryFromJson(Map<String, dynamic> json) {
  return _LotTrackingHistory.fromJson(json);
}

/// @nodoc
mixin _$LotTrackingHistory {
  String get id => throw _privateConstructorUsedError;
  String get lotId => throw _privateConstructorUsedError;
  String get eventType =>
      throw _privateConstructorUsedError; // 'created', 'moved', 'consumed', 'split', 'merged', 'quarantined', 'released'
  String get fromLocationId => throw _privateConstructorUsedError;
  String get toLocationId => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  DateTime get eventDate => throw _privateConstructorUsedError;
  String? get referenceType =>
      throw _privateConstructorUsedError; // 'sales_order', 'production_order', 'transfer', 'adjustment'
  String? get referenceId => throw _privateConstructorUsedError;
  String? get performedBy => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LotTrackingHistoryCopyWith<LotTrackingHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotTrackingHistoryCopyWith<$Res> {
  factory $LotTrackingHistoryCopyWith(
          LotTrackingHistory value, $Res Function(LotTrackingHistory) then) =
      _$LotTrackingHistoryCopyWithImpl<$Res, LotTrackingHistory>;
  @useResult
  $Res call(
      {String id,
      String lotId,
      String eventType,
      String fromLocationId,
      String toLocationId,
      double quantity,
      DateTime eventDate,
      String? referenceType,
      String? referenceId,
      String? performedBy,
      String? reason,
      String? notes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$LotTrackingHistoryCopyWithImpl<$Res, $Val extends LotTrackingHistory>
    implements $LotTrackingHistoryCopyWith<$Res> {
  _$LotTrackingHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lotId = null,
    Object? eventType = null,
    Object? fromLocationId = null,
    Object? toLocationId = null,
    Object? quantity = null,
    Object? eventDate = null,
    Object? referenceType = freezed,
    Object? referenceId = freezed,
    Object? performedBy = freezed,
    Object? reason = freezed,
    Object? notes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lotId: null == lotId
          ? _value.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      fromLocationId: null == fromLocationId
          ? _value.fromLocationId
          : fromLocationId // ignore: cast_nullable_to_non_nullable
              as String,
      toLocationId: null == toLocationId
          ? _value.toLocationId
          : toLocationId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      eventDate: null == eventDate
          ? _value.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      referenceType: freezed == referenceType
          ? _value.referenceType
          : referenceType // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      performedBy: freezed == performedBy
          ? _value.performedBy
          : performedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LotTrackingHistoryImplCopyWith<$Res>
    implements $LotTrackingHistoryCopyWith<$Res> {
  factory _$$LotTrackingHistoryImplCopyWith(_$LotTrackingHistoryImpl value,
          $Res Function(_$LotTrackingHistoryImpl) then) =
      __$$LotTrackingHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String lotId,
      String eventType,
      String fromLocationId,
      String toLocationId,
      double quantity,
      DateTime eventDate,
      String? referenceType,
      String? referenceId,
      String? performedBy,
      String? reason,
      String? notes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$LotTrackingHistoryImplCopyWithImpl<$Res>
    extends _$LotTrackingHistoryCopyWithImpl<$Res, _$LotTrackingHistoryImpl>
    implements _$$LotTrackingHistoryImplCopyWith<$Res> {
  __$$LotTrackingHistoryImplCopyWithImpl(_$LotTrackingHistoryImpl _value,
      $Res Function(_$LotTrackingHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lotId = null,
    Object? eventType = null,
    Object? fromLocationId = null,
    Object? toLocationId = null,
    Object? quantity = null,
    Object? eventDate = null,
    Object? referenceType = freezed,
    Object? referenceId = freezed,
    Object? performedBy = freezed,
    Object? reason = freezed,
    Object? notes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$LotTrackingHistoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lotId: null == lotId
          ? _value.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      fromLocationId: null == fromLocationId
          ? _value.fromLocationId
          : fromLocationId // ignore: cast_nullable_to_non_nullable
              as String,
      toLocationId: null == toLocationId
          ? _value.toLocationId
          : toLocationId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      eventDate: null == eventDate
          ? _value.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      referenceType: freezed == referenceType
          ? _value.referenceType
          : referenceType // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      performedBy: freezed == performedBy
          ? _value.performedBy
          : performedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LotTrackingHistoryImpl implements _LotTrackingHistory {
  const _$LotTrackingHistoryImpl(
      {required this.id,
      required this.lotId,
      required this.eventType,
      required this.fromLocationId,
      required this.toLocationId,
      required this.quantity,
      required this.eventDate,
      this.referenceType,
      this.referenceId,
      this.performedBy,
      this.reason,
      this.notes,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$LotTrackingHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$LotTrackingHistoryImplFromJson(json);

  @override
  final String id;
  @override
  final String lotId;
  @override
  final String eventType;
// 'created', 'moved', 'consumed', 'split', 'merged', 'quarantined', 'released'
  @override
  final String fromLocationId;
  @override
  final String toLocationId;
  @override
  final double quantity;
  @override
  final DateTime eventDate;
  @override
  final String? referenceType;
// 'sales_order', 'production_order', 'transfer', 'adjustment'
  @override
  final String? referenceId;
  @override
  final String? performedBy;
  @override
  final String? reason;
  @override
  final String? notes;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'LotTrackingHistory(id: $id, lotId: $lotId, eventType: $eventType, fromLocationId: $fromLocationId, toLocationId: $toLocationId, quantity: $quantity, eventDate: $eventDate, referenceType: $referenceType, referenceId: $referenceId, performedBy: $performedBy, reason: $reason, notes: $notes, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotTrackingHistoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lotId, lotId) || other.lotId == lotId) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.fromLocationId, fromLocationId) ||
                other.fromLocationId == fromLocationId) &&
            (identical(other.toLocationId, toLocationId) ||
                other.toLocationId == toLocationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.eventDate, eventDate) ||
                other.eventDate == eventDate) &&
            (identical(other.referenceType, referenceType) ||
                other.referenceType == referenceType) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.performedBy, performedBy) ||
                other.performedBy == performedBy) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      lotId,
      eventType,
      fromLocationId,
      toLocationId,
      quantity,
      eventDate,
      referenceType,
      referenceId,
      performedBy,
      reason,
      notes,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotTrackingHistoryImplCopyWith<_$LotTrackingHistoryImpl> get copyWith =>
      __$$LotTrackingHistoryImplCopyWithImpl<_$LotTrackingHistoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LotTrackingHistoryImplToJson(
      this,
    );
  }
}

abstract class _LotTrackingHistory implements LotTrackingHistory {
  const factory _LotTrackingHistory(
      {required final String id,
      required final String lotId,
      required final String eventType,
      required final String fromLocationId,
      required final String toLocationId,
      required final double quantity,
      required final DateTime eventDate,
      final String? referenceType,
      final String? referenceId,
      final String? performedBy,
      final String? reason,
      final String? notes,
      final Map<String, dynamic>? metadata}) = _$LotTrackingHistoryImpl;

  factory _LotTrackingHistory.fromJson(Map<String, dynamic> json) =
      _$LotTrackingHistoryImpl.fromJson;

  @override
  String get id;
  @override
  String get lotId;
  @override
  String get eventType;
  @override // 'created', 'moved', 'consumed', 'split', 'merged', 'quarantined', 'released'
  String get fromLocationId;
  @override
  String get toLocationId;
  @override
  double get quantity;
  @override
  DateTime get eventDate;
  @override
  String? get referenceType;
  @override // 'sales_order', 'production_order', 'transfer', 'adjustment'
  String? get referenceId;
  @override
  String? get performedBy;
  @override
  String? get reason;
  @override
  String? get notes;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$LotTrackingHistoryImplCopyWith<_$LotTrackingHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SplitLotRequest _$SplitLotRequestFromJson(Map<String, dynamic> json) {
  return _SplitLotRequest.fromJson(json);
}

/// @nodoc
mixin _$SplitLotRequest {
  String get sourceLotId => throw _privateConstructorUsedError;
  List<LotSplitItem> get splitItems => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SplitLotRequestCopyWith<SplitLotRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplitLotRequestCopyWith<$Res> {
  factory $SplitLotRequestCopyWith(
          SplitLotRequest value, $Res Function(SplitLotRequest) then) =
      _$SplitLotRequestCopyWithImpl<$Res, SplitLotRequest>;
  @useResult
  $Res call(
      {String sourceLotId,
      List<LotSplitItem> splitItems,
      String? reason,
      String? notes});
}

/// @nodoc
class _$SplitLotRequestCopyWithImpl<$Res, $Val extends SplitLotRequest>
    implements $SplitLotRequestCopyWith<$Res> {
  _$SplitLotRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceLotId = null,
    Object? splitItems = null,
    Object? reason = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      sourceLotId: null == sourceLotId
          ? _value.sourceLotId
          : sourceLotId // ignore: cast_nullable_to_non_nullable
              as String,
      splitItems: null == splitItems
          ? _value.splitItems
          : splitItems // ignore: cast_nullable_to_non_nullable
              as List<LotSplitItem>,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SplitLotRequestImplCopyWith<$Res>
    implements $SplitLotRequestCopyWith<$Res> {
  factory _$$SplitLotRequestImplCopyWith(_$SplitLotRequestImpl value,
          $Res Function(_$SplitLotRequestImpl) then) =
      __$$SplitLotRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sourceLotId,
      List<LotSplitItem> splitItems,
      String? reason,
      String? notes});
}

/// @nodoc
class __$$SplitLotRequestImplCopyWithImpl<$Res>
    extends _$SplitLotRequestCopyWithImpl<$Res, _$SplitLotRequestImpl>
    implements _$$SplitLotRequestImplCopyWith<$Res> {
  __$$SplitLotRequestImplCopyWithImpl(
      _$SplitLotRequestImpl _value, $Res Function(_$SplitLotRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceLotId = null,
    Object? splitItems = null,
    Object? reason = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$SplitLotRequestImpl(
      sourceLotId: null == sourceLotId
          ? _value.sourceLotId
          : sourceLotId // ignore: cast_nullable_to_non_nullable
              as String,
      splitItems: null == splitItems
          ? _value._splitItems
          : splitItems // ignore: cast_nullable_to_non_nullable
              as List<LotSplitItem>,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SplitLotRequestImpl implements _SplitLotRequest {
  const _$SplitLotRequestImpl(
      {required this.sourceLotId,
      required final List<LotSplitItem> splitItems,
      this.reason,
      this.notes})
      : _splitItems = splitItems;

  factory _$SplitLotRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SplitLotRequestImplFromJson(json);

  @override
  final String sourceLotId;
  final List<LotSplitItem> _splitItems;
  @override
  List<LotSplitItem> get splitItems {
    if (_splitItems is EqualUnmodifiableListView) return _splitItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_splitItems);
  }

  @override
  final String? reason;
  @override
  final String? notes;

  @override
  String toString() {
    return 'SplitLotRequest(sourceLotId: $sourceLotId, splitItems: $splitItems, reason: $reason, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplitLotRequestImpl &&
            (identical(other.sourceLotId, sourceLotId) ||
                other.sourceLotId == sourceLotId) &&
            const DeepCollectionEquality()
                .equals(other._splitItems, _splitItems) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sourceLotId,
      const DeepCollectionEquality().hash(_splitItems), reason, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SplitLotRequestImplCopyWith<_$SplitLotRequestImpl> get copyWith =>
      __$$SplitLotRequestImplCopyWithImpl<_$SplitLotRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SplitLotRequestImplToJson(
      this,
    );
  }
}

abstract class _SplitLotRequest implements SplitLotRequest {
  const factory _SplitLotRequest(
      {required final String sourceLotId,
      required final List<LotSplitItem> splitItems,
      final String? reason,
      final String? notes}) = _$SplitLotRequestImpl;

  factory _SplitLotRequest.fromJson(Map<String, dynamic> json) =
      _$SplitLotRequestImpl.fromJson;

  @override
  String get sourceLotId;
  @override
  List<LotSplitItem> get splitItems;
  @override
  String? get reason;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$SplitLotRequestImplCopyWith<_$SplitLotRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LotSplitItem _$LotSplitItemFromJson(Map<String, dynamic> json) {
  return _LotSplitItem.fromJson(json);
}

/// @nodoc
mixin _$LotSplitItem {
  String get newLotNumber => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  String? get locationId => throw _privateConstructorUsedError;
  DateTime? get expiryDate => throw _privateConstructorUsedError;
  Map<String, dynamic>? get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LotSplitItemCopyWith<LotSplitItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotSplitItemCopyWith<$Res> {
  factory $LotSplitItemCopyWith(
          LotSplitItem value, $Res Function(LotSplitItem) then) =
      _$LotSplitItemCopyWithImpl<$Res, LotSplitItem>;
  @useResult
  $Res call(
      {String newLotNumber,
      double quantity,
      String? locationId,
      DateTime? expiryDate,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class _$LotSplitItemCopyWithImpl<$Res, $Val extends LotSplitItem>
    implements $LotSplitItemCopyWith<$Res> {
  _$LotSplitItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newLotNumber = null,
    Object? quantity = null,
    Object? locationId = freezed,
    Object? expiryDate = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_value.copyWith(
      newLotNumber: null == newLotNumber
          ? _value.newLotNumber
          : newLotNumber // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LotSplitItemImplCopyWith<$Res>
    implements $LotSplitItemCopyWith<$Res> {
  factory _$$LotSplitItemImplCopyWith(
          _$LotSplitItemImpl value, $Res Function(_$LotSplitItemImpl) then) =
      __$$LotSplitItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String newLotNumber,
      double quantity,
      String? locationId,
      DateTime? expiryDate,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class __$$LotSplitItemImplCopyWithImpl<$Res>
    extends _$LotSplitItemCopyWithImpl<$Res, _$LotSplitItemImpl>
    implements _$$LotSplitItemImplCopyWith<$Res> {
  __$$LotSplitItemImplCopyWithImpl(
      _$LotSplitItemImpl _value, $Res Function(_$LotSplitItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newLotNumber = null,
    Object? quantity = null,
    Object? locationId = freezed,
    Object? expiryDate = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_$LotSplitItemImpl(
      newLotNumber: null == newLotNumber
          ? _value.newLotNumber
          : newLotNumber // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      attributes: freezed == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LotSplitItemImpl implements _LotSplitItem {
  const _$LotSplitItemImpl(
      {required this.newLotNumber,
      required this.quantity,
      this.locationId,
      this.expiryDate,
      final Map<String, dynamic>? attributes})
      : _attributes = attributes;

  factory _$LotSplitItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$LotSplitItemImplFromJson(json);

  @override
  final String newLotNumber;
  @override
  final double quantity;
  @override
  final String? locationId;
  @override
  final DateTime? expiryDate;
  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'LotSplitItem(newLotNumber: $newLotNumber, quantity: $quantity, locationId: $locationId, expiryDate: $expiryDate, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotSplitItemImpl &&
            (identical(other.newLotNumber, newLotNumber) ||
                other.newLotNumber == newLotNumber) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, newLotNumber, quantity,
      locationId, expiryDate, const DeepCollectionEquality().hash(_attributes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotSplitItemImplCopyWith<_$LotSplitItemImpl> get copyWith =>
      __$$LotSplitItemImplCopyWithImpl<_$LotSplitItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LotSplitItemImplToJson(
      this,
    );
  }
}

abstract class _LotSplitItem implements LotSplitItem {
  const factory _LotSplitItem(
      {required final String newLotNumber,
      required final double quantity,
      final String? locationId,
      final DateTime? expiryDate,
      final Map<String, dynamic>? attributes}) = _$LotSplitItemImpl;

  factory _LotSplitItem.fromJson(Map<String, dynamic> json) =
      _$LotSplitItemImpl.fromJson;

  @override
  String get newLotNumber;
  @override
  double get quantity;
  @override
  String? get locationId;
  @override
  DateTime? get expiryDate;
  @override
  Map<String, dynamic>? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$LotSplitItemImplCopyWith<_$LotSplitItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MergeLotsRequest _$MergeLotsRequestFromJson(Map<String, dynamic> json) {
  return _MergeLotsRequest.fromJson(json);
}

/// @nodoc
mixin _$MergeLotsRequest {
  List<String> get sourceLotIds => throw _privateConstructorUsedError;
  String get targetLotNumber => throw _privateConstructorUsedError;
  String get targetLocationId => throw _privateConstructorUsedError;
  DateTime? get targetExpiryDate => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  Map<String, dynamic>? get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MergeLotsRequestCopyWith<MergeLotsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MergeLotsRequestCopyWith<$Res> {
  factory $MergeLotsRequestCopyWith(
          MergeLotsRequest value, $Res Function(MergeLotsRequest) then) =
      _$MergeLotsRequestCopyWithImpl<$Res, MergeLotsRequest>;
  @useResult
  $Res call(
      {List<String> sourceLotIds,
      String targetLotNumber,
      String targetLocationId,
      DateTime? targetExpiryDate,
      String? reason,
      String? notes,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class _$MergeLotsRequestCopyWithImpl<$Res, $Val extends MergeLotsRequest>
    implements $MergeLotsRequestCopyWith<$Res> {
  _$MergeLotsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceLotIds = null,
    Object? targetLotNumber = null,
    Object? targetLocationId = null,
    Object? targetExpiryDate = freezed,
    Object? reason = freezed,
    Object? notes = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_value.copyWith(
      sourceLotIds: null == sourceLotIds
          ? _value.sourceLotIds
          : sourceLotIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      targetLotNumber: null == targetLotNumber
          ? _value.targetLotNumber
          : targetLotNumber // ignore: cast_nullable_to_non_nullable
              as String,
      targetLocationId: null == targetLocationId
          ? _value.targetLocationId
          : targetLocationId // ignore: cast_nullable_to_non_nullable
              as String,
      targetExpiryDate: freezed == targetExpiryDate
          ? _value.targetExpiryDate
          : targetExpiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MergeLotsRequestImplCopyWith<$Res>
    implements $MergeLotsRequestCopyWith<$Res> {
  factory _$$MergeLotsRequestImplCopyWith(_$MergeLotsRequestImpl value,
          $Res Function(_$MergeLotsRequestImpl) then) =
      __$$MergeLotsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> sourceLotIds,
      String targetLotNumber,
      String targetLocationId,
      DateTime? targetExpiryDate,
      String? reason,
      String? notes,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class __$$MergeLotsRequestImplCopyWithImpl<$Res>
    extends _$MergeLotsRequestCopyWithImpl<$Res, _$MergeLotsRequestImpl>
    implements _$$MergeLotsRequestImplCopyWith<$Res> {
  __$$MergeLotsRequestImplCopyWithImpl(_$MergeLotsRequestImpl _value,
      $Res Function(_$MergeLotsRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceLotIds = null,
    Object? targetLotNumber = null,
    Object? targetLocationId = null,
    Object? targetExpiryDate = freezed,
    Object? reason = freezed,
    Object? notes = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_$MergeLotsRequestImpl(
      sourceLotIds: null == sourceLotIds
          ? _value._sourceLotIds
          : sourceLotIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      targetLotNumber: null == targetLotNumber
          ? _value.targetLotNumber
          : targetLotNumber // ignore: cast_nullable_to_non_nullable
              as String,
      targetLocationId: null == targetLocationId
          ? _value.targetLocationId
          : targetLocationId // ignore: cast_nullable_to_non_nullable
              as String,
      targetExpiryDate: freezed == targetExpiryDate
          ? _value.targetExpiryDate
          : targetExpiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MergeLotsRequestImpl implements _MergeLotsRequest {
  const _$MergeLotsRequestImpl(
      {required final List<String> sourceLotIds,
      required this.targetLotNumber,
      required this.targetLocationId,
      this.targetExpiryDate,
      this.reason,
      this.notes,
      final Map<String, dynamic>? attributes})
      : _sourceLotIds = sourceLotIds,
        _attributes = attributes;

  factory _$MergeLotsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$MergeLotsRequestImplFromJson(json);

  final List<String> _sourceLotIds;
  @override
  List<String> get sourceLotIds {
    if (_sourceLotIds is EqualUnmodifiableListView) return _sourceLotIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sourceLotIds);
  }

  @override
  final String targetLotNumber;
  @override
  final String targetLocationId;
  @override
  final DateTime? targetExpiryDate;
  @override
  final String? reason;
  @override
  final String? notes;
  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'MergeLotsRequest(sourceLotIds: $sourceLotIds, targetLotNumber: $targetLotNumber, targetLocationId: $targetLocationId, targetExpiryDate: $targetExpiryDate, reason: $reason, notes: $notes, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MergeLotsRequestImpl &&
            const DeepCollectionEquality()
                .equals(other._sourceLotIds, _sourceLotIds) &&
            (identical(other.targetLotNumber, targetLotNumber) ||
                other.targetLotNumber == targetLotNumber) &&
            (identical(other.targetLocationId, targetLocationId) ||
                other.targetLocationId == targetLocationId) &&
            (identical(other.targetExpiryDate, targetExpiryDate) ||
                other.targetExpiryDate == targetExpiryDate) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_sourceLotIds),
      targetLotNumber,
      targetLocationId,
      targetExpiryDate,
      reason,
      notes,
      const DeepCollectionEquality().hash(_attributes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MergeLotsRequestImplCopyWith<_$MergeLotsRequestImpl> get copyWith =>
      __$$MergeLotsRequestImplCopyWithImpl<_$MergeLotsRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MergeLotsRequestImplToJson(
      this,
    );
  }
}

abstract class _MergeLotsRequest implements MergeLotsRequest {
  const factory _MergeLotsRequest(
      {required final List<String> sourceLotIds,
      required final String targetLotNumber,
      required final String targetLocationId,
      final DateTime? targetExpiryDate,
      final String? reason,
      final String? notes,
      final Map<String, dynamic>? attributes}) = _$MergeLotsRequestImpl;

  factory _MergeLotsRequest.fromJson(Map<String, dynamic> json) =
      _$MergeLotsRequestImpl.fromJson;

  @override
  List<String> get sourceLotIds;
  @override
  String get targetLotNumber;
  @override
  String get targetLocationId;
  @override
  DateTime? get targetExpiryDate;
  @override
  String? get reason;
  @override
  String? get notes;
  @override
  Map<String, dynamic>? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$MergeLotsRequestImplCopyWith<_$MergeLotsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateLotTrackingRequest _$UpdateLotTrackingRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateLotTrackingRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateLotTrackingRequest {
  String? get status => throw _privateConstructorUsedError;
  DateTime? get expiryDate => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  Map<String, dynamic>? get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateLotTrackingRequestCopyWith<UpdateLotTrackingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateLotTrackingRequestCopyWith<$Res> {
  factory $UpdateLotTrackingRequestCopyWith(UpdateLotTrackingRequest value,
          $Res Function(UpdateLotTrackingRequest) then) =
      _$UpdateLotTrackingRequestCopyWithImpl<$Res, UpdateLotTrackingRequest>;
  @useResult
  $Res call(
      {String? status,
      DateTime? expiryDate,
      String? notes,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class _$UpdateLotTrackingRequestCopyWithImpl<$Res,
        $Val extends UpdateLotTrackingRequest>
    implements $UpdateLotTrackingRequestCopyWith<$Res> {
  _$UpdateLotTrackingRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? expiryDate = freezed,
    Object? notes = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateLotTrackingRequestImplCopyWith<$Res>
    implements $UpdateLotTrackingRequestCopyWith<$Res> {
  factory _$$UpdateLotTrackingRequestImplCopyWith(
          _$UpdateLotTrackingRequestImpl value,
          $Res Function(_$UpdateLotTrackingRequestImpl) then) =
      __$$UpdateLotTrackingRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status,
      DateTime? expiryDate,
      String? notes,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class __$$UpdateLotTrackingRequestImplCopyWithImpl<$Res>
    extends _$UpdateLotTrackingRequestCopyWithImpl<$Res,
        _$UpdateLotTrackingRequestImpl>
    implements _$$UpdateLotTrackingRequestImplCopyWith<$Res> {
  __$$UpdateLotTrackingRequestImplCopyWithImpl(
      _$UpdateLotTrackingRequestImpl _value,
      $Res Function(_$UpdateLotTrackingRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? expiryDate = freezed,
    Object? notes = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_$UpdateLotTrackingRequestImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateLotTrackingRequestImpl implements _UpdateLotTrackingRequest {
  const _$UpdateLotTrackingRequestImpl(
      {this.status,
      this.expiryDate,
      this.notes,
      final Map<String, dynamic>? attributes})
      : _attributes = attributes;

  factory _$UpdateLotTrackingRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateLotTrackingRequestImplFromJson(json);

  @override
  final String? status;
  @override
  final DateTime? expiryDate;
  @override
  final String? notes;
  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'UpdateLotTrackingRequest(status: $status, expiryDate: $expiryDate, notes: $notes, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLotTrackingRequestImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, expiryDate, notes,
      const DeepCollectionEquality().hash(_attributes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateLotTrackingRequestImplCopyWith<_$UpdateLotTrackingRequestImpl>
      get copyWith => __$$UpdateLotTrackingRequestImplCopyWithImpl<
          _$UpdateLotTrackingRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateLotTrackingRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateLotTrackingRequest implements UpdateLotTrackingRequest {
  const factory _UpdateLotTrackingRequest(
      {final String? status,
      final DateTime? expiryDate,
      final String? notes,
      final Map<String, dynamic>? attributes}) = _$UpdateLotTrackingRequestImpl;

  factory _UpdateLotTrackingRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateLotTrackingRequestImpl.fromJson;

  @override
  String? get status;
  @override
  DateTime? get expiryDate;
  @override
  String? get notes;
  @override
  Map<String, dynamic>? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$UpdateLotTrackingRequestImplCopyWith<_$UpdateLotTrackingRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

QuarantineLotRequest _$QuarantineLotRequestFromJson(Map<String, dynamic> json) {
  return _QuarantineLotRequest.fromJson(json);
}

/// @nodoc
mixin _$QuarantineLotRequest {
  String get reason => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  DateTime? get quarantinedUntil => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuarantineLotRequestCopyWith<QuarantineLotRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuarantineLotRequestCopyWith<$Res> {
  factory $QuarantineLotRequestCopyWith(QuarantineLotRequest value,
          $Res Function(QuarantineLotRequest) then) =
      _$QuarantineLotRequestCopyWithImpl<$Res, QuarantineLotRequest>;
  @useResult
  $Res call({String reason, String? notes, DateTime? quarantinedUntil});
}

/// @nodoc
class _$QuarantineLotRequestCopyWithImpl<$Res,
        $Val extends QuarantineLotRequest>
    implements $QuarantineLotRequestCopyWith<$Res> {
  _$QuarantineLotRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
    Object? notes = freezed,
    Object? quarantinedUntil = freezed,
  }) {
    return _then(_value.copyWith(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      quarantinedUntil: freezed == quarantinedUntil
          ? _value.quarantinedUntil
          : quarantinedUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuarantineLotRequestImplCopyWith<$Res>
    implements $QuarantineLotRequestCopyWith<$Res> {
  factory _$$QuarantineLotRequestImplCopyWith(_$QuarantineLotRequestImpl value,
          $Res Function(_$QuarantineLotRequestImpl) then) =
      __$$QuarantineLotRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String reason, String? notes, DateTime? quarantinedUntil});
}

/// @nodoc
class __$$QuarantineLotRequestImplCopyWithImpl<$Res>
    extends _$QuarantineLotRequestCopyWithImpl<$Res, _$QuarantineLotRequestImpl>
    implements _$$QuarantineLotRequestImplCopyWith<$Res> {
  __$$QuarantineLotRequestImplCopyWithImpl(_$QuarantineLotRequestImpl _value,
      $Res Function(_$QuarantineLotRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
    Object? notes = freezed,
    Object? quarantinedUntil = freezed,
  }) {
    return _then(_$QuarantineLotRequestImpl(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      quarantinedUntil: freezed == quarantinedUntil
          ? _value.quarantinedUntil
          : quarantinedUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuarantineLotRequestImpl implements _QuarantineLotRequest {
  const _$QuarantineLotRequestImpl(
      {required this.reason, this.notes, this.quarantinedUntil});

  factory _$QuarantineLotRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuarantineLotRequestImplFromJson(json);

  @override
  final String reason;
  @override
  final String? notes;
  @override
  final DateTime? quarantinedUntil;

  @override
  String toString() {
    return 'QuarantineLotRequest(reason: $reason, notes: $notes, quarantinedUntil: $quarantinedUntil)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuarantineLotRequestImpl &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.quarantinedUntil, quarantinedUntil) ||
                other.quarantinedUntil == quarantinedUntil));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reason, notes, quarantinedUntil);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuarantineLotRequestImplCopyWith<_$QuarantineLotRequestImpl>
      get copyWith =>
          __$$QuarantineLotRequestImplCopyWithImpl<_$QuarantineLotRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuarantineLotRequestImplToJson(
      this,
    );
  }
}

abstract class _QuarantineLotRequest implements QuarantineLotRequest {
  const factory _QuarantineLotRequest(
      {required final String reason,
      final String? notes,
      final DateTime? quarantinedUntil}) = _$QuarantineLotRequestImpl;

  factory _QuarantineLotRequest.fromJson(Map<String, dynamic> json) =
      _$QuarantineLotRequestImpl.fromJson;

  @override
  String get reason;
  @override
  String? get notes;
  @override
  DateTime? get quarantinedUntil;
  @override
  @JsonKey(ignore: true)
  _$$QuarantineLotRequestImplCopyWith<_$QuarantineLotRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReleaseLotRequest _$ReleaseLotRequestFromJson(Map<String, dynamic> json) {
  return _ReleaseLotRequest.fromJson(json);
}

/// @nodoc
mixin _$ReleaseLotRequest {
  String get releaseReason => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get inspectedBy => throw _privateConstructorUsedError;
  DateTime? get inspectionDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReleaseLotRequestCopyWith<ReleaseLotRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReleaseLotRequestCopyWith<$Res> {
  factory $ReleaseLotRequestCopyWith(
          ReleaseLotRequest value, $Res Function(ReleaseLotRequest) then) =
      _$ReleaseLotRequestCopyWithImpl<$Res, ReleaseLotRequest>;
  @useResult
  $Res call(
      {String releaseReason,
      String? notes,
      String? inspectedBy,
      DateTime? inspectionDate});
}

/// @nodoc
class _$ReleaseLotRequestCopyWithImpl<$Res, $Val extends ReleaseLotRequest>
    implements $ReleaseLotRequestCopyWith<$Res> {
  _$ReleaseLotRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? releaseReason = null,
    Object? notes = freezed,
    Object? inspectedBy = freezed,
    Object? inspectionDate = freezed,
  }) {
    return _then(_value.copyWith(
      releaseReason: null == releaseReason
          ? _value.releaseReason
          : releaseReason // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectedBy: freezed == inspectedBy
          ? _value.inspectedBy
          : inspectedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectionDate: freezed == inspectionDate
          ? _value.inspectionDate
          : inspectionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReleaseLotRequestImplCopyWith<$Res>
    implements $ReleaseLotRequestCopyWith<$Res> {
  factory _$$ReleaseLotRequestImplCopyWith(_$ReleaseLotRequestImpl value,
          $Res Function(_$ReleaseLotRequestImpl) then) =
      __$$ReleaseLotRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String releaseReason,
      String? notes,
      String? inspectedBy,
      DateTime? inspectionDate});
}

/// @nodoc
class __$$ReleaseLotRequestImplCopyWithImpl<$Res>
    extends _$ReleaseLotRequestCopyWithImpl<$Res, _$ReleaseLotRequestImpl>
    implements _$$ReleaseLotRequestImplCopyWith<$Res> {
  __$$ReleaseLotRequestImplCopyWithImpl(_$ReleaseLotRequestImpl _value,
      $Res Function(_$ReleaseLotRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? releaseReason = null,
    Object? notes = freezed,
    Object? inspectedBy = freezed,
    Object? inspectionDate = freezed,
  }) {
    return _then(_$ReleaseLotRequestImpl(
      releaseReason: null == releaseReason
          ? _value.releaseReason
          : releaseReason // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectedBy: freezed == inspectedBy
          ? _value.inspectedBy
          : inspectedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectionDate: freezed == inspectionDate
          ? _value.inspectionDate
          : inspectionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReleaseLotRequestImpl implements _ReleaseLotRequest {
  const _$ReleaseLotRequestImpl(
      {required this.releaseReason,
      this.notes,
      this.inspectedBy,
      this.inspectionDate});

  factory _$ReleaseLotRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReleaseLotRequestImplFromJson(json);

  @override
  final String releaseReason;
  @override
  final String? notes;
  @override
  final String? inspectedBy;
  @override
  final DateTime? inspectionDate;

  @override
  String toString() {
    return 'ReleaseLotRequest(releaseReason: $releaseReason, notes: $notes, inspectedBy: $inspectedBy, inspectionDate: $inspectionDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReleaseLotRequestImpl &&
            (identical(other.releaseReason, releaseReason) ||
                other.releaseReason == releaseReason) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.inspectedBy, inspectedBy) ||
                other.inspectedBy == inspectedBy) &&
            (identical(other.inspectionDate, inspectionDate) ||
                other.inspectionDate == inspectionDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, releaseReason, notes, inspectedBy, inspectionDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReleaseLotRequestImplCopyWith<_$ReleaseLotRequestImpl> get copyWith =>
      __$$ReleaseLotRequestImplCopyWithImpl<_$ReleaseLotRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReleaseLotRequestImplToJson(
      this,
    );
  }
}

abstract class _ReleaseLotRequest implements ReleaseLotRequest {
  const factory _ReleaseLotRequest(
      {required final String releaseReason,
      final String? notes,
      final String? inspectedBy,
      final DateTime? inspectionDate}) = _$ReleaseLotRequestImpl;

  factory _ReleaseLotRequest.fromJson(Map<String, dynamic> json) =
      _$ReleaseLotRequestImpl.fromJson;

  @override
  String get releaseReason;
  @override
  String? get notes;
  @override
  String? get inspectedBy;
  @override
  DateTime? get inspectionDate;
  @override
  @JsonKey(ignore: true)
  _$$ReleaseLotRequestImplCopyWith<_$ReleaseLotRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LotGenealogyFilters _$LotGenealogyFiltersFromJson(Map<String, dynamic> json) {
  return _LotGenealogyFilters.fromJson(json);
}

/// @nodoc
mixin _$LotGenealogyFilters {
  String? get itemId => throw _privateConstructorUsedError;
  String? get locationId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get lotNumber => throw _privateConstructorUsedError;
  String? get supplierLotNumber => throw _privateConstructorUsedError;
  String? get parentLotId => throw _privateConstructorUsedError;
  DateTime? get createdAfter => throw _privateConstructorUsedError;
  DateTime? get createdBefore => throw _privateConstructorUsedError;
  DateTime? get expiryAfter => throw _privateConstructorUsedError;
  DateTime? get expiryBefore => throw _privateConstructorUsedError;
  DateTime? get quarantinedAfter => throw _privateConstructorUsedError;
  DateTime? get quarantinedBefore => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String? get sortBy => throw _privateConstructorUsedError;
  String? get sortOrder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LotGenealogyFiltersCopyWith<LotGenealogyFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotGenealogyFiltersCopyWith<$Res> {
  factory $LotGenealogyFiltersCopyWith(
          LotGenealogyFilters value, $Res Function(LotGenealogyFilters) then) =
      _$LotGenealogyFiltersCopyWithImpl<$Res, LotGenealogyFilters>;
  @useResult
  $Res call(
      {String? itemId,
      String? locationId,
      String? status,
      String? lotNumber,
      String? supplierLotNumber,
      String? parentLotId,
      DateTime? createdAfter,
      DateTime? createdBefore,
      DateTime? expiryAfter,
      DateTime? expiryBefore,
      DateTime? quarantinedAfter,
      DateTime? quarantinedBefore,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class _$LotGenealogyFiltersCopyWithImpl<$Res, $Val extends LotGenealogyFilters>
    implements $LotGenealogyFiltersCopyWith<$Res> {
  _$LotGenealogyFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = freezed,
    Object? locationId = freezed,
    Object? status = freezed,
    Object? lotNumber = freezed,
    Object? supplierLotNumber = freezed,
    Object? parentLotId = freezed,
    Object? createdAfter = freezed,
    Object? createdBefore = freezed,
    Object? expiryAfter = freezed,
    Object? expiryBefore = freezed,
    Object? quarantinedAfter = freezed,
    Object? quarantinedBefore = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_value.copyWith(
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierLotNumber: freezed == supplierLotNumber
          ? _value.supplierLotNumber
          : supplierLotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      parentLotId: freezed == parentLotId
          ? _value.parentLotId
          : parentLotId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAfter: freezed == createdAfter
          ? _value.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _value.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiryAfter: freezed == expiryAfter
          ? _value.expiryAfter
          : expiryAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiryBefore: freezed == expiryBefore
          ? _value.expiryBefore
          : expiryBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quarantinedAfter: freezed == quarantinedAfter
          ? _value.quarantinedAfter
          : quarantinedAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quarantinedBefore: freezed == quarantinedBefore
          ? _value.quarantinedBefore
          : quarantinedBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LotGenealogyFiltersImplCopyWith<$Res>
    implements $LotGenealogyFiltersCopyWith<$Res> {
  factory _$$LotGenealogyFiltersImplCopyWith(_$LotGenealogyFiltersImpl value,
          $Res Function(_$LotGenealogyFiltersImpl) then) =
      __$$LotGenealogyFiltersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? itemId,
      String? locationId,
      String? status,
      String? lotNumber,
      String? supplierLotNumber,
      String? parentLotId,
      DateTime? createdAfter,
      DateTime? createdBefore,
      DateTime? expiryAfter,
      DateTime? expiryBefore,
      DateTime? quarantinedAfter,
      DateTime? quarantinedBefore,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class __$$LotGenealogyFiltersImplCopyWithImpl<$Res>
    extends _$LotGenealogyFiltersCopyWithImpl<$Res, _$LotGenealogyFiltersImpl>
    implements _$$LotGenealogyFiltersImplCopyWith<$Res> {
  __$$LotGenealogyFiltersImplCopyWithImpl(_$LotGenealogyFiltersImpl _value,
      $Res Function(_$LotGenealogyFiltersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = freezed,
    Object? locationId = freezed,
    Object? status = freezed,
    Object? lotNumber = freezed,
    Object? supplierLotNumber = freezed,
    Object? parentLotId = freezed,
    Object? createdAfter = freezed,
    Object? createdBefore = freezed,
    Object? expiryAfter = freezed,
    Object? expiryBefore = freezed,
    Object? quarantinedAfter = freezed,
    Object? quarantinedBefore = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_$LotGenealogyFiltersImpl(
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierLotNumber: freezed == supplierLotNumber
          ? _value.supplierLotNumber
          : supplierLotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      parentLotId: freezed == parentLotId
          ? _value.parentLotId
          : parentLotId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAfter: freezed == createdAfter
          ? _value.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _value.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiryAfter: freezed == expiryAfter
          ? _value.expiryAfter
          : expiryAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiryBefore: freezed == expiryBefore
          ? _value.expiryBefore
          : expiryBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quarantinedAfter: freezed == quarantinedAfter
          ? _value.quarantinedAfter
          : quarantinedAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quarantinedBefore: freezed == quarantinedBefore
          ? _value.quarantinedBefore
          : quarantinedBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LotGenealogyFiltersImpl extends _LotGenealogyFilters {
  const _$LotGenealogyFiltersImpl(
      {this.itemId,
      this.locationId,
      this.status,
      this.lotNumber,
      this.supplierLotNumber,
      this.parentLotId,
      this.createdAfter,
      this.createdBefore,
      this.expiryAfter,
      this.expiryBefore,
      this.quarantinedAfter,
      this.quarantinedBefore,
      this.page,
      this.limit,
      this.sortBy,
      this.sortOrder})
      : super._();

  factory _$LotGenealogyFiltersImpl.fromJson(Map<String, dynamic> json) =>
      _$$LotGenealogyFiltersImplFromJson(json);

  @override
  final String? itemId;
  @override
  final String? locationId;
  @override
  final String? status;
  @override
  final String? lotNumber;
  @override
  final String? supplierLotNumber;
  @override
  final String? parentLotId;
  @override
  final DateTime? createdAfter;
  @override
  final DateTime? createdBefore;
  @override
  final DateTime? expiryAfter;
  @override
  final DateTime? expiryBefore;
  @override
  final DateTime? quarantinedAfter;
  @override
  final DateTime? quarantinedBefore;
  @override
  final int? page;
  @override
  final int? limit;
  @override
  final String? sortBy;
  @override
  final String? sortOrder;

  @override
  String toString() {
    return 'LotGenealogyFilters(itemId: $itemId, locationId: $locationId, status: $status, lotNumber: $lotNumber, supplierLotNumber: $supplierLotNumber, parentLotId: $parentLotId, createdAfter: $createdAfter, createdBefore: $createdBefore, expiryAfter: $expiryAfter, expiryBefore: $expiryBefore, quarantinedAfter: $quarantinedAfter, quarantinedBefore: $quarantinedBefore, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotGenealogyFiltersImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.supplierLotNumber, supplierLotNumber) ||
                other.supplierLotNumber == supplierLotNumber) &&
            (identical(other.parentLotId, parentLotId) ||
                other.parentLotId == parentLotId) &&
            (identical(other.createdAfter, createdAfter) ||
                other.createdAfter == createdAfter) &&
            (identical(other.createdBefore, createdBefore) ||
                other.createdBefore == createdBefore) &&
            (identical(other.expiryAfter, expiryAfter) ||
                other.expiryAfter == expiryAfter) &&
            (identical(other.expiryBefore, expiryBefore) ||
                other.expiryBefore == expiryBefore) &&
            (identical(other.quarantinedAfter, quarantinedAfter) ||
                other.quarantinedAfter == quarantinedAfter) &&
            (identical(other.quarantinedBefore, quarantinedBefore) ||
                other.quarantinedBefore == quarantinedBefore) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itemId,
      locationId,
      status,
      lotNumber,
      supplierLotNumber,
      parentLotId,
      createdAfter,
      createdBefore,
      expiryAfter,
      expiryBefore,
      quarantinedAfter,
      quarantinedBefore,
      page,
      limit,
      sortBy,
      sortOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotGenealogyFiltersImplCopyWith<_$LotGenealogyFiltersImpl> get copyWith =>
      __$$LotGenealogyFiltersImplCopyWithImpl<_$LotGenealogyFiltersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LotGenealogyFiltersImplToJson(
      this,
    );
  }
}

abstract class _LotGenealogyFilters extends LotGenealogyFilters {
  const factory _LotGenealogyFilters(
      {final String? itemId,
      final String? locationId,
      final String? status,
      final String? lotNumber,
      final String? supplierLotNumber,
      final String? parentLotId,
      final DateTime? createdAfter,
      final DateTime? createdBefore,
      final DateTime? expiryAfter,
      final DateTime? expiryBefore,
      final DateTime? quarantinedAfter,
      final DateTime? quarantinedBefore,
      final int? page,
      final int? limit,
      final String? sortBy,
      final String? sortOrder}) = _$LotGenealogyFiltersImpl;
  const _LotGenealogyFilters._() : super._();

  factory _LotGenealogyFilters.fromJson(Map<String, dynamic> json) =
      _$LotGenealogyFiltersImpl.fromJson;

  @override
  String? get itemId;
  @override
  String? get locationId;
  @override
  String? get status;
  @override
  String? get lotNumber;
  @override
  String? get supplierLotNumber;
  @override
  String? get parentLotId;
  @override
  DateTime? get createdAfter;
  @override
  DateTime? get createdBefore;
  @override
  DateTime? get expiryAfter;
  @override
  DateTime? get expiryBefore;
  @override
  DateTime? get quarantinedAfter;
  @override
  DateTime? get quarantinedBefore;
  @override
  int? get page;
  @override
  int? get limit;
  @override
  String? get sortBy;
  @override
  String? get sortOrder;
  @override
  @JsonKey(ignore: true)
  _$$LotGenealogyFiltersImplCopyWith<_$LotGenealogyFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LotTrackingHistoryFilters _$LotTrackingHistoryFiltersFromJson(
    Map<String, dynamic> json) {
  return _LotTrackingHistoryFilters.fromJson(json);
}

/// @nodoc
mixin _$LotTrackingHistoryFilters {
  String? get lotId => throw _privateConstructorUsedError;
  String? get eventType => throw _privateConstructorUsedError;
  String? get fromLocationId => throw _privateConstructorUsedError;
  String? get toLocationId => throw _privateConstructorUsedError;
  String? get referenceType => throw _privateConstructorUsedError;
  String? get referenceId => throw _privateConstructorUsedError;
  String? get performedBy => throw _privateConstructorUsedError;
  DateTime? get eventAfter => throw _privateConstructorUsedError;
  DateTime? get eventBefore => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String? get sortBy => throw _privateConstructorUsedError;
  String? get sortOrder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LotTrackingHistoryFiltersCopyWith<LotTrackingHistoryFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotTrackingHistoryFiltersCopyWith<$Res> {
  factory $LotTrackingHistoryFiltersCopyWith(LotTrackingHistoryFilters value,
          $Res Function(LotTrackingHistoryFilters) then) =
      _$LotTrackingHistoryFiltersCopyWithImpl<$Res, LotTrackingHistoryFilters>;
  @useResult
  $Res call(
      {String? lotId,
      String? eventType,
      String? fromLocationId,
      String? toLocationId,
      String? referenceType,
      String? referenceId,
      String? performedBy,
      DateTime? eventAfter,
      DateTime? eventBefore,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class _$LotTrackingHistoryFiltersCopyWithImpl<$Res,
        $Val extends LotTrackingHistoryFilters>
    implements $LotTrackingHistoryFiltersCopyWith<$Res> {
  _$LotTrackingHistoryFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotId = freezed,
    Object? eventType = freezed,
    Object? fromLocationId = freezed,
    Object? toLocationId = freezed,
    Object? referenceType = freezed,
    Object? referenceId = freezed,
    Object? performedBy = freezed,
    Object? eventAfter = freezed,
    Object? eventBefore = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_value.copyWith(
      lotId: freezed == lotId
          ? _value.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
              as String?,
      eventType: freezed == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String?,
      fromLocationId: freezed == fromLocationId
          ? _value.fromLocationId
          : fromLocationId // ignore: cast_nullable_to_non_nullable
              as String?,
      toLocationId: freezed == toLocationId
          ? _value.toLocationId
          : toLocationId // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceType: freezed == referenceType
          ? _value.referenceType
          : referenceType // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      performedBy: freezed == performedBy
          ? _value.performedBy
          : performedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      eventAfter: freezed == eventAfter
          ? _value.eventAfter
          : eventAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      eventBefore: freezed == eventBefore
          ? _value.eventBefore
          : eventBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LotTrackingHistoryFiltersImplCopyWith<$Res>
    implements $LotTrackingHistoryFiltersCopyWith<$Res> {
  factory _$$LotTrackingHistoryFiltersImplCopyWith(
          _$LotTrackingHistoryFiltersImpl value,
          $Res Function(_$LotTrackingHistoryFiltersImpl) then) =
      __$$LotTrackingHistoryFiltersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? lotId,
      String? eventType,
      String? fromLocationId,
      String? toLocationId,
      String? referenceType,
      String? referenceId,
      String? performedBy,
      DateTime? eventAfter,
      DateTime? eventBefore,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class __$$LotTrackingHistoryFiltersImplCopyWithImpl<$Res>
    extends _$LotTrackingHistoryFiltersCopyWithImpl<$Res,
        _$LotTrackingHistoryFiltersImpl>
    implements _$$LotTrackingHistoryFiltersImplCopyWith<$Res> {
  __$$LotTrackingHistoryFiltersImplCopyWithImpl(
      _$LotTrackingHistoryFiltersImpl _value,
      $Res Function(_$LotTrackingHistoryFiltersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotId = freezed,
    Object? eventType = freezed,
    Object? fromLocationId = freezed,
    Object? toLocationId = freezed,
    Object? referenceType = freezed,
    Object? referenceId = freezed,
    Object? performedBy = freezed,
    Object? eventAfter = freezed,
    Object? eventBefore = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_$LotTrackingHistoryFiltersImpl(
      lotId: freezed == lotId
          ? _value.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
              as String?,
      eventType: freezed == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String?,
      fromLocationId: freezed == fromLocationId
          ? _value.fromLocationId
          : fromLocationId // ignore: cast_nullable_to_non_nullable
              as String?,
      toLocationId: freezed == toLocationId
          ? _value.toLocationId
          : toLocationId // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceType: freezed == referenceType
          ? _value.referenceType
          : referenceType // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      performedBy: freezed == performedBy
          ? _value.performedBy
          : performedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      eventAfter: freezed == eventAfter
          ? _value.eventAfter
          : eventAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      eventBefore: freezed == eventBefore
          ? _value.eventBefore
          : eventBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LotTrackingHistoryFiltersImpl extends _LotTrackingHistoryFilters {
  const _$LotTrackingHistoryFiltersImpl(
      {this.lotId,
      this.eventType,
      this.fromLocationId,
      this.toLocationId,
      this.referenceType,
      this.referenceId,
      this.performedBy,
      this.eventAfter,
      this.eventBefore,
      this.page,
      this.limit,
      this.sortBy,
      this.sortOrder})
      : super._();

  factory _$LotTrackingHistoryFiltersImpl.fromJson(Map<String, dynamic> json) =>
      _$$LotTrackingHistoryFiltersImplFromJson(json);

  @override
  final String? lotId;
  @override
  final String? eventType;
  @override
  final String? fromLocationId;
  @override
  final String? toLocationId;
  @override
  final String? referenceType;
  @override
  final String? referenceId;
  @override
  final String? performedBy;
  @override
  final DateTime? eventAfter;
  @override
  final DateTime? eventBefore;
  @override
  final int? page;
  @override
  final int? limit;
  @override
  final String? sortBy;
  @override
  final String? sortOrder;

  @override
  String toString() {
    return 'LotTrackingHistoryFilters(lotId: $lotId, eventType: $eventType, fromLocationId: $fromLocationId, toLocationId: $toLocationId, referenceType: $referenceType, referenceId: $referenceId, performedBy: $performedBy, eventAfter: $eventAfter, eventBefore: $eventBefore, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotTrackingHistoryFiltersImpl &&
            (identical(other.lotId, lotId) || other.lotId == lotId) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.fromLocationId, fromLocationId) ||
                other.fromLocationId == fromLocationId) &&
            (identical(other.toLocationId, toLocationId) ||
                other.toLocationId == toLocationId) &&
            (identical(other.referenceType, referenceType) ||
                other.referenceType == referenceType) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.performedBy, performedBy) ||
                other.performedBy == performedBy) &&
            (identical(other.eventAfter, eventAfter) ||
                other.eventAfter == eventAfter) &&
            (identical(other.eventBefore, eventBefore) ||
                other.eventBefore == eventBefore) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lotId,
      eventType,
      fromLocationId,
      toLocationId,
      referenceType,
      referenceId,
      performedBy,
      eventAfter,
      eventBefore,
      page,
      limit,
      sortBy,
      sortOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotTrackingHistoryFiltersImplCopyWith<_$LotTrackingHistoryFiltersImpl>
      get copyWith => __$$LotTrackingHistoryFiltersImplCopyWithImpl<
          _$LotTrackingHistoryFiltersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LotTrackingHistoryFiltersImplToJson(
      this,
    );
  }
}

abstract class _LotTrackingHistoryFilters extends LotTrackingHistoryFilters {
  const factory _LotTrackingHistoryFilters(
      {final String? lotId,
      final String? eventType,
      final String? fromLocationId,
      final String? toLocationId,
      final String? referenceType,
      final String? referenceId,
      final String? performedBy,
      final DateTime? eventAfter,
      final DateTime? eventBefore,
      final int? page,
      final int? limit,
      final String? sortBy,
      final String? sortOrder}) = _$LotTrackingHistoryFiltersImpl;
  const _LotTrackingHistoryFilters._() : super._();

  factory _LotTrackingHistoryFilters.fromJson(Map<String, dynamic> json) =
      _$LotTrackingHistoryFiltersImpl.fromJson;

  @override
  String? get lotId;
  @override
  String? get eventType;
  @override
  String? get fromLocationId;
  @override
  String? get toLocationId;
  @override
  String? get referenceType;
  @override
  String? get referenceId;
  @override
  String? get performedBy;
  @override
  DateTime? get eventAfter;
  @override
  DateTime? get eventBefore;
  @override
  int? get page;
  @override
  int? get limit;
  @override
  String? get sortBy;
  @override
  String? get sortOrder;
  @override
  @JsonKey(ignore: true)
  _$$LotTrackingHistoryFiltersImplCopyWith<_$LotTrackingHistoryFiltersImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ExpiringLot _$ExpiringLotFromJson(Map<String, dynamic> json) {
  return _ExpiringLot.fromJson(json);
}

/// @nodoc
mixin _$ExpiringLot {
  String get lotId => throw _privateConstructorUsedError;
  String get lotNumber => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  String get itemName => throw _privateConstructorUsedError;
  String get locationId => throw _privateConstructorUsedError;
  String get locationName => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  DateTime get expiryDate => throw _privateConstructorUsedError;
  int get daysUntilExpiry => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpiringLotCopyWith<ExpiringLot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpiringLotCopyWith<$Res> {
  factory $ExpiringLotCopyWith(
          ExpiringLot value, $Res Function(ExpiringLot) then) =
      _$ExpiringLotCopyWithImpl<$Res, ExpiringLot>;
  @useResult
  $Res call(
      {String lotId,
      String lotNumber,
      String itemId,
      String itemName,
      String locationId,
      String locationName,
      double quantity,
      DateTime expiryDate,
      int daysUntilExpiry,
      String? status});
}

/// @nodoc
class _$ExpiringLotCopyWithImpl<$Res, $Val extends ExpiringLot>
    implements $ExpiringLotCopyWith<$Res> {
  _$ExpiringLotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotId = null,
    Object? lotNumber = null,
    Object? itemId = null,
    Object? itemName = null,
    Object? locationId = null,
    Object? locationName = null,
    Object? quantity = null,
    Object? expiryDate = null,
    Object? daysUntilExpiry = null,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      lotId: null == lotId
          ? _value.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
              as String,
      lotNumber: null == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      daysUntilExpiry: null == daysUntilExpiry
          ? _value.daysUntilExpiry
          : daysUntilExpiry // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpiringLotImplCopyWith<$Res>
    implements $ExpiringLotCopyWith<$Res> {
  factory _$$ExpiringLotImplCopyWith(
          _$ExpiringLotImpl value, $Res Function(_$ExpiringLotImpl) then) =
      __$$ExpiringLotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String lotId,
      String lotNumber,
      String itemId,
      String itemName,
      String locationId,
      String locationName,
      double quantity,
      DateTime expiryDate,
      int daysUntilExpiry,
      String? status});
}

/// @nodoc
class __$$ExpiringLotImplCopyWithImpl<$Res>
    extends _$ExpiringLotCopyWithImpl<$Res, _$ExpiringLotImpl>
    implements _$$ExpiringLotImplCopyWith<$Res> {
  __$$ExpiringLotImplCopyWithImpl(
      _$ExpiringLotImpl _value, $Res Function(_$ExpiringLotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotId = null,
    Object? lotNumber = null,
    Object? itemId = null,
    Object? itemName = null,
    Object? locationId = null,
    Object? locationName = null,
    Object? quantity = null,
    Object? expiryDate = null,
    Object? daysUntilExpiry = null,
    Object? status = freezed,
  }) {
    return _then(_$ExpiringLotImpl(
      lotId: null == lotId
          ? _value.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
              as String,
      lotNumber: null == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      daysUntilExpiry: null == daysUntilExpiry
          ? _value.daysUntilExpiry
          : daysUntilExpiry // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpiringLotImpl implements _ExpiringLot {
  const _$ExpiringLotImpl(
      {required this.lotId,
      required this.lotNumber,
      required this.itemId,
      required this.itemName,
      required this.locationId,
      required this.locationName,
      required this.quantity,
      required this.expiryDate,
      required this.daysUntilExpiry,
      this.status});

  factory _$ExpiringLotImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpiringLotImplFromJson(json);

  @override
  final String lotId;
  @override
  final String lotNumber;
  @override
  final String itemId;
  @override
  final String itemName;
  @override
  final String locationId;
  @override
  final String locationName;
  @override
  final double quantity;
  @override
  final DateTime expiryDate;
  @override
  final int daysUntilExpiry;
  @override
  final String? status;

  @override
  String toString() {
    return 'ExpiringLot(lotId: $lotId, lotNumber: $lotNumber, itemId: $itemId, itemName: $itemName, locationId: $locationId, locationName: $locationName, quantity: $quantity, expiryDate: $expiryDate, daysUntilExpiry: $daysUntilExpiry, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpiringLotImpl &&
            (identical(other.lotId, lotId) || other.lotId == lotId) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.daysUntilExpiry, daysUntilExpiry) ||
                other.daysUntilExpiry == daysUntilExpiry) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lotId,
      lotNumber,
      itemId,
      itemName,
      locationId,
      locationName,
      quantity,
      expiryDate,
      daysUntilExpiry,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpiringLotImplCopyWith<_$ExpiringLotImpl> get copyWith =>
      __$$ExpiringLotImplCopyWithImpl<_$ExpiringLotImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpiringLotImplToJson(
      this,
    );
  }
}

abstract class _ExpiringLot implements ExpiringLot {
  const factory _ExpiringLot(
      {required final String lotId,
      required final String lotNumber,
      required final String itemId,
      required final String itemName,
      required final String locationId,
      required final String locationName,
      required final double quantity,
      required final DateTime expiryDate,
      required final int daysUntilExpiry,
      final String? status}) = _$ExpiringLotImpl;

  factory _ExpiringLot.fromJson(Map<String, dynamic> json) =
      _$ExpiringLotImpl.fromJson;

  @override
  String get lotId;
  @override
  String get lotNumber;
  @override
  String get itemId;
  @override
  String get itemName;
  @override
  String get locationId;
  @override
  String get locationName;
  @override
  double get quantity;
  @override
  DateTime get expiryDate;
  @override
  int get daysUntilExpiry;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$ExpiringLotImplCopyWith<_$ExpiringLotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
