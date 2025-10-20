// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_adjustment_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StockAdjustment _$StockAdjustmentFromJson(Map<String, dynamic> json) {
  return _StockAdjustment.fromJson(json);
}

/// @nodoc
mixin _$StockAdjustment {
  String get id => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  String get locationId => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  String get type =>
      throw _privateConstructorUsedError; // 'increase', 'decrease'
  String get reason =>
      throw _privateConstructorUsedError; // 'damage', 'theft', 'obsolete', 'found', 'correction', 'other'
  String get status =>
      throw _privateConstructorUsedError; // 'draft', 'pending_approval', 'approved', 'rejected', 'posted'
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String? get referenceNumber => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  String? get approvedBy => throw _privateConstructorUsedError;
  String? get rejectedBy => throw _privateConstructorUsedError;
  String? get postedBy => throw _privateConstructorUsedError;
  DateTime? get approvedAt => throw _privateConstructorUsedError;
  DateTime? get rejectedAt => throw _privateConstructorUsedError;
  DateTime? get postedAt => throw _privateConstructorUsedError;
  String? get rejectionReason => throw _privateConstructorUsedError;
  String? get lotNumber => throw _privateConstructorUsedError;
  String? get serialNumber => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockAdjustmentCopyWith<StockAdjustment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockAdjustmentCopyWith<$Res> {
  factory $StockAdjustmentCopyWith(
          StockAdjustment value, $Res Function(StockAdjustment) then) =
      _$StockAdjustmentCopyWithImpl<$Res, StockAdjustment>;
  @useResult
  $Res call(
      {String id,
      String itemId,
      String locationId,
      double quantity,
      double value,
      String type,
      String reason,
      String status,
      DateTime createdAt,
      DateTime updatedAt,
      String? referenceNumber,
      String? notes,
      String? createdBy,
      String? approvedBy,
      String? rejectedBy,
      String? postedBy,
      DateTime? approvedAt,
      DateTime? rejectedAt,
      DateTime? postedAt,
      String? rejectionReason,
      String? lotNumber,
      String? serialNumber,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$StockAdjustmentCopyWithImpl<$Res, $Val extends StockAdjustment>
    implements $StockAdjustmentCopyWith<$Res> {
  _$StockAdjustmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? itemId = null,
    Object? locationId = null,
    Object? quantity = null,
    Object? value = null,
    Object? type = null,
    Object? reason = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? referenceNumber = freezed,
    Object? notes = freezed,
    Object? createdBy = freezed,
    Object? approvedBy = freezed,
    Object? rejectedBy = freezed,
    Object? postedBy = freezed,
    Object? approvedAt = freezed,
    Object? rejectedAt = freezed,
    Object? postedAt = freezed,
    Object? rejectionReason = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
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
      referenceNumber: freezed == referenceNumber
          ? _value.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectedBy: freezed == rejectedBy
          ? _value.rejectedBy
          : rejectedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      postedBy: freezed == postedBy
          ? _value.postedBy
          : postedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _value.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      postedAt: freezed == postedAt
          ? _value.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockAdjustmentImplCopyWith<$Res>
    implements $StockAdjustmentCopyWith<$Res> {
  factory _$$StockAdjustmentImplCopyWith(_$StockAdjustmentImpl value,
          $Res Function(_$StockAdjustmentImpl) then) =
      __$$StockAdjustmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String itemId,
      String locationId,
      double quantity,
      double value,
      String type,
      String reason,
      String status,
      DateTime createdAt,
      DateTime updatedAt,
      String? referenceNumber,
      String? notes,
      String? createdBy,
      String? approvedBy,
      String? rejectedBy,
      String? postedBy,
      DateTime? approvedAt,
      DateTime? rejectedAt,
      DateTime? postedAt,
      String? rejectionReason,
      String? lotNumber,
      String? serialNumber,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$StockAdjustmentImplCopyWithImpl<$Res>
    extends _$StockAdjustmentCopyWithImpl<$Res, _$StockAdjustmentImpl>
    implements _$$StockAdjustmentImplCopyWith<$Res> {
  __$$StockAdjustmentImplCopyWithImpl(
      _$StockAdjustmentImpl _value, $Res Function(_$StockAdjustmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? itemId = null,
    Object? locationId = null,
    Object? quantity = null,
    Object? value = null,
    Object? type = null,
    Object? reason = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? referenceNumber = freezed,
    Object? notes = freezed,
    Object? createdBy = freezed,
    Object? approvedBy = freezed,
    Object? rejectedBy = freezed,
    Object? postedBy = freezed,
    Object? approvedAt = freezed,
    Object? rejectedAt = freezed,
    Object? postedAt = freezed,
    Object? rejectionReason = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$StockAdjustmentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
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
      referenceNumber: freezed == referenceNumber
          ? _value.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectedBy: freezed == rejectedBy
          ? _value.rejectedBy
          : rejectedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      postedBy: freezed == postedBy
          ? _value.postedBy
          : postedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _value.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      postedAt: freezed == postedAt
          ? _value.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
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
class _$StockAdjustmentImpl implements _StockAdjustment {
  const _$StockAdjustmentImpl(
      {required this.id,
      required this.itemId,
      required this.locationId,
      required this.quantity,
      required this.value,
      required this.type,
      required this.reason,
      required this.status,
      required this.createdAt,
      required this.updatedAt,
      this.referenceNumber,
      this.notes,
      this.createdBy,
      this.approvedBy,
      this.rejectedBy,
      this.postedBy,
      this.approvedAt,
      this.rejectedAt,
      this.postedAt,
      this.rejectionReason,
      this.lotNumber,
      this.serialNumber,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$StockAdjustmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockAdjustmentImplFromJson(json);

  @override
  final String id;
  @override
  final String itemId;
  @override
  final String locationId;
  @override
  final double quantity;
  @override
  final double value;
  @override
  final String type;
// 'increase', 'decrease'
  @override
  final String reason;
// 'damage', 'theft', 'obsolete', 'found', 'correction', 'other'
  @override
  final String status;
// 'draft', 'pending_approval', 'approved', 'rejected', 'posted'
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String? referenceNumber;
  @override
  final String? notes;
  @override
  final String? createdBy;
  @override
  final String? approvedBy;
  @override
  final String? rejectedBy;
  @override
  final String? postedBy;
  @override
  final DateTime? approvedAt;
  @override
  final DateTime? rejectedAt;
  @override
  final DateTime? postedAt;
  @override
  final String? rejectionReason;
  @override
  final String? lotNumber;
  @override
  final String? serialNumber;
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
    return 'StockAdjustment(id: $id, itemId: $itemId, locationId: $locationId, quantity: $quantity, value: $value, type: $type, reason: $reason, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, referenceNumber: $referenceNumber, notes: $notes, createdBy: $createdBy, approvedBy: $approvedBy, rejectedBy: $rejectedBy, postedBy: $postedBy, approvedAt: $approvedAt, rejectedAt: $rejectedAt, postedAt: $postedAt, rejectionReason: $rejectionReason, lotNumber: $lotNumber, serialNumber: $serialNumber, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockAdjustmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.referenceNumber, referenceNumber) ||
                other.referenceNumber == referenceNumber) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.approvedBy, approvedBy) ||
                other.approvedBy == approvedBy) &&
            (identical(other.rejectedBy, rejectedBy) ||
                other.rejectedBy == rejectedBy) &&
            (identical(other.postedBy, postedBy) ||
                other.postedBy == postedBy) &&
            (identical(other.approvedAt, approvedAt) ||
                other.approvedAt == approvedAt) &&
            (identical(other.rejectedAt, rejectedAt) ||
                other.rejectedAt == rejectedAt) &&
            (identical(other.postedAt, postedAt) ||
                other.postedAt == postedAt) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        itemId,
        locationId,
        quantity,
        value,
        type,
        reason,
        status,
        createdAt,
        updatedAt,
        referenceNumber,
        notes,
        createdBy,
        approvedBy,
        rejectedBy,
        postedBy,
        approvedAt,
        rejectedAt,
        postedAt,
        rejectionReason,
        lotNumber,
        serialNumber,
        const DeepCollectionEquality().hash(_metadata)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockAdjustmentImplCopyWith<_$StockAdjustmentImpl> get copyWith =>
      __$$StockAdjustmentImplCopyWithImpl<_$StockAdjustmentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockAdjustmentImplToJson(
      this,
    );
  }
}

abstract class _StockAdjustment implements StockAdjustment {
  const factory _StockAdjustment(
      {required final String id,
      required final String itemId,
      required final String locationId,
      required final double quantity,
      required final double value,
      required final String type,
      required final String reason,
      required final String status,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final String? referenceNumber,
      final String? notes,
      final String? createdBy,
      final String? approvedBy,
      final String? rejectedBy,
      final String? postedBy,
      final DateTime? approvedAt,
      final DateTime? rejectedAt,
      final DateTime? postedAt,
      final String? rejectionReason,
      final String? lotNumber,
      final String? serialNumber,
      final Map<String, dynamic>? metadata}) = _$StockAdjustmentImpl;

  factory _StockAdjustment.fromJson(Map<String, dynamic> json) =
      _$StockAdjustmentImpl.fromJson;

  @override
  String get id;
  @override
  String get itemId;
  @override
  String get locationId;
  @override
  double get quantity;
  @override
  double get value;
  @override
  String get type;
  @override // 'increase', 'decrease'
  String get reason;
  @override // 'damage', 'theft', 'obsolete', 'found', 'correction', 'other'
  String get status;
  @override // 'draft', 'pending_approval', 'approved', 'rejected', 'posted'
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String? get referenceNumber;
  @override
  String? get notes;
  @override
  String? get createdBy;
  @override
  String? get approvedBy;
  @override
  String? get rejectedBy;
  @override
  String? get postedBy;
  @override
  DateTime? get approvedAt;
  @override
  DateTime? get rejectedAt;
  @override
  DateTime? get postedAt;
  @override
  String? get rejectionReason;
  @override
  String? get lotNumber;
  @override
  String? get serialNumber;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$StockAdjustmentImplCopyWith<_$StockAdjustmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StockAdjustmentItem _$StockAdjustmentItemFromJson(Map<String, dynamic> json) {
  return _StockAdjustmentItem.fromJson(json);
}

/// @nodoc
mixin _$StockAdjustmentItem {
  String get id => throw _privateConstructorUsedError;
  String get stockAdjustmentId => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  String get locationId => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  double get unitCost => throw _privateConstructorUsedError;
  double get totalValue => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get lotNumber => throw _privateConstructorUsedError;
  String? get serialNumber => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockAdjustmentItemCopyWith<StockAdjustmentItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockAdjustmentItemCopyWith<$Res> {
  factory $StockAdjustmentItemCopyWith(
          StockAdjustmentItem value, $Res Function(StockAdjustmentItem) then) =
      _$StockAdjustmentItemCopyWithImpl<$Res, StockAdjustmentItem>;
  @useResult
  $Res call(
      {String id,
      String stockAdjustmentId,
      String itemId,
      String locationId,
      double quantity,
      double unitCost,
      double totalValue,
      String? reason,
      String? notes,
      String? lotNumber,
      String? serialNumber,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$StockAdjustmentItemCopyWithImpl<$Res, $Val extends StockAdjustmentItem>
    implements $StockAdjustmentItemCopyWith<$Res> {
  _$StockAdjustmentItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stockAdjustmentId = null,
    Object? itemId = null,
    Object? locationId = null,
    Object? quantity = null,
    Object? unitCost = null,
    Object? totalValue = null,
    Object? reason = freezed,
    Object? notes = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stockAdjustmentId: null == stockAdjustmentId
          ? _value.stockAdjustmentId
          : stockAdjustmentId // ignore: cast_nullable_to_non_nullable
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
      unitCost: null == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double,
      totalValue: null == totalValue
          ? _value.totalValue
          : totalValue // ignore: cast_nullable_to_non_nullable
              as double,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockAdjustmentItemImplCopyWith<$Res>
    implements $StockAdjustmentItemCopyWith<$Res> {
  factory _$$StockAdjustmentItemImplCopyWith(_$StockAdjustmentItemImpl value,
          $Res Function(_$StockAdjustmentItemImpl) then) =
      __$$StockAdjustmentItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String stockAdjustmentId,
      String itemId,
      String locationId,
      double quantity,
      double unitCost,
      double totalValue,
      String? reason,
      String? notes,
      String? lotNumber,
      String? serialNumber,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$StockAdjustmentItemImplCopyWithImpl<$Res>
    extends _$StockAdjustmentItemCopyWithImpl<$Res, _$StockAdjustmentItemImpl>
    implements _$$StockAdjustmentItemImplCopyWith<$Res> {
  __$$StockAdjustmentItemImplCopyWithImpl(_$StockAdjustmentItemImpl _value,
      $Res Function(_$StockAdjustmentItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stockAdjustmentId = null,
    Object? itemId = null,
    Object? locationId = null,
    Object? quantity = null,
    Object? unitCost = null,
    Object? totalValue = null,
    Object? reason = freezed,
    Object? notes = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$StockAdjustmentItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stockAdjustmentId: null == stockAdjustmentId
          ? _value.stockAdjustmentId
          : stockAdjustmentId // ignore: cast_nullable_to_non_nullable
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
      unitCost: null == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double,
      totalValue: null == totalValue
          ? _value.totalValue
          : totalValue // ignore: cast_nullable_to_non_nullable
              as double,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
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
class _$StockAdjustmentItemImpl implements _StockAdjustmentItem {
  const _$StockAdjustmentItemImpl(
      {required this.id,
      required this.stockAdjustmentId,
      required this.itemId,
      required this.locationId,
      required this.quantity,
      required this.unitCost,
      required this.totalValue,
      this.reason,
      this.notes,
      this.lotNumber,
      this.serialNumber,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$StockAdjustmentItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockAdjustmentItemImplFromJson(json);

  @override
  final String id;
  @override
  final String stockAdjustmentId;
  @override
  final String itemId;
  @override
  final String locationId;
  @override
  final double quantity;
  @override
  final double unitCost;
  @override
  final double totalValue;
  @override
  final String? reason;
  @override
  final String? notes;
  @override
  final String? lotNumber;
  @override
  final String? serialNumber;
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
    return 'StockAdjustmentItem(id: $id, stockAdjustmentId: $stockAdjustmentId, itemId: $itemId, locationId: $locationId, quantity: $quantity, unitCost: $unitCost, totalValue: $totalValue, reason: $reason, notes: $notes, lotNumber: $lotNumber, serialNumber: $serialNumber, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockAdjustmentItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stockAdjustmentId, stockAdjustmentId) ||
                other.stockAdjustmentId == stockAdjustmentId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.totalValue, totalValue) ||
                other.totalValue == totalValue) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      stockAdjustmentId,
      itemId,
      locationId,
      quantity,
      unitCost,
      totalValue,
      reason,
      notes,
      lotNumber,
      serialNumber,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockAdjustmentItemImplCopyWith<_$StockAdjustmentItemImpl> get copyWith =>
      __$$StockAdjustmentItemImplCopyWithImpl<_$StockAdjustmentItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockAdjustmentItemImplToJson(
      this,
    );
  }
}

abstract class _StockAdjustmentItem implements StockAdjustmentItem {
  const factory _StockAdjustmentItem(
      {required final String id,
      required final String stockAdjustmentId,
      required final String itemId,
      required final String locationId,
      required final double quantity,
      required final double unitCost,
      required final double totalValue,
      final String? reason,
      final String? notes,
      final String? lotNumber,
      final String? serialNumber,
      final Map<String, dynamic>? metadata}) = _$StockAdjustmentItemImpl;

  factory _StockAdjustmentItem.fromJson(Map<String, dynamic> json) =
      _$StockAdjustmentItemImpl.fromJson;

  @override
  String get id;
  @override
  String get stockAdjustmentId;
  @override
  String get itemId;
  @override
  String get locationId;
  @override
  double get quantity;
  @override
  double get unitCost;
  @override
  double get totalValue;
  @override
  String? get reason;
  @override
  String? get notes;
  @override
  String? get lotNumber;
  @override
  String? get serialNumber;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$StockAdjustmentItemImplCopyWith<_$StockAdjustmentItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateStockAdjustmentRequest _$CreateStockAdjustmentRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateStockAdjustmentRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateStockAdjustmentRequest {
  String get itemId => throw _privateConstructorUsedError;
  String get locationId => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  String? get referenceNumber => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get lotNumber => throw _privateConstructorUsedError;
  String? get serialNumber => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateStockAdjustmentRequestCopyWith<CreateStockAdjustmentRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateStockAdjustmentRequestCopyWith<$Res> {
  factory $CreateStockAdjustmentRequestCopyWith(
          CreateStockAdjustmentRequest value,
          $Res Function(CreateStockAdjustmentRequest) then) =
      _$CreateStockAdjustmentRequestCopyWithImpl<$Res,
          CreateStockAdjustmentRequest>;
  @useResult
  $Res call(
      {String itemId,
      String locationId,
      double quantity,
      String type,
      String reason,
      String? referenceNumber,
      String? notes,
      String? lotNumber,
      String? serialNumber,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$CreateStockAdjustmentRequestCopyWithImpl<$Res,
        $Val extends CreateStockAdjustmentRequest>
    implements $CreateStockAdjustmentRequestCopyWith<$Res> {
  _$CreateStockAdjustmentRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? locationId = null,
    Object? quantity = null,
    Object? type = null,
    Object? reason = null,
    Object? referenceNumber = freezed,
    Object? notes = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      referenceNumber: freezed == referenceNumber
          ? _value.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateStockAdjustmentRequestImplCopyWith<$Res>
    implements $CreateStockAdjustmentRequestCopyWith<$Res> {
  factory _$$CreateStockAdjustmentRequestImplCopyWith(
          _$CreateStockAdjustmentRequestImpl value,
          $Res Function(_$CreateStockAdjustmentRequestImpl) then) =
      __$$CreateStockAdjustmentRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String itemId,
      String locationId,
      double quantity,
      String type,
      String reason,
      String? referenceNumber,
      String? notes,
      String? lotNumber,
      String? serialNumber,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$CreateStockAdjustmentRequestImplCopyWithImpl<$Res>
    extends _$CreateStockAdjustmentRequestCopyWithImpl<$Res,
        _$CreateStockAdjustmentRequestImpl>
    implements _$$CreateStockAdjustmentRequestImplCopyWith<$Res> {
  __$$CreateStockAdjustmentRequestImplCopyWithImpl(
      _$CreateStockAdjustmentRequestImpl _value,
      $Res Function(_$CreateStockAdjustmentRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? locationId = null,
    Object? quantity = null,
    Object? type = null,
    Object? reason = null,
    Object? referenceNumber = freezed,
    Object? notes = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$CreateStockAdjustmentRequestImpl(
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      referenceNumber: freezed == referenceNumber
          ? _value.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
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
class _$CreateStockAdjustmentRequestImpl
    implements _CreateStockAdjustmentRequest {
  const _$CreateStockAdjustmentRequestImpl(
      {required this.itemId,
      required this.locationId,
      required this.quantity,
      required this.type,
      required this.reason,
      this.referenceNumber,
      this.notes,
      this.lotNumber,
      this.serialNumber,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$CreateStockAdjustmentRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateStockAdjustmentRequestImplFromJson(json);

  @override
  final String itemId;
  @override
  final String locationId;
  @override
  final double quantity;
  @override
  final String type;
  @override
  final String reason;
  @override
  final String? referenceNumber;
  @override
  final String? notes;
  @override
  final String? lotNumber;
  @override
  final String? serialNumber;
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
    return 'CreateStockAdjustmentRequest(itemId: $itemId, locationId: $locationId, quantity: $quantity, type: $type, reason: $reason, referenceNumber: $referenceNumber, notes: $notes, lotNumber: $lotNumber, serialNumber: $serialNumber, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateStockAdjustmentRequestImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.referenceNumber, referenceNumber) ||
                other.referenceNumber == referenceNumber) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itemId,
      locationId,
      quantity,
      type,
      reason,
      referenceNumber,
      notes,
      lotNumber,
      serialNumber,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateStockAdjustmentRequestImplCopyWith<
          _$CreateStockAdjustmentRequestImpl>
      get copyWith => __$$CreateStockAdjustmentRequestImplCopyWithImpl<
          _$CreateStockAdjustmentRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateStockAdjustmentRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateStockAdjustmentRequest
    implements CreateStockAdjustmentRequest {
  const factory _CreateStockAdjustmentRequest(
          {required final String itemId,
          required final String locationId,
          required final double quantity,
          required final String type,
          required final String reason,
          final String? referenceNumber,
          final String? notes,
          final String? lotNumber,
          final String? serialNumber,
          final Map<String, dynamic>? metadata}) =
      _$CreateStockAdjustmentRequestImpl;

  factory _CreateStockAdjustmentRequest.fromJson(Map<String, dynamic> json) =
      _$CreateStockAdjustmentRequestImpl.fromJson;

  @override
  String get itemId;
  @override
  String get locationId;
  @override
  double get quantity;
  @override
  String get type;
  @override
  String get reason;
  @override
  String? get referenceNumber;
  @override
  String? get notes;
  @override
  String? get lotNumber;
  @override
  String? get serialNumber;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$CreateStockAdjustmentRequestImplCopyWith<
          _$CreateStockAdjustmentRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateStockAdjustmentRequest _$UpdateStockAdjustmentRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateStockAdjustmentRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateStockAdjustmentRequest {
  double? get quantity => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String? get referenceNumber => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get lotNumber => throw _privateConstructorUsedError;
  String? get serialNumber => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateStockAdjustmentRequestCopyWith<UpdateStockAdjustmentRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStockAdjustmentRequestCopyWith<$Res> {
  factory $UpdateStockAdjustmentRequestCopyWith(
          UpdateStockAdjustmentRequest value,
          $Res Function(UpdateStockAdjustmentRequest) then) =
      _$UpdateStockAdjustmentRequestCopyWithImpl<$Res,
          UpdateStockAdjustmentRequest>;
  @useResult
  $Res call(
      {double? quantity,
      String? reason,
      String? referenceNumber,
      String? notes,
      String? lotNumber,
      String? serialNumber,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$UpdateStockAdjustmentRequestCopyWithImpl<$Res,
        $Val extends UpdateStockAdjustmentRequest>
    implements $UpdateStockAdjustmentRequestCopyWith<$Res> {
  _$UpdateStockAdjustmentRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = freezed,
    Object? reason = freezed,
    Object? referenceNumber = freezed,
    Object? notes = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceNumber: freezed == referenceNumber
          ? _value.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateStockAdjustmentRequestImplCopyWith<$Res>
    implements $UpdateStockAdjustmentRequestCopyWith<$Res> {
  factory _$$UpdateStockAdjustmentRequestImplCopyWith(
          _$UpdateStockAdjustmentRequestImpl value,
          $Res Function(_$UpdateStockAdjustmentRequestImpl) then) =
      __$$UpdateStockAdjustmentRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? quantity,
      String? reason,
      String? referenceNumber,
      String? notes,
      String? lotNumber,
      String? serialNumber,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$UpdateStockAdjustmentRequestImplCopyWithImpl<$Res>
    extends _$UpdateStockAdjustmentRequestCopyWithImpl<$Res,
        _$UpdateStockAdjustmentRequestImpl>
    implements _$$UpdateStockAdjustmentRequestImplCopyWith<$Res> {
  __$$UpdateStockAdjustmentRequestImplCopyWithImpl(
      _$UpdateStockAdjustmentRequestImpl _value,
      $Res Function(_$UpdateStockAdjustmentRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = freezed,
    Object? reason = freezed,
    Object? referenceNumber = freezed,
    Object? notes = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$UpdateStockAdjustmentRequestImpl(
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceNumber: freezed == referenceNumber
          ? _value.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
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
class _$UpdateStockAdjustmentRequestImpl
    implements _UpdateStockAdjustmentRequest {
  const _$UpdateStockAdjustmentRequestImpl(
      {this.quantity,
      this.reason,
      this.referenceNumber,
      this.notes,
      this.lotNumber,
      this.serialNumber,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$UpdateStockAdjustmentRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateStockAdjustmentRequestImplFromJson(json);

  @override
  final double? quantity;
  @override
  final String? reason;
  @override
  final String? referenceNumber;
  @override
  final String? notes;
  @override
  final String? lotNumber;
  @override
  final String? serialNumber;
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
    return 'UpdateStockAdjustmentRequest(quantity: $quantity, reason: $reason, referenceNumber: $referenceNumber, notes: $notes, lotNumber: $lotNumber, serialNumber: $serialNumber, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStockAdjustmentRequestImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.referenceNumber, referenceNumber) ||
                other.referenceNumber == referenceNumber) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      quantity,
      reason,
      referenceNumber,
      notes,
      lotNumber,
      serialNumber,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStockAdjustmentRequestImplCopyWith<
          _$UpdateStockAdjustmentRequestImpl>
      get copyWith => __$$UpdateStockAdjustmentRequestImplCopyWithImpl<
          _$UpdateStockAdjustmentRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateStockAdjustmentRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateStockAdjustmentRequest
    implements UpdateStockAdjustmentRequest {
  const factory _UpdateStockAdjustmentRequest(
          {final double? quantity,
          final String? reason,
          final String? referenceNumber,
          final String? notes,
          final String? lotNumber,
          final String? serialNumber,
          final Map<String, dynamic>? metadata}) =
      _$UpdateStockAdjustmentRequestImpl;

  factory _UpdateStockAdjustmentRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateStockAdjustmentRequestImpl.fromJson;

  @override
  double? get quantity;
  @override
  String? get reason;
  @override
  String? get referenceNumber;
  @override
  String? get notes;
  @override
  String? get lotNumber;
  @override
  String? get serialNumber;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$UpdateStockAdjustmentRequestImplCopyWith<
          _$UpdateStockAdjustmentRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StockAdjustmentFilters _$StockAdjustmentFiltersFromJson(
    Map<String, dynamic> json) {
  return _StockAdjustmentFilters.fromJson(json);
}

/// @nodoc
mixin _$StockAdjustmentFilters {
  String? get itemId => throw _privateConstructorUsedError;
  String? get locationId => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  String? get approvedBy => throw _privateConstructorUsedError;
  DateTime? get createdAfter => throw _privateConstructorUsedError;
  DateTime? get createdBefore => throw _privateConstructorUsedError;
  DateTime? get approvedAfter => throw _privateConstructorUsedError;
  DateTime? get approvedBefore => throw _privateConstructorUsedError;
  DateTime? get postedAfter => throw _privateConstructorUsedError;
  DateTime? get postedBefore => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String? get sortBy => throw _privateConstructorUsedError;
  String? get sortOrder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockAdjustmentFiltersCopyWith<StockAdjustmentFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockAdjustmentFiltersCopyWith<$Res> {
  factory $StockAdjustmentFiltersCopyWith(StockAdjustmentFilters value,
          $Res Function(StockAdjustmentFilters) then) =
      _$StockAdjustmentFiltersCopyWithImpl<$Res, StockAdjustmentFilters>;
  @useResult
  $Res call(
      {String? itemId,
      String? locationId,
      String? type,
      String? reason,
      String? status,
      String? createdBy,
      String? approvedBy,
      DateTime? createdAfter,
      DateTime? createdBefore,
      DateTime? approvedAfter,
      DateTime? approvedBefore,
      DateTime? postedAfter,
      DateTime? postedBefore,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class _$StockAdjustmentFiltersCopyWithImpl<$Res,
        $Val extends StockAdjustmentFilters>
    implements $StockAdjustmentFiltersCopyWith<$Res> {
  _$StockAdjustmentFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = freezed,
    Object? locationId = freezed,
    Object? type = freezed,
    Object? reason = freezed,
    Object? status = freezed,
    Object? createdBy = freezed,
    Object? approvedBy = freezed,
    Object? createdAfter = freezed,
    Object? createdBefore = freezed,
    Object? approvedAfter = freezed,
    Object? approvedBefore = freezed,
    Object? postedAfter = freezed,
    Object? postedBefore = freezed,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAfter: freezed == createdAfter
          ? _value.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _value.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAfter: freezed == approvedAfter
          ? _value.approvedAfter
          : approvedAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedBefore: freezed == approvedBefore
          ? _value.approvedBefore
          : approvedBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      postedAfter: freezed == postedAfter
          ? _value.postedAfter
          : postedAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      postedBefore: freezed == postedBefore
          ? _value.postedBefore
          : postedBefore // ignore: cast_nullable_to_non_nullable
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
abstract class _$$StockAdjustmentFiltersImplCopyWith<$Res>
    implements $StockAdjustmentFiltersCopyWith<$Res> {
  factory _$$StockAdjustmentFiltersImplCopyWith(
          _$StockAdjustmentFiltersImpl value,
          $Res Function(_$StockAdjustmentFiltersImpl) then) =
      __$$StockAdjustmentFiltersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? itemId,
      String? locationId,
      String? type,
      String? reason,
      String? status,
      String? createdBy,
      String? approvedBy,
      DateTime? createdAfter,
      DateTime? createdBefore,
      DateTime? approvedAfter,
      DateTime? approvedBefore,
      DateTime? postedAfter,
      DateTime? postedBefore,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class __$$StockAdjustmentFiltersImplCopyWithImpl<$Res>
    extends _$StockAdjustmentFiltersCopyWithImpl<$Res,
        _$StockAdjustmentFiltersImpl>
    implements _$$StockAdjustmentFiltersImplCopyWith<$Res> {
  __$$StockAdjustmentFiltersImplCopyWithImpl(
      _$StockAdjustmentFiltersImpl _value,
      $Res Function(_$StockAdjustmentFiltersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = freezed,
    Object? locationId = freezed,
    Object? type = freezed,
    Object? reason = freezed,
    Object? status = freezed,
    Object? createdBy = freezed,
    Object? approvedBy = freezed,
    Object? createdAfter = freezed,
    Object? createdBefore = freezed,
    Object? approvedAfter = freezed,
    Object? approvedBefore = freezed,
    Object? postedAfter = freezed,
    Object? postedBefore = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_$StockAdjustmentFiltersImpl(
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAfter: freezed == createdAfter
          ? _value.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _value.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAfter: freezed == approvedAfter
          ? _value.approvedAfter
          : approvedAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedBefore: freezed == approvedBefore
          ? _value.approvedBefore
          : approvedBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      postedAfter: freezed == postedAfter
          ? _value.postedAfter
          : postedAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      postedBefore: freezed == postedBefore
          ? _value.postedBefore
          : postedBefore // ignore: cast_nullable_to_non_nullable
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
class _$StockAdjustmentFiltersImpl extends _StockAdjustmentFilters {
  const _$StockAdjustmentFiltersImpl(
      {this.itemId,
      this.locationId,
      this.type,
      this.reason,
      this.status,
      this.createdBy,
      this.approvedBy,
      this.createdAfter,
      this.createdBefore,
      this.approvedAfter,
      this.approvedBefore,
      this.postedAfter,
      this.postedBefore,
      this.page,
      this.limit,
      this.sortBy,
      this.sortOrder})
      : super._();

  factory _$StockAdjustmentFiltersImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockAdjustmentFiltersImplFromJson(json);

  @override
  final String? itemId;
  @override
  final String? locationId;
  @override
  final String? type;
  @override
  final String? reason;
  @override
  final String? status;
  @override
  final String? createdBy;
  @override
  final String? approvedBy;
  @override
  final DateTime? createdAfter;
  @override
  final DateTime? createdBefore;
  @override
  final DateTime? approvedAfter;
  @override
  final DateTime? approvedBefore;
  @override
  final DateTime? postedAfter;
  @override
  final DateTime? postedBefore;
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
    return 'StockAdjustmentFilters(itemId: $itemId, locationId: $locationId, type: $type, reason: $reason, status: $status, createdBy: $createdBy, approvedBy: $approvedBy, createdAfter: $createdAfter, createdBefore: $createdBefore, approvedAfter: $approvedAfter, approvedBefore: $approvedBefore, postedAfter: $postedAfter, postedBefore: $postedBefore, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockAdjustmentFiltersImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.approvedBy, approvedBy) ||
                other.approvedBy == approvedBy) &&
            (identical(other.createdAfter, createdAfter) ||
                other.createdAfter == createdAfter) &&
            (identical(other.createdBefore, createdBefore) ||
                other.createdBefore == createdBefore) &&
            (identical(other.approvedAfter, approvedAfter) ||
                other.approvedAfter == approvedAfter) &&
            (identical(other.approvedBefore, approvedBefore) ||
                other.approvedBefore == approvedBefore) &&
            (identical(other.postedAfter, postedAfter) ||
                other.postedAfter == postedAfter) &&
            (identical(other.postedBefore, postedBefore) ||
                other.postedBefore == postedBefore) &&
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
      type,
      reason,
      status,
      createdBy,
      approvedBy,
      createdAfter,
      createdBefore,
      approvedAfter,
      approvedBefore,
      postedAfter,
      postedBefore,
      page,
      limit,
      sortBy,
      sortOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockAdjustmentFiltersImplCopyWith<_$StockAdjustmentFiltersImpl>
      get copyWith => __$$StockAdjustmentFiltersImplCopyWithImpl<
          _$StockAdjustmentFiltersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockAdjustmentFiltersImplToJson(
      this,
    );
  }
}

abstract class _StockAdjustmentFilters extends StockAdjustmentFilters {
  const factory _StockAdjustmentFilters(
      {final String? itemId,
      final String? locationId,
      final String? type,
      final String? reason,
      final String? status,
      final String? createdBy,
      final String? approvedBy,
      final DateTime? createdAfter,
      final DateTime? createdBefore,
      final DateTime? approvedAfter,
      final DateTime? approvedBefore,
      final DateTime? postedAfter,
      final DateTime? postedBefore,
      final int? page,
      final int? limit,
      final String? sortBy,
      final String? sortOrder}) = _$StockAdjustmentFiltersImpl;
  const _StockAdjustmentFilters._() : super._();

  factory _StockAdjustmentFilters.fromJson(Map<String, dynamic> json) =
      _$StockAdjustmentFiltersImpl.fromJson;

  @override
  String? get itemId;
  @override
  String? get locationId;
  @override
  String? get type;
  @override
  String? get reason;
  @override
  String? get status;
  @override
  String? get createdBy;
  @override
  String? get approvedBy;
  @override
  DateTime? get createdAfter;
  @override
  DateTime? get createdBefore;
  @override
  DateTime? get approvedAfter;
  @override
  DateTime? get approvedBefore;
  @override
  DateTime? get postedAfter;
  @override
  DateTime? get postedBefore;
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
  _$$StockAdjustmentFiltersImplCopyWith<_$StockAdjustmentFiltersImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApproveStockAdjustmentRequest _$ApproveStockAdjustmentRequestFromJson(
    Map<String, dynamic> json) {
  return _ApproveStockAdjustmentRequest.fromJson(json);
}

/// @nodoc
mixin _$ApproveStockAdjustmentRequest {
  String? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApproveStockAdjustmentRequestCopyWith<ApproveStockAdjustmentRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApproveStockAdjustmentRequestCopyWith<$Res> {
  factory $ApproveStockAdjustmentRequestCopyWith(
          ApproveStockAdjustmentRequest value,
          $Res Function(ApproveStockAdjustmentRequest) then) =
      _$ApproveStockAdjustmentRequestCopyWithImpl<$Res,
          ApproveStockAdjustmentRequest>;
  @useResult
  $Res call({String? notes});
}

/// @nodoc
class _$ApproveStockAdjustmentRequestCopyWithImpl<$Res,
        $Val extends ApproveStockAdjustmentRequest>
    implements $ApproveStockAdjustmentRequestCopyWith<$Res> {
  _$ApproveStockAdjustmentRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApproveStockAdjustmentRequestImplCopyWith<$Res>
    implements $ApproveStockAdjustmentRequestCopyWith<$Res> {
  factory _$$ApproveStockAdjustmentRequestImplCopyWith(
          _$ApproveStockAdjustmentRequestImpl value,
          $Res Function(_$ApproveStockAdjustmentRequestImpl) then) =
      __$$ApproveStockAdjustmentRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? notes});
}

/// @nodoc
class __$$ApproveStockAdjustmentRequestImplCopyWithImpl<$Res>
    extends _$ApproveStockAdjustmentRequestCopyWithImpl<$Res,
        _$ApproveStockAdjustmentRequestImpl>
    implements _$$ApproveStockAdjustmentRequestImplCopyWith<$Res> {
  __$$ApproveStockAdjustmentRequestImplCopyWithImpl(
      _$ApproveStockAdjustmentRequestImpl _value,
      $Res Function(_$ApproveStockAdjustmentRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = freezed,
  }) {
    return _then(_$ApproveStockAdjustmentRequestImpl(
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApproveStockAdjustmentRequestImpl
    implements _ApproveStockAdjustmentRequest {
  const _$ApproveStockAdjustmentRequestImpl({this.notes});

  factory _$ApproveStockAdjustmentRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApproveStockAdjustmentRequestImplFromJson(json);

  @override
  final String? notes;

  @override
  String toString() {
    return 'ApproveStockAdjustmentRequest(notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApproveStockAdjustmentRequestImpl &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApproveStockAdjustmentRequestImplCopyWith<
          _$ApproveStockAdjustmentRequestImpl>
      get copyWith => __$$ApproveStockAdjustmentRequestImplCopyWithImpl<
          _$ApproveStockAdjustmentRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApproveStockAdjustmentRequestImplToJson(
      this,
    );
  }
}

abstract class _ApproveStockAdjustmentRequest
    implements ApproveStockAdjustmentRequest {
  const factory _ApproveStockAdjustmentRequest({final String? notes}) =
      _$ApproveStockAdjustmentRequestImpl;

  factory _ApproveStockAdjustmentRequest.fromJson(Map<String, dynamic> json) =
      _$ApproveStockAdjustmentRequestImpl.fromJson;

  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$ApproveStockAdjustmentRequestImplCopyWith<
          _$ApproveStockAdjustmentRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RejectStockAdjustmentRequest _$RejectStockAdjustmentRequestFromJson(
    Map<String, dynamic> json) {
  return _RejectStockAdjustmentRequest.fromJson(json);
}

/// @nodoc
mixin _$RejectStockAdjustmentRequest {
  String get reason => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RejectStockAdjustmentRequestCopyWith<RejectStockAdjustmentRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RejectStockAdjustmentRequestCopyWith<$Res> {
  factory $RejectStockAdjustmentRequestCopyWith(
          RejectStockAdjustmentRequest value,
          $Res Function(RejectStockAdjustmentRequest) then) =
      _$RejectStockAdjustmentRequestCopyWithImpl<$Res,
          RejectStockAdjustmentRequest>;
  @useResult
  $Res call({String reason, String? notes});
}

/// @nodoc
class _$RejectStockAdjustmentRequestCopyWithImpl<$Res,
        $Val extends RejectStockAdjustmentRequest>
    implements $RejectStockAdjustmentRequestCopyWith<$Res> {
  _$RejectStockAdjustmentRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
    Object? notes = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RejectStockAdjustmentRequestImplCopyWith<$Res>
    implements $RejectStockAdjustmentRequestCopyWith<$Res> {
  factory _$$RejectStockAdjustmentRequestImplCopyWith(
          _$RejectStockAdjustmentRequestImpl value,
          $Res Function(_$RejectStockAdjustmentRequestImpl) then) =
      __$$RejectStockAdjustmentRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String reason, String? notes});
}

/// @nodoc
class __$$RejectStockAdjustmentRequestImplCopyWithImpl<$Res>
    extends _$RejectStockAdjustmentRequestCopyWithImpl<$Res,
        _$RejectStockAdjustmentRequestImpl>
    implements _$$RejectStockAdjustmentRequestImplCopyWith<$Res> {
  __$$RejectStockAdjustmentRequestImplCopyWithImpl(
      _$RejectStockAdjustmentRequestImpl _value,
      $Res Function(_$RejectStockAdjustmentRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
    Object? notes = freezed,
  }) {
    return _then(_$RejectStockAdjustmentRequestImpl(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RejectStockAdjustmentRequestImpl
    implements _RejectStockAdjustmentRequest {
  const _$RejectStockAdjustmentRequestImpl({required this.reason, this.notes});

  factory _$RejectStockAdjustmentRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RejectStockAdjustmentRequestImplFromJson(json);

  @override
  final String reason;
  @override
  final String? notes;

  @override
  String toString() {
    return 'RejectStockAdjustmentRequest(reason: $reason, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RejectStockAdjustmentRequestImpl &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reason, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RejectStockAdjustmentRequestImplCopyWith<
          _$RejectStockAdjustmentRequestImpl>
      get copyWith => __$$RejectStockAdjustmentRequestImplCopyWithImpl<
          _$RejectStockAdjustmentRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RejectStockAdjustmentRequestImplToJson(
      this,
    );
  }
}

abstract class _RejectStockAdjustmentRequest
    implements RejectStockAdjustmentRequest {
  const factory _RejectStockAdjustmentRequest(
      {required final String reason,
      final String? notes}) = _$RejectStockAdjustmentRequestImpl;

  factory _RejectStockAdjustmentRequest.fromJson(Map<String, dynamic> json) =
      _$RejectStockAdjustmentRequestImpl.fromJson;

  @override
  String get reason;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$RejectStockAdjustmentRequestImplCopyWith<
          _$RejectStockAdjustmentRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
