// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goods_receipt_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GoodsReceipt _$GoodsReceiptFromJson(Map<String, dynamic> json) {
  return _GoodsReceipt.fromJson(json);
}

/// @nodoc
mixin _$GoodsReceipt {
  String get id => throw _privateConstructorUsedError;
  String get receiptNumber => throw _privateConstructorUsedError;
  String get purchaseOrderId => throw _privateConstructorUsedError;
  String get supplierId => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // 'draft', 'received', 'inspected', 'accepted', 'rejected', 'posted'
  DateTime get receiptDate => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime? get inspectedAt => throw _privateConstructorUsedError;
  DateTime? get acceptedAt => throw _privateConstructorUsedError;
  DateTime? get rejectedAt => throw _privateConstructorUsedError;
  DateTime? get postedAt => throw _privateConstructorUsedError;
  String? get receivedBy => throw _privateConstructorUsedError;
  String? get inspectedBy => throw _privateConstructorUsedError;
  String? get acceptedBy => throw _privateConstructorUsedError;
  String? get rejectedBy => throw _privateConstructorUsedError;
  String? get postedBy => throw _privateConstructorUsedError;
  String? get deliveryNote => throw _privateConstructorUsedError;
  String? get invoiceNumber => throw _privateConstructorUsedError;
  String? get transportCompany => throw _privateConstructorUsedError;
  String? get vehicleNumber => throw _privateConstructorUsedError;
  String? get driverName => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get inspectionNotes => throw _privateConstructorUsedError;
  String? get rejectionReason => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoodsReceiptCopyWith<GoodsReceipt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoodsReceiptCopyWith<$Res> {
  factory $GoodsReceiptCopyWith(
          GoodsReceipt value, $Res Function(GoodsReceipt) then) =
      _$GoodsReceiptCopyWithImpl<$Res, GoodsReceipt>;
  @useResult
  $Res call(
      {String id,
      String receiptNumber,
      String purchaseOrderId,
      String supplierId,
      String status,
      DateTime receiptDate,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? inspectedAt,
      DateTime? acceptedAt,
      DateTime? rejectedAt,
      DateTime? postedAt,
      String? receivedBy,
      String? inspectedBy,
      String? acceptedBy,
      String? rejectedBy,
      String? postedBy,
      String? deliveryNote,
      String? invoiceNumber,
      String? transportCompany,
      String? vehicleNumber,
      String? driverName,
      String? notes,
      String? inspectionNotes,
      String? rejectionReason,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$GoodsReceiptCopyWithImpl<$Res, $Val extends GoodsReceipt>
    implements $GoodsReceiptCopyWith<$Res> {
  _$GoodsReceiptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? receiptNumber = null,
    Object? purchaseOrderId = null,
    Object? supplierId = null,
    Object? status = null,
    Object? receiptDate = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? inspectedAt = freezed,
    Object? acceptedAt = freezed,
    Object? rejectedAt = freezed,
    Object? postedAt = freezed,
    Object? receivedBy = freezed,
    Object? inspectedBy = freezed,
    Object? acceptedBy = freezed,
    Object? rejectedBy = freezed,
    Object? postedBy = freezed,
    Object? deliveryNote = freezed,
    Object? invoiceNumber = freezed,
    Object? transportCompany = freezed,
    Object? vehicleNumber = freezed,
    Object? driverName = freezed,
    Object? notes = freezed,
    Object? inspectionNotes = freezed,
    Object? rejectionReason = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      receiptNumber: null == receiptNumber
          ? _value.receiptNumber
          : receiptNumber // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseOrderId: null == purchaseOrderId
          ? _value.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      supplierId: null == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      receiptDate: null == receiptDate
          ? _value.receiptDate
          : receiptDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      inspectedAt: freezed == inspectedAt
          ? _value.inspectedAt
          : inspectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      acceptedAt: freezed == acceptedAt
          ? _value.acceptedAt
          : acceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _value.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      postedAt: freezed == postedAt
          ? _value.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      receivedBy: freezed == receivedBy
          ? _value.receivedBy
          : receivedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectedBy: freezed == inspectedBy
          ? _value.inspectedBy
          : inspectedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptedBy: freezed == acceptedBy
          ? _value.acceptedBy
          : acceptedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectedBy: freezed == rejectedBy
          ? _value.rejectedBy
          : rejectedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      postedBy: freezed == postedBy
          ? _value.postedBy
          : postedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryNote: freezed == deliveryNote
          ? _value.deliveryNote
          : deliveryNote // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceNumber: freezed == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      transportCompany: freezed == transportCompany
          ? _value.transportCompany
          : transportCompany // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleNumber: freezed == vehicleNumber
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      driverName: freezed == driverName
          ? _value.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectionNotes: freezed == inspectionNotes
          ? _value.inspectionNotes
          : inspectionNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoodsReceiptImplCopyWith<$Res>
    implements $GoodsReceiptCopyWith<$Res> {
  factory _$$GoodsReceiptImplCopyWith(
          _$GoodsReceiptImpl value, $Res Function(_$GoodsReceiptImpl) then) =
      __$$GoodsReceiptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String receiptNumber,
      String purchaseOrderId,
      String supplierId,
      String status,
      DateTime receiptDate,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? inspectedAt,
      DateTime? acceptedAt,
      DateTime? rejectedAt,
      DateTime? postedAt,
      String? receivedBy,
      String? inspectedBy,
      String? acceptedBy,
      String? rejectedBy,
      String? postedBy,
      String? deliveryNote,
      String? invoiceNumber,
      String? transportCompany,
      String? vehicleNumber,
      String? driverName,
      String? notes,
      String? inspectionNotes,
      String? rejectionReason,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$GoodsReceiptImplCopyWithImpl<$Res>
    extends _$GoodsReceiptCopyWithImpl<$Res, _$GoodsReceiptImpl>
    implements _$$GoodsReceiptImplCopyWith<$Res> {
  __$$GoodsReceiptImplCopyWithImpl(
      _$GoodsReceiptImpl _value, $Res Function(_$GoodsReceiptImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? receiptNumber = null,
    Object? purchaseOrderId = null,
    Object? supplierId = null,
    Object? status = null,
    Object? receiptDate = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? inspectedAt = freezed,
    Object? acceptedAt = freezed,
    Object? rejectedAt = freezed,
    Object? postedAt = freezed,
    Object? receivedBy = freezed,
    Object? inspectedBy = freezed,
    Object? acceptedBy = freezed,
    Object? rejectedBy = freezed,
    Object? postedBy = freezed,
    Object? deliveryNote = freezed,
    Object? invoiceNumber = freezed,
    Object? transportCompany = freezed,
    Object? vehicleNumber = freezed,
    Object? driverName = freezed,
    Object? notes = freezed,
    Object? inspectionNotes = freezed,
    Object? rejectionReason = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$GoodsReceiptImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      receiptNumber: null == receiptNumber
          ? _value.receiptNumber
          : receiptNumber // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseOrderId: null == purchaseOrderId
          ? _value.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      supplierId: null == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      receiptDate: null == receiptDate
          ? _value.receiptDate
          : receiptDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      inspectedAt: freezed == inspectedAt
          ? _value.inspectedAt
          : inspectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      acceptedAt: freezed == acceptedAt
          ? _value.acceptedAt
          : acceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _value.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      postedAt: freezed == postedAt
          ? _value.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      receivedBy: freezed == receivedBy
          ? _value.receivedBy
          : receivedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectedBy: freezed == inspectedBy
          ? _value.inspectedBy
          : inspectedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptedBy: freezed == acceptedBy
          ? _value.acceptedBy
          : acceptedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectedBy: freezed == rejectedBy
          ? _value.rejectedBy
          : rejectedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      postedBy: freezed == postedBy
          ? _value.postedBy
          : postedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryNote: freezed == deliveryNote
          ? _value.deliveryNote
          : deliveryNote // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceNumber: freezed == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      transportCompany: freezed == transportCompany
          ? _value.transportCompany
          : transportCompany // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleNumber: freezed == vehicleNumber
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      driverName: freezed == driverName
          ? _value.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectionNotes: freezed == inspectionNotes
          ? _value.inspectionNotes
          : inspectionNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
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
class _$GoodsReceiptImpl implements _GoodsReceipt {
  const _$GoodsReceiptImpl(
      {required this.id,
      required this.receiptNumber,
      required this.purchaseOrderId,
      required this.supplierId,
      required this.status,
      required this.receiptDate,
      required this.createdAt,
      required this.updatedAt,
      this.inspectedAt,
      this.acceptedAt,
      this.rejectedAt,
      this.postedAt,
      this.receivedBy,
      this.inspectedBy,
      this.acceptedBy,
      this.rejectedBy,
      this.postedBy,
      this.deliveryNote,
      this.invoiceNumber,
      this.transportCompany,
      this.vehicleNumber,
      this.driverName,
      this.notes,
      this.inspectionNotes,
      this.rejectionReason,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$GoodsReceiptImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoodsReceiptImplFromJson(json);

  @override
  final String id;
  @override
  final String receiptNumber;
  @override
  final String purchaseOrderId;
  @override
  final String supplierId;
  @override
  final String status;
// 'draft', 'received', 'inspected', 'accepted', 'rejected', 'posted'
  @override
  final DateTime receiptDate;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime? inspectedAt;
  @override
  final DateTime? acceptedAt;
  @override
  final DateTime? rejectedAt;
  @override
  final DateTime? postedAt;
  @override
  final String? receivedBy;
  @override
  final String? inspectedBy;
  @override
  final String? acceptedBy;
  @override
  final String? rejectedBy;
  @override
  final String? postedBy;
  @override
  final String? deliveryNote;
  @override
  final String? invoiceNumber;
  @override
  final String? transportCompany;
  @override
  final String? vehicleNumber;
  @override
  final String? driverName;
  @override
  final String? notes;
  @override
  final String? inspectionNotes;
  @override
  final String? rejectionReason;
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
    return 'GoodsReceipt(id: $id, receiptNumber: $receiptNumber, purchaseOrderId: $purchaseOrderId, supplierId: $supplierId, status: $status, receiptDate: $receiptDate, createdAt: $createdAt, updatedAt: $updatedAt, inspectedAt: $inspectedAt, acceptedAt: $acceptedAt, rejectedAt: $rejectedAt, postedAt: $postedAt, receivedBy: $receivedBy, inspectedBy: $inspectedBy, acceptedBy: $acceptedBy, rejectedBy: $rejectedBy, postedBy: $postedBy, deliveryNote: $deliveryNote, invoiceNumber: $invoiceNumber, transportCompany: $transportCompany, vehicleNumber: $vehicleNumber, driverName: $driverName, notes: $notes, inspectionNotes: $inspectionNotes, rejectionReason: $rejectionReason, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoodsReceiptImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.receiptNumber, receiptNumber) ||
                other.receiptNumber == receiptNumber) &&
            (identical(other.purchaseOrderId, purchaseOrderId) ||
                other.purchaseOrderId == purchaseOrderId) &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.receiptDate, receiptDate) ||
                other.receiptDate == receiptDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.inspectedAt, inspectedAt) ||
                other.inspectedAt == inspectedAt) &&
            (identical(other.acceptedAt, acceptedAt) ||
                other.acceptedAt == acceptedAt) &&
            (identical(other.rejectedAt, rejectedAt) ||
                other.rejectedAt == rejectedAt) &&
            (identical(other.postedAt, postedAt) ||
                other.postedAt == postedAt) &&
            (identical(other.receivedBy, receivedBy) ||
                other.receivedBy == receivedBy) &&
            (identical(other.inspectedBy, inspectedBy) ||
                other.inspectedBy == inspectedBy) &&
            (identical(other.acceptedBy, acceptedBy) ||
                other.acceptedBy == acceptedBy) &&
            (identical(other.rejectedBy, rejectedBy) ||
                other.rejectedBy == rejectedBy) &&
            (identical(other.postedBy, postedBy) ||
                other.postedBy == postedBy) &&
            (identical(other.deliveryNote, deliveryNote) ||
                other.deliveryNote == deliveryNote) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                other.invoiceNumber == invoiceNumber) &&
            (identical(other.transportCompany, transportCompany) ||
                other.transportCompany == transportCompany) &&
            (identical(other.vehicleNumber, vehicleNumber) ||
                other.vehicleNumber == vehicleNumber) &&
            (identical(other.driverName, driverName) ||
                other.driverName == driverName) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.inspectionNotes, inspectionNotes) ||
                other.inspectionNotes == inspectionNotes) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        receiptNumber,
        purchaseOrderId,
        supplierId,
        status,
        receiptDate,
        createdAt,
        updatedAt,
        inspectedAt,
        acceptedAt,
        rejectedAt,
        postedAt,
        receivedBy,
        inspectedBy,
        acceptedBy,
        rejectedBy,
        postedBy,
        deliveryNote,
        invoiceNumber,
        transportCompany,
        vehicleNumber,
        driverName,
        notes,
        inspectionNotes,
        rejectionReason,
        const DeepCollectionEquality().hash(_metadata)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoodsReceiptImplCopyWith<_$GoodsReceiptImpl> get copyWith =>
      __$$GoodsReceiptImplCopyWithImpl<_$GoodsReceiptImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoodsReceiptImplToJson(
      this,
    );
  }
}

abstract class _GoodsReceipt implements GoodsReceipt {
  const factory _GoodsReceipt(
      {required final String id,
      required final String receiptNumber,
      required final String purchaseOrderId,
      required final String supplierId,
      required final String status,
      required final DateTime receiptDate,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final DateTime? inspectedAt,
      final DateTime? acceptedAt,
      final DateTime? rejectedAt,
      final DateTime? postedAt,
      final String? receivedBy,
      final String? inspectedBy,
      final String? acceptedBy,
      final String? rejectedBy,
      final String? postedBy,
      final String? deliveryNote,
      final String? invoiceNumber,
      final String? transportCompany,
      final String? vehicleNumber,
      final String? driverName,
      final String? notes,
      final String? inspectionNotes,
      final String? rejectionReason,
      final Map<String, dynamic>? metadata}) = _$GoodsReceiptImpl;

  factory _GoodsReceipt.fromJson(Map<String, dynamic> json) =
      _$GoodsReceiptImpl.fromJson;

  @override
  String get id;
  @override
  String get receiptNumber;
  @override
  String get purchaseOrderId;
  @override
  String get supplierId;
  @override
  String get status;
  @override // 'draft', 'received', 'inspected', 'accepted', 'rejected', 'posted'
  DateTime get receiptDate;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  DateTime? get inspectedAt;
  @override
  DateTime? get acceptedAt;
  @override
  DateTime? get rejectedAt;
  @override
  DateTime? get postedAt;
  @override
  String? get receivedBy;
  @override
  String? get inspectedBy;
  @override
  String? get acceptedBy;
  @override
  String? get rejectedBy;
  @override
  String? get postedBy;
  @override
  String? get deliveryNote;
  @override
  String? get invoiceNumber;
  @override
  String? get transportCompany;
  @override
  String? get vehicleNumber;
  @override
  String? get driverName;
  @override
  String? get notes;
  @override
  String? get inspectionNotes;
  @override
  String? get rejectionReason;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$GoodsReceiptImplCopyWith<_$GoodsReceiptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GoodsReceiptLineItem _$GoodsReceiptLineItemFromJson(Map<String, dynamic> json) {
  return _GoodsReceiptLineItem.fromJson(json);
}

/// @nodoc
mixin _$GoodsReceiptLineItem {
  String get id => throw _privateConstructorUsedError;
  String get goodsReceiptId => throw _privateConstructorUsedError;
  String get purchaseOrderLineItemId => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  double get orderedQuantity => throw _privateConstructorUsedError;
  double get receivedQuantity => throw _privateConstructorUsedError;
  double get acceptedQuantity => throw _privateConstructorUsedError;
  double get rejectedQuantity => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // 'pending', 'received', 'inspected', 'accepted', 'rejected'
  int? get sequence => throw _privateConstructorUsedError;
  String? get lotNumber => throw _privateConstructorUsedError;
  String? get serialNumber => throw _privateConstructorUsedError;
  DateTime? get expiryDate => throw _privateConstructorUsedError;
  String? get condition =>
      throw _privateConstructorUsedError; // 'good', 'damaged', 'expired', 'defective'
  String? get notes => throw _privateConstructorUsedError;
  String? get inspectionNotes => throw _privateConstructorUsedError;
  String? get rejectionReason => throw _privateConstructorUsedError;
  String? get storageLocation => throw _privateConstructorUsedError;
  Map<String, dynamic>? get qualityMetrics =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get attributes => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoodsReceiptLineItemCopyWith<GoodsReceiptLineItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoodsReceiptLineItemCopyWith<$Res> {
  factory $GoodsReceiptLineItemCopyWith(GoodsReceiptLineItem value,
          $Res Function(GoodsReceiptLineItem) then) =
      _$GoodsReceiptLineItemCopyWithImpl<$Res, GoodsReceiptLineItem>;
  @useResult
  $Res call(
      {String id,
      String goodsReceiptId,
      String purchaseOrderLineItemId,
      String itemId,
      double orderedQuantity,
      double receivedQuantity,
      double acceptedQuantity,
      double rejectedQuantity,
      String unit,
      String status,
      int? sequence,
      String? lotNumber,
      String? serialNumber,
      DateTime? expiryDate,
      String? condition,
      String? notes,
      String? inspectionNotes,
      String? rejectionReason,
      String? storageLocation,
      Map<String, dynamic>? qualityMetrics,
      Map<String, dynamic>? attributes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$GoodsReceiptLineItemCopyWithImpl<$Res,
        $Val extends GoodsReceiptLineItem>
    implements $GoodsReceiptLineItemCopyWith<$Res> {
  _$GoodsReceiptLineItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? goodsReceiptId = null,
    Object? purchaseOrderLineItemId = null,
    Object? itemId = null,
    Object? orderedQuantity = null,
    Object? receivedQuantity = null,
    Object? acceptedQuantity = null,
    Object? rejectedQuantity = null,
    Object? unit = null,
    Object? status = null,
    Object? sequence = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? expiryDate = freezed,
    Object? condition = freezed,
    Object? notes = freezed,
    Object? inspectionNotes = freezed,
    Object? rejectionReason = freezed,
    Object? storageLocation = freezed,
    Object? qualityMetrics = freezed,
    Object? attributes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      goodsReceiptId: null == goodsReceiptId
          ? _value.goodsReceiptId
          : goodsReceiptId // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseOrderLineItemId: null == purchaseOrderLineItemId
          ? _value.purchaseOrderLineItemId
          : purchaseOrderLineItemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      orderedQuantity: null == orderedQuantity
          ? _value.orderedQuantity
          : orderedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      receivedQuantity: null == receivedQuantity
          ? _value.receivedQuantity
          : receivedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      acceptedQuantity: null == acceptedQuantity
          ? _value.acceptedQuantity
          : acceptedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      rejectedQuantity: null == rejectedQuantity
          ? _value.rejectedQuantity
          : rejectedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectionNotes: freezed == inspectionNotes
          ? _value.inspectionNotes
          : inspectionNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      storageLocation: freezed == storageLocation
          ? _value.storageLocation
          : storageLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      qualityMetrics: freezed == qualityMetrics
          ? _value.qualityMetrics
          : qualityMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
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
abstract class _$$GoodsReceiptLineItemImplCopyWith<$Res>
    implements $GoodsReceiptLineItemCopyWith<$Res> {
  factory _$$GoodsReceiptLineItemImplCopyWith(_$GoodsReceiptLineItemImpl value,
          $Res Function(_$GoodsReceiptLineItemImpl) then) =
      __$$GoodsReceiptLineItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String goodsReceiptId,
      String purchaseOrderLineItemId,
      String itemId,
      double orderedQuantity,
      double receivedQuantity,
      double acceptedQuantity,
      double rejectedQuantity,
      String unit,
      String status,
      int? sequence,
      String? lotNumber,
      String? serialNumber,
      DateTime? expiryDate,
      String? condition,
      String? notes,
      String? inspectionNotes,
      String? rejectionReason,
      String? storageLocation,
      Map<String, dynamic>? qualityMetrics,
      Map<String, dynamic>? attributes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$GoodsReceiptLineItemImplCopyWithImpl<$Res>
    extends _$GoodsReceiptLineItemCopyWithImpl<$Res, _$GoodsReceiptLineItemImpl>
    implements _$$GoodsReceiptLineItemImplCopyWith<$Res> {
  __$$GoodsReceiptLineItemImplCopyWithImpl(_$GoodsReceiptLineItemImpl _value,
      $Res Function(_$GoodsReceiptLineItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? goodsReceiptId = null,
    Object? purchaseOrderLineItemId = null,
    Object? itemId = null,
    Object? orderedQuantity = null,
    Object? receivedQuantity = null,
    Object? acceptedQuantity = null,
    Object? rejectedQuantity = null,
    Object? unit = null,
    Object? status = null,
    Object? sequence = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? expiryDate = freezed,
    Object? condition = freezed,
    Object? notes = freezed,
    Object? inspectionNotes = freezed,
    Object? rejectionReason = freezed,
    Object? storageLocation = freezed,
    Object? qualityMetrics = freezed,
    Object? attributes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$GoodsReceiptLineItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      goodsReceiptId: null == goodsReceiptId
          ? _value.goodsReceiptId
          : goodsReceiptId // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseOrderLineItemId: null == purchaseOrderLineItemId
          ? _value.purchaseOrderLineItemId
          : purchaseOrderLineItemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      orderedQuantity: null == orderedQuantity
          ? _value.orderedQuantity
          : orderedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      receivedQuantity: null == receivedQuantity
          ? _value.receivedQuantity
          : receivedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      acceptedQuantity: null == acceptedQuantity
          ? _value.acceptedQuantity
          : acceptedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      rejectedQuantity: null == rejectedQuantity
          ? _value.rejectedQuantity
          : rejectedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectionNotes: freezed == inspectionNotes
          ? _value.inspectionNotes
          : inspectionNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      storageLocation: freezed == storageLocation
          ? _value.storageLocation
          : storageLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      qualityMetrics: freezed == qualityMetrics
          ? _value._qualityMetrics
          : qualityMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
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
class _$GoodsReceiptLineItemImpl implements _GoodsReceiptLineItem {
  const _$GoodsReceiptLineItemImpl(
      {required this.id,
      required this.goodsReceiptId,
      required this.purchaseOrderLineItemId,
      required this.itemId,
      required this.orderedQuantity,
      required this.receivedQuantity,
      required this.acceptedQuantity,
      required this.rejectedQuantity,
      required this.unit,
      required this.status,
      this.sequence,
      this.lotNumber,
      this.serialNumber,
      this.expiryDate,
      this.condition,
      this.notes,
      this.inspectionNotes,
      this.rejectionReason,
      this.storageLocation,
      final Map<String, dynamic>? qualityMetrics,
      final Map<String, dynamic>? attributes,
      final Map<String, dynamic>? metadata})
      : _qualityMetrics = qualityMetrics,
        _attributes = attributes,
        _metadata = metadata;

  factory _$GoodsReceiptLineItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoodsReceiptLineItemImplFromJson(json);

  @override
  final String id;
  @override
  final String goodsReceiptId;
  @override
  final String purchaseOrderLineItemId;
  @override
  final String itemId;
  @override
  final double orderedQuantity;
  @override
  final double receivedQuantity;
  @override
  final double acceptedQuantity;
  @override
  final double rejectedQuantity;
  @override
  final String unit;
  @override
  final String status;
// 'pending', 'received', 'inspected', 'accepted', 'rejected'
  @override
  final int? sequence;
  @override
  final String? lotNumber;
  @override
  final String? serialNumber;
  @override
  final DateTime? expiryDate;
  @override
  final String? condition;
// 'good', 'damaged', 'expired', 'defective'
  @override
  final String? notes;
  @override
  final String? inspectionNotes;
  @override
  final String? rejectionReason;
  @override
  final String? storageLocation;
  final Map<String, dynamic>? _qualityMetrics;
  @override
  Map<String, dynamic>? get qualityMetrics {
    final value = _qualityMetrics;
    if (value == null) return null;
    if (_qualityMetrics is EqualUnmodifiableMapView) return _qualityMetrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

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
    return 'GoodsReceiptLineItem(id: $id, goodsReceiptId: $goodsReceiptId, purchaseOrderLineItemId: $purchaseOrderLineItemId, itemId: $itemId, orderedQuantity: $orderedQuantity, receivedQuantity: $receivedQuantity, acceptedQuantity: $acceptedQuantity, rejectedQuantity: $rejectedQuantity, unit: $unit, status: $status, sequence: $sequence, lotNumber: $lotNumber, serialNumber: $serialNumber, expiryDate: $expiryDate, condition: $condition, notes: $notes, inspectionNotes: $inspectionNotes, rejectionReason: $rejectionReason, storageLocation: $storageLocation, qualityMetrics: $qualityMetrics, attributes: $attributes, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoodsReceiptLineItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.goodsReceiptId, goodsReceiptId) ||
                other.goodsReceiptId == goodsReceiptId) &&
            (identical(
                    other.purchaseOrderLineItemId, purchaseOrderLineItemId) ||
                other.purchaseOrderLineItemId == purchaseOrderLineItemId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.orderedQuantity, orderedQuantity) ||
                other.orderedQuantity == orderedQuantity) &&
            (identical(other.receivedQuantity, receivedQuantity) ||
                other.receivedQuantity == receivedQuantity) &&
            (identical(other.acceptedQuantity, acceptedQuantity) ||
                other.acceptedQuantity == acceptedQuantity) &&
            (identical(other.rejectedQuantity, rejectedQuantity) ||
                other.rejectedQuantity == rejectedQuantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.inspectionNotes, inspectionNotes) ||
                other.inspectionNotes == inspectionNotes) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            (identical(other.storageLocation, storageLocation) ||
                other.storageLocation == storageLocation) &&
            const DeepCollectionEquality()
                .equals(other._qualityMetrics, _qualityMetrics) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        goodsReceiptId,
        purchaseOrderLineItemId,
        itemId,
        orderedQuantity,
        receivedQuantity,
        acceptedQuantity,
        rejectedQuantity,
        unit,
        status,
        sequence,
        lotNumber,
        serialNumber,
        expiryDate,
        condition,
        notes,
        inspectionNotes,
        rejectionReason,
        storageLocation,
        const DeepCollectionEquality().hash(_qualityMetrics),
        const DeepCollectionEquality().hash(_attributes),
        const DeepCollectionEquality().hash(_metadata)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoodsReceiptLineItemImplCopyWith<_$GoodsReceiptLineItemImpl>
      get copyWith =>
          __$$GoodsReceiptLineItemImplCopyWithImpl<_$GoodsReceiptLineItemImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoodsReceiptLineItemImplToJson(
      this,
    );
  }
}

abstract class _GoodsReceiptLineItem implements GoodsReceiptLineItem {
  const factory _GoodsReceiptLineItem(
      {required final String id,
      required final String goodsReceiptId,
      required final String purchaseOrderLineItemId,
      required final String itemId,
      required final double orderedQuantity,
      required final double receivedQuantity,
      required final double acceptedQuantity,
      required final double rejectedQuantity,
      required final String unit,
      required final String status,
      final int? sequence,
      final String? lotNumber,
      final String? serialNumber,
      final DateTime? expiryDate,
      final String? condition,
      final String? notes,
      final String? inspectionNotes,
      final String? rejectionReason,
      final String? storageLocation,
      final Map<String, dynamic>? qualityMetrics,
      final Map<String, dynamic>? attributes,
      final Map<String, dynamic>? metadata}) = _$GoodsReceiptLineItemImpl;

  factory _GoodsReceiptLineItem.fromJson(Map<String, dynamic> json) =
      _$GoodsReceiptLineItemImpl.fromJson;

  @override
  String get id;
  @override
  String get goodsReceiptId;
  @override
  String get purchaseOrderLineItemId;
  @override
  String get itemId;
  @override
  double get orderedQuantity;
  @override
  double get receivedQuantity;
  @override
  double get acceptedQuantity;
  @override
  double get rejectedQuantity;
  @override
  String get unit;
  @override
  String get status;
  @override // 'pending', 'received', 'inspected', 'accepted', 'rejected'
  int? get sequence;
  @override
  String? get lotNumber;
  @override
  String? get serialNumber;
  @override
  DateTime? get expiryDate;
  @override
  String? get condition;
  @override // 'good', 'damaged', 'expired', 'defective'
  String? get notes;
  @override
  String? get inspectionNotes;
  @override
  String? get rejectionReason;
  @override
  String? get storageLocation;
  @override
  Map<String, dynamic>? get qualityMetrics;
  @override
  Map<String, dynamic>? get attributes;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$GoodsReceiptLineItemImplCopyWith<_$GoodsReceiptLineItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateGoodsReceiptRequest _$CreateGoodsReceiptRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateGoodsReceiptRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateGoodsReceiptRequest {
  String get purchaseOrderId => throw _privateConstructorUsedError;
  DateTime get receiptDate => throw _privateConstructorUsedError;
  String? get deliveryNote => throw _privateConstructorUsedError;
  String? get invoiceNumber => throw _privateConstructorUsedError;
  String? get transportCompany => throw _privateConstructorUsedError;
  String? get vehicleNumber => throw _privateConstructorUsedError;
  String? get driverName => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  List<CreateGoodsReceiptLineItemRequest>? get lineItems =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateGoodsReceiptRequestCopyWith<CreateGoodsReceiptRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGoodsReceiptRequestCopyWith<$Res> {
  factory $CreateGoodsReceiptRequestCopyWith(CreateGoodsReceiptRequest value,
          $Res Function(CreateGoodsReceiptRequest) then) =
      _$CreateGoodsReceiptRequestCopyWithImpl<$Res, CreateGoodsReceiptRequest>;
  @useResult
  $Res call(
      {String purchaseOrderId,
      DateTime receiptDate,
      String? deliveryNote,
      String? invoiceNumber,
      String? transportCompany,
      String? vehicleNumber,
      String? driverName,
      String? notes,
      List<CreateGoodsReceiptLineItemRequest>? lineItems,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$CreateGoodsReceiptRequestCopyWithImpl<$Res,
        $Val extends CreateGoodsReceiptRequest>
    implements $CreateGoodsReceiptRequestCopyWith<$Res> {
  _$CreateGoodsReceiptRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseOrderId = null,
    Object? receiptDate = null,
    Object? deliveryNote = freezed,
    Object? invoiceNumber = freezed,
    Object? transportCompany = freezed,
    Object? vehicleNumber = freezed,
    Object? driverName = freezed,
    Object? notes = freezed,
    Object? lineItems = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      purchaseOrderId: null == purchaseOrderId
          ? _value.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      receiptDate: null == receiptDate
          ? _value.receiptDate
          : receiptDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryNote: freezed == deliveryNote
          ? _value.deliveryNote
          : deliveryNote // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceNumber: freezed == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      transportCompany: freezed == transportCompany
          ? _value.transportCompany
          : transportCompany // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleNumber: freezed == vehicleNumber
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      driverName: freezed == driverName
          ? _value.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      lineItems: freezed == lineItems
          ? _value.lineItems
          : lineItems // ignore: cast_nullable_to_non_nullable
              as List<CreateGoodsReceiptLineItemRequest>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateGoodsReceiptRequestImplCopyWith<$Res>
    implements $CreateGoodsReceiptRequestCopyWith<$Res> {
  factory _$$CreateGoodsReceiptRequestImplCopyWith(
          _$CreateGoodsReceiptRequestImpl value,
          $Res Function(_$CreateGoodsReceiptRequestImpl) then) =
      __$$CreateGoodsReceiptRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String purchaseOrderId,
      DateTime receiptDate,
      String? deliveryNote,
      String? invoiceNumber,
      String? transportCompany,
      String? vehicleNumber,
      String? driverName,
      String? notes,
      List<CreateGoodsReceiptLineItemRequest>? lineItems,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$CreateGoodsReceiptRequestImplCopyWithImpl<$Res>
    extends _$CreateGoodsReceiptRequestCopyWithImpl<$Res,
        _$CreateGoodsReceiptRequestImpl>
    implements _$$CreateGoodsReceiptRequestImplCopyWith<$Res> {
  __$$CreateGoodsReceiptRequestImplCopyWithImpl(
      _$CreateGoodsReceiptRequestImpl _value,
      $Res Function(_$CreateGoodsReceiptRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseOrderId = null,
    Object? receiptDate = null,
    Object? deliveryNote = freezed,
    Object? invoiceNumber = freezed,
    Object? transportCompany = freezed,
    Object? vehicleNumber = freezed,
    Object? driverName = freezed,
    Object? notes = freezed,
    Object? lineItems = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$CreateGoodsReceiptRequestImpl(
      purchaseOrderId: null == purchaseOrderId
          ? _value.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      receiptDate: null == receiptDate
          ? _value.receiptDate
          : receiptDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryNote: freezed == deliveryNote
          ? _value.deliveryNote
          : deliveryNote // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceNumber: freezed == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      transportCompany: freezed == transportCompany
          ? _value.transportCompany
          : transportCompany // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleNumber: freezed == vehicleNumber
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      driverName: freezed == driverName
          ? _value.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      lineItems: freezed == lineItems
          ? _value._lineItems
          : lineItems // ignore: cast_nullable_to_non_nullable
              as List<CreateGoodsReceiptLineItemRequest>?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateGoodsReceiptRequestImpl implements _CreateGoodsReceiptRequest {
  const _$CreateGoodsReceiptRequestImpl(
      {required this.purchaseOrderId,
      required this.receiptDate,
      this.deliveryNote,
      this.invoiceNumber,
      this.transportCompany,
      this.vehicleNumber,
      this.driverName,
      this.notes,
      final List<CreateGoodsReceiptLineItemRequest>? lineItems,
      final Map<String, dynamic>? metadata})
      : _lineItems = lineItems,
        _metadata = metadata;

  factory _$CreateGoodsReceiptRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateGoodsReceiptRequestImplFromJson(json);

  @override
  final String purchaseOrderId;
  @override
  final DateTime receiptDate;
  @override
  final String? deliveryNote;
  @override
  final String? invoiceNumber;
  @override
  final String? transportCompany;
  @override
  final String? vehicleNumber;
  @override
  final String? driverName;
  @override
  final String? notes;
  final List<CreateGoodsReceiptLineItemRequest>? _lineItems;
  @override
  List<CreateGoodsReceiptLineItemRequest>? get lineItems {
    final value = _lineItems;
    if (value == null) return null;
    if (_lineItems is EqualUnmodifiableListView) return _lineItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
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
    return 'CreateGoodsReceiptRequest(purchaseOrderId: $purchaseOrderId, receiptDate: $receiptDate, deliveryNote: $deliveryNote, invoiceNumber: $invoiceNumber, transportCompany: $transportCompany, vehicleNumber: $vehicleNumber, driverName: $driverName, notes: $notes, lineItems: $lineItems, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGoodsReceiptRequestImpl &&
            (identical(other.purchaseOrderId, purchaseOrderId) ||
                other.purchaseOrderId == purchaseOrderId) &&
            (identical(other.receiptDate, receiptDate) ||
                other.receiptDate == receiptDate) &&
            (identical(other.deliveryNote, deliveryNote) ||
                other.deliveryNote == deliveryNote) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                other.invoiceNumber == invoiceNumber) &&
            (identical(other.transportCompany, transportCompany) ||
                other.transportCompany == transportCompany) &&
            (identical(other.vehicleNumber, vehicleNumber) ||
                other.vehicleNumber == vehicleNumber) &&
            (identical(other.driverName, driverName) ||
                other.driverName == driverName) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._lineItems, _lineItems) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      purchaseOrderId,
      receiptDate,
      deliveryNote,
      invoiceNumber,
      transportCompany,
      vehicleNumber,
      driverName,
      notes,
      const DeepCollectionEquality().hash(_lineItems),
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGoodsReceiptRequestImplCopyWith<_$CreateGoodsReceiptRequestImpl>
      get copyWith => __$$CreateGoodsReceiptRequestImplCopyWithImpl<
          _$CreateGoodsReceiptRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateGoodsReceiptRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateGoodsReceiptRequest implements CreateGoodsReceiptRequest {
  const factory _CreateGoodsReceiptRequest(
      {required final String purchaseOrderId,
      required final DateTime receiptDate,
      final String? deliveryNote,
      final String? invoiceNumber,
      final String? transportCompany,
      final String? vehicleNumber,
      final String? driverName,
      final String? notes,
      final List<CreateGoodsReceiptLineItemRequest>? lineItems,
      final Map<String, dynamic>? metadata}) = _$CreateGoodsReceiptRequestImpl;

  factory _CreateGoodsReceiptRequest.fromJson(Map<String, dynamic> json) =
      _$CreateGoodsReceiptRequestImpl.fromJson;

  @override
  String get purchaseOrderId;
  @override
  DateTime get receiptDate;
  @override
  String? get deliveryNote;
  @override
  String? get invoiceNumber;
  @override
  String? get transportCompany;
  @override
  String? get vehicleNumber;
  @override
  String? get driverName;
  @override
  String? get notes;
  @override
  List<CreateGoodsReceiptLineItemRequest>? get lineItems;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$CreateGoodsReceiptRequestImplCopyWith<_$CreateGoodsReceiptRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateGoodsReceiptLineItemRequest _$CreateGoodsReceiptLineItemRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateGoodsReceiptLineItemRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateGoodsReceiptLineItemRequest {
  String get purchaseOrderLineItemId => throw _privateConstructorUsedError;
  double get receivedQuantity => throw _privateConstructorUsedError;
  String? get lotNumber => throw _privateConstructorUsedError;
  String? get serialNumber => throw _privateConstructorUsedError;
  DateTime? get expiryDate => throw _privateConstructorUsedError;
  String? get condition => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get storageLocation => throw _privateConstructorUsedError;
  Map<String, dynamic>? get qualityMetrics =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateGoodsReceiptLineItemRequestCopyWith<CreateGoodsReceiptLineItemRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGoodsReceiptLineItemRequestCopyWith<$Res> {
  factory $CreateGoodsReceiptLineItemRequestCopyWith(
          CreateGoodsReceiptLineItemRequest value,
          $Res Function(CreateGoodsReceiptLineItemRequest) then) =
      _$CreateGoodsReceiptLineItemRequestCopyWithImpl<$Res,
          CreateGoodsReceiptLineItemRequest>;
  @useResult
  $Res call(
      {String purchaseOrderLineItemId,
      double receivedQuantity,
      String? lotNumber,
      String? serialNumber,
      DateTime? expiryDate,
      String? condition,
      String? notes,
      String? storageLocation,
      Map<String, dynamic>? qualityMetrics,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class _$CreateGoodsReceiptLineItemRequestCopyWithImpl<$Res,
        $Val extends CreateGoodsReceiptLineItemRequest>
    implements $CreateGoodsReceiptLineItemRequestCopyWith<$Res> {
  _$CreateGoodsReceiptLineItemRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseOrderLineItemId = null,
    Object? receivedQuantity = null,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? expiryDate = freezed,
    Object? condition = freezed,
    Object? notes = freezed,
    Object? storageLocation = freezed,
    Object? qualityMetrics = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_value.copyWith(
      purchaseOrderLineItemId: null == purchaseOrderLineItemId
          ? _value.purchaseOrderLineItemId
          : purchaseOrderLineItemId // ignore: cast_nullable_to_non_nullable
              as String,
      receivedQuantity: null == receivedQuantity
          ? _value.receivedQuantity
          : receivedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      storageLocation: freezed == storageLocation
          ? _value.storageLocation
          : storageLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      qualityMetrics: freezed == qualityMetrics
          ? _value.qualityMetrics
          : qualityMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateGoodsReceiptLineItemRequestImplCopyWith<$Res>
    implements $CreateGoodsReceiptLineItemRequestCopyWith<$Res> {
  factory _$$CreateGoodsReceiptLineItemRequestImplCopyWith(
          _$CreateGoodsReceiptLineItemRequestImpl value,
          $Res Function(_$CreateGoodsReceiptLineItemRequestImpl) then) =
      __$$CreateGoodsReceiptLineItemRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String purchaseOrderLineItemId,
      double receivedQuantity,
      String? lotNumber,
      String? serialNumber,
      DateTime? expiryDate,
      String? condition,
      String? notes,
      String? storageLocation,
      Map<String, dynamic>? qualityMetrics,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class __$$CreateGoodsReceiptLineItemRequestImplCopyWithImpl<$Res>
    extends _$CreateGoodsReceiptLineItemRequestCopyWithImpl<$Res,
        _$CreateGoodsReceiptLineItemRequestImpl>
    implements _$$CreateGoodsReceiptLineItemRequestImplCopyWith<$Res> {
  __$$CreateGoodsReceiptLineItemRequestImplCopyWithImpl(
      _$CreateGoodsReceiptLineItemRequestImpl _value,
      $Res Function(_$CreateGoodsReceiptLineItemRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseOrderLineItemId = null,
    Object? receivedQuantity = null,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? expiryDate = freezed,
    Object? condition = freezed,
    Object? notes = freezed,
    Object? storageLocation = freezed,
    Object? qualityMetrics = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_$CreateGoodsReceiptLineItemRequestImpl(
      purchaseOrderLineItemId: null == purchaseOrderLineItemId
          ? _value.purchaseOrderLineItemId
          : purchaseOrderLineItemId // ignore: cast_nullable_to_non_nullable
              as String,
      receivedQuantity: null == receivedQuantity
          ? _value.receivedQuantity
          : receivedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      storageLocation: freezed == storageLocation
          ? _value.storageLocation
          : storageLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      qualityMetrics: freezed == qualityMetrics
          ? _value._qualityMetrics
          : qualityMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      attributes: freezed == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateGoodsReceiptLineItemRequestImpl
    implements _CreateGoodsReceiptLineItemRequest {
  const _$CreateGoodsReceiptLineItemRequestImpl(
      {required this.purchaseOrderLineItemId,
      required this.receivedQuantity,
      this.lotNumber,
      this.serialNumber,
      this.expiryDate,
      this.condition,
      this.notes,
      this.storageLocation,
      final Map<String, dynamic>? qualityMetrics,
      final Map<String, dynamic>? attributes})
      : _qualityMetrics = qualityMetrics,
        _attributes = attributes;

  factory _$CreateGoodsReceiptLineItemRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateGoodsReceiptLineItemRequestImplFromJson(json);

  @override
  final String purchaseOrderLineItemId;
  @override
  final double receivedQuantity;
  @override
  final String? lotNumber;
  @override
  final String? serialNumber;
  @override
  final DateTime? expiryDate;
  @override
  final String? condition;
  @override
  final String? notes;
  @override
  final String? storageLocation;
  final Map<String, dynamic>? _qualityMetrics;
  @override
  Map<String, dynamic>? get qualityMetrics {
    final value = _qualityMetrics;
    if (value == null) return null;
    if (_qualityMetrics is EqualUnmodifiableMapView) return _qualityMetrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

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
    return 'CreateGoodsReceiptLineItemRequest(purchaseOrderLineItemId: $purchaseOrderLineItemId, receivedQuantity: $receivedQuantity, lotNumber: $lotNumber, serialNumber: $serialNumber, expiryDate: $expiryDate, condition: $condition, notes: $notes, storageLocation: $storageLocation, qualityMetrics: $qualityMetrics, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGoodsReceiptLineItemRequestImpl &&
            (identical(
                    other.purchaseOrderLineItemId, purchaseOrderLineItemId) ||
                other.purchaseOrderLineItemId == purchaseOrderLineItemId) &&
            (identical(other.receivedQuantity, receivedQuantity) ||
                other.receivedQuantity == receivedQuantity) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.storageLocation, storageLocation) ||
                other.storageLocation == storageLocation) &&
            const DeepCollectionEquality()
                .equals(other._qualityMetrics, _qualityMetrics) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      purchaseOrderLineItemId,
      receivedQuantity,
      lotNumber,
      serialNumber,
      expiryDate,
      condition,
      notes,
      storageLocation,
      const DeepCollectionEquality().hash(_qualityMetrics),
      const DeepCollectionEquality().hash(_attributes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGoodsReceiptLineItemRequestImplCopyWith<
          _$CreateGoodsReceiptLineItemRequestImpl>
      get copyWith => __$$CreateGoodsReceiptLineItemRequestImplCopyWithImpl<
          _$CreateGoodsReceiptLineItemRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateGoodsReceiptLineItemRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateGoodsReceiptLineItemRequest
    implements CreateGoodsReceiptLineItemRequest {
  const factory _CreateGoodsReceiptLineItemRequest(
          {required final String purchaseOrderLineItemId,
          required final double receivedQuantity,
          final String? lotNumber,
          final String? serialNumber,
          final DateTime? expiryDate,
          final String? condition,
          final String? notes,
          final String? storageLocation,
          final Map<String, dynamic>? qualityMetrics,
          final Map<String, dynamic>? attributes}) =
      _$CreateGoodsReceiptLineItemRequestImpl;

  factory _CreateGoodsReceiptLineItemRequest.fromJson(
          Map<String, dynamic> json) =
      _$CreateGoodsReceiptLineItemRequestImpl.fromJson;

  @override
  String get purchaseOrderLineItemId;
  @override
  double get receivedQuantity;
  @override
  String? get lotNumber;
  @override
  String? get serialNumber;
  @override
  DateTime? get expiryDate;
  @override
  String? get condition;
  @override
  String? get notes;
  @override
  String? get storageLocation;
  @override
  Map<String, dynamic>? get qualityMetrics;
  @override
  Map<String, dynamic>? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$CreateGoodsReceiptLineItemRequestImplCopyWith<
          _$CreateGoodsReceiptLineItemRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateGoodsReceiptRequest _$UpdateGoodsReceiptRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateGoodsReceiptRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateGoodsReceiptRequest {
  DateTime? get receiptDate => throw _privateConstructorUsedError;
  String? get deliveryNote => throw _privateConstructorUsedError;
  String? get invoiceNumber => throw _privateConstructorUsedError;
  String? get transportCompany => throw _privateConstructorUsedError;
  String? get vehicleNumber => throw _privateConstructorUsedError;
  String? get driverName => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateGoodsReceiptRequestCopyWith<UpdateGoodsReceiptRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateGoodsReceiptRequestCopyWith<$Res> {
  factory $UpdateGoodsReceiptRequestCopyWith(UpdateGoodsReceiptRequest value,
          $Res Function(UpdateGoodsReceiptRequest) then) =
      _$UpdateGoodsReceiptRequestCopyWithImpl<$Res, UpdateGoodsReceiptRequest>;
  @useResult
  $Res call(
      {DateTime? receiptDate,
      String? deliveryNote,
      String? invoiceNumber,
      String? transportCompany,
      String? vehicleNumber,
      String? driverName,
      String? notes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$UpdateGoodsReceiptRequestCopyWithImpl<$Res,
        $Val extends UpdateGoodsReceiptRequest>
    implements $UpdateGoodsReceiptRequestCopyWith<$Res> {
  _$UpdateGoodsReceiptRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiptDate = freezed,
    Object? deliveryNote = freezed,
    Object? invoiceNumber = freezed,
    Object? transportCompany = freezed,
    Object? vehicleNumber = freezed,
    Object? driverName = freezed,
    Object? notes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      receiptDate: freezed == receiptDate
          ? _value.receiptDate
          : receiptDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryNote: freezed == deliveryNote
          ? _value.deliveryNote
          : deliveryNote // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceNumber: freezed == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      transportCompany: freezed == transportCompany
          ? _value.transportCompany
          : transportCompany // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleNumber: freezed == vehicleNumber
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      driverName: freezed == driverName
          ? _value.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
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
abstract class _$$UpdateGoodsReceiptRequestImplCopyWith<$Res>
    implements $UpdateGoodsReceiptRequestCopyWith<$Res> {
  factory _$$UpdateGoodsReceiptRequestImplCopyWith(
          _$UpdateGoodsReceiptRequestImpl value,
          $Res Function(_$UpdateGoodsReceiptRequestImpl) then) =
      __$$UpdateGoodsReceiptRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? receiptDate,
      String? deliveryNote,
      String? invoiceNumber,
      String? transportCompany,
      String? vehicleNumber,
      String? driverName,
      String? notes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$UpdateGoodsReceiptRequestImplCopyWithImpl<$Res>
    extends _$UpdateGoodsReceiptRequestCopyWithImpl<$Res,
        _$UpdateGoodsReceiptRequestImpl>
    implements _$$UpdateGoodsReceiptRequestImplCopyWith<$Res> {
  __$$UpdateGoodsReceiptRequestImplCopyWithImpl(
      _$UpdateGoodsReceiptRequestImpl _value,
      $Res Function(_$UpdateGoodsReceiptRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiptDate = freezed,
    Object? deliveryNote = freezed,
    Object? invoiceNumber = freezed,
    Object? transportCompany = freezed,
    Object? vehicleNumber = freezed,
    Object? driverName = freezed,
    Object? notes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$UpdateGoodsReceiptRequestImpl(
      receiptDate: freezed == receiptDate
          ? _value.receiptDate
          : receiptDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryNote: freezed == deliveryNote
          ? _value.deliveryNote
          : deliveryNote // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceNumber: freezed == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      transportCompany: freezed == transportCompany
          ? _value.transportCompany
          : transportCompany // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleNumber: freezed == vehicleNumber
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      driverName: freezed == driverName
          ? _value.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
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
class _$UpdateGoodsReceiptRequestImpl implements _UpdateGoodsReceiptRequest {
  const _$UpdateGoodsReceiptRequestImpl(
      {this.receiptDate,
      this.deliveryNote,
      this.invoiceNumber,
      this.transportCompany,
      this.vehicleNumber,
      this.driverName,
      this.notes,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$UpdateGoodsReceiptRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateGoodsReceiptRequestImplFromJson(json);

  @override
  final DateTime? receiptDate;
  @override
  final String? deliveryNote;
  @override
  final String? invoiceNumber;
  @override
  final String? transportCompany;
  @override
  final String? vehicleNumber;
  @override
  final String? driverName;
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
    return 'UpdateGoodsReceiptRequest(receiptDate: $receiptDate, deliveryNote: $deliveryNote, invoiceNumber: $invoiceNumber, transportCompany: $transportCompany, vehicleNumber: $vehicleNumber, driverName: $driverName, notes: $notes, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateGoodsReceiptRequestImpl &&
            (identical(other.receiptDate, receiptDate) ||
                other.receiptDate == receiptDate) &&
            (identical(other.deliveryNote, deliveryNote) ||
                other.deliveryNote == deliveryNote) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                other.invoiceNumber == invoiceNumber) &&
            (identical(other.transportCompany, transportCompany) ||
                other.transportCompany == transportCompany) &&
            (identical(other.vehicleNumber, vehicleNumber) ||
                other.vehicleNumber == vehicleNumber) &&
            (identical(other.driverName, driverName) ||
                other.driverName == driverName) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      receiptDate,
      deliveryNote,
      invoiceNumber,
      transportCompany,
      vehicleNumber,
      driverName,
      notes,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateGoodsReceiptRequestImplCopyWith<_$UpdateGoodsReceiptRequestImpl>
      get copyWith => __$$UpdateGoodsReceiptRequestImplCopyWithImpl<
          _$UpdateGoodsReceiptRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateGoodsReceiptRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateGoodsReceiptRequest implements UpdateGoodsReceiptRequest {
  const factory _UpdateGoodsReceiptRequest(
      {final DateTime? receiptDate,
      final String? deliveryNote,
      final String? invoiceNumber,
      final String? transportCompany,
      final String? vehicleNumber,
      final String? driverName,
      final String? notes,
      final Map<String, dynamic>? metadata}) = _$UpdateGoodsReceiptRequestImpl;

  factory _UpdateGoodsReceiptRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateGoodsReceiptRequestImpl.fromJson;

  @override
  DateTime? get receiptDate;
  @override
  String? get deliveryNote;
  @override
  String? get invoiceNumber;
  @override
  String? get transportCompany;
  @override
  String? get vehicleNumber;
  @override
  String? get driverName;
  @override
  String? get notes;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$UpdateGoodsReceiptRequestImplCopyWith<_$UpdateGoodsReceiptRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateGoodsReceiptLineItemRequest _$UpdateGoodsReceiptLineItemRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateGoodsReceiptLineItemRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateGoodsReceiptLineItemRequest {
  double? get receivedQuantity => throw _privateConstructorUsedError;
  double? get acceptedQuantity => throw _privateConstructorUsedError;
  double? get rejectedQuantity => throw _privateConstructorUsedError;
  String? get lotNumber => throw _privateConstructorUsedError;
  String? get serialNumber => throw _privateConstructorUsedError;
  DateTime? get expiryDate => throw _privateConstructorUsedError;
  String? get condition => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get inspectionNotes => throw _privateConstructorUsedError;
  String? get rejectionReason => throw _privateConstructorUsedError;
  String? get storageLocation => throw _privateConstructorUsedError;
  Map<String, dynamic>? get qualityMetrics =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateGoodsReceiptLineItemRequestCopyWith<UpdateGoodsReceiptLineItemRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateGoodsReceiptLineItemRequestCopyWith<$Res> {
  factory $UpdateGoodsReceiptLineItemRequestCopyWith(
          UpdateGoodsReceiptLineItemRequest value,
          $Res Function(UpdateGoodsReceiptLineItemRequest) then) =
      _$UpdateGoodsReceiptLineItemRequestCopyWithImpl<$Res,
          UpdateGoodsReceiptLineItemRequest>;
  @useResult
  $Res call(
      {double? receivedQuantity,
      double? acceptedQuantity,
      double? rejectedQuantity,
      String? lotNumber,
      String? serialNumber,
      DateTime? expiryDate,
      String? condition,
      String? notes,
      String? inspectionNotes,
      String? rejectionReason,
      String? storageLocation,
      Map<String, dynamic>? qualityMetrics,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class _$UpdateGoodsReceiptLineItemRequestCopyWithImpl<$Res,
        $Val extends UpdateGoodsReceiptLineItemRequest>
    implements $UpdateGoodsReceiptLineItemRequestCopyWith<$Res> {
  _$UpdateGoodsReceiptLineItemRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receivedQuantity = freezed,
    Object? acceptedQuantity = freezed,
    Object? rejectedQuantity = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? expiryDate = freezed,
    Object? condition = freezed,
    Object? notes = freezed,
    Object? inspectionNotes = freezed,
    Object? rejectionReason = freezed,
    Object? storageLocation = freezed,
    Object? qualityMetrics = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_value.copyWith(
      receivedQuantity: freezed == receivedQuantity
          ? _value.receivedQuantity
          : receivedQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      acceptedQuantity: freezed == acceptedQuantity
          ? _value.acceptedQuantity
          : acceptedQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      rejectedQuantity: freezed == rejectedQuantity
          ? _value.rejectedQuantity
          : rejectedQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectionNotes: freezed == inspectionNotes
          ? _value.inspectionNotes
          : inspectionNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      storageLocation: freezed == storageLocation
          ? _value.storageLocation
          : storageLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      qualityMetrics: freezed == qualityMetrics
          ? _value.qualityMetrics
          : qualityMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateGoodsReceiptLineItemRequestImplCopyWith<$Res>
    implements $UpdateGoodsReceiptLineItemRequestCopyWith<$Res> {
  factory _$$UpdateGoodsReceiptLineItemRequestImplCopyWith(
          _$UpdateGoodsReceiptLineItemRequestImpl value,
          $Res Function(_$UpdateGoodsReceiptLineItemRequestImpl) then) =
      __$$UpdateGoodsReceiptLineItemRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? receivedQuantity,
      double? acceptedQuantity,
      double? rejectedQuantity,
      String? lotNumber,
      String? serialNumber,
      DateTime? expiryDate,
      String? condition,
      String? notes,
      String? inspectionNotes,
      String? rejectionReason,
      String? storageLocation,
      Map<String, dynamic>? qualityMetrics,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class __$$UpdateGoodsReceiptLineItemRequestImplCopyWithImpl<$Res>
    extends _$UpdateGoodsReceiptLineItemRequestCopyWithImpl<$Res,
        _$UpdateGoodsReceiptLineItemRequestImpl>
    implements _$$UpdateGoodsReceiptLineItemRequestImplCopyWith<$Res> {
  __$$UpdateGoodsReceiptLineItemRequestImplCopyWithImpl(
      _$UpdateGoodsReceiptLineItemRequestImpl _value,
      $Res Function(_$UpdateGoodsReceiptLineItemRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receivedQuantity = freezed,
    Object? acceptedQuantity = freezed,
    Object? rejectedQuantity = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? expiryDate = freezed,
    Object? condition = freezed,
    Object? notes = freezed,
    Object? inspectionNotes = freezed,
    Object? rejectionReason = freezed,
    Object? storageLocation = freezed,
    Object? qualityMetrics = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_$UpdateGoodsReceiptLineItemRequestImpl(
      receivedQuantity: freezed == receivedQuantity
          ? _value.receivedQuantity
          : receivedQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      acceptedQuantity: freezed == acceptedQuantity
          ? _value.acceptedQuantity
          : acceptedQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      rejectedQuantity: freezed == rejectedQuantity
          ? _value.rejectedQuantity
          : rejectedQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectionNotes: freezed == inspectionNotes
          ? _value.inspectionNotes
          : inspectionNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      storageLocation: freezed == storageLocation
          ? _value.storageLocation
          : storageLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      qualityMetrics: freezed == qualityMetrics
          ? _value._qualityMetrics
          : qualityMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      attributes: freezed == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateGoodsReceiptLineItemRequestImpl
    implements _UpdateGoodsReceiptLineItemRequest {
  const _$UpdateGoodsReceiptLineItemRequestImpl(
      {this.receivedQuantity,
      this.acceptedQuantity,
      this.rejectedQuantity,
      this.lotNumber,
      this.serialNumber,
      this.expiryDate,
      this.condition,
      this.notes,
      this.inspectionNotes,
      this.rejectionReason,
      this.storageLocation,
      final Map<String, dynamic>? qualityMetrics,
      final Map<String, dynamic>? attributes})
      : _qualityMetrics = qualityMetrics,
        _attributes = attributes;

  factory _$UpdateGoodsReceiptLineItemRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateGoodsReceiptLineItemRequestImplFromJson(json);

  @override
  final double? receivedQuantity;
  @override
  final double? acceptedQuantity;
  @override
  final double? rejectedQuantity;
  @override
  final String? lotNumber;
  @override
  final String? serialNumber;
  @override
  final DateTime? expiryDate;
  @override
  final String? condition;
  @override
  final String? notes;
  @override
  final String? inspectionNotes;
  @override
  final String? rejectionReason;
  @override
  final String? storageLocation;
  final Map<String, dynamic>? _qualityMetrics;
  @override
  Map<String, dynamic>? get qualityMetrics {
    final value = _qualityMetrics;
    if (value == null) return null;
    if (_qualityMetrics is EqualUnmodifiableMapView) return _qualityMetrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

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
    return 'UpdateGoodsReceiptLineItemRequest(receivedQuantity: $receivedQuantity, acceptedQuantity: $acceptedQuantity, rejectedQuantity: $rejectedQuantity, lotNumber: $lotNumber, serialNumber: $serialNumber, expiryDate: $expiryDate, condition: $condition, notes: $notes, inspectionNotes: $inspectionNotes, rejectionReason: $rejectionReason, storageLocation: $storageLocation, qualityMetrics: $qualityMetrics, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateGoodsReceiptLineItemRequestImpl &&
            (identical(other.receivedQuantity, receivedQuantity) ||
                other.receivedQuantity == receivedQuantity) &&
            (identical(other.acceptedQuantity, acceptedQuantity) ||
                other.acceptedQuantity == acceptedQuantity) &&
            (identical(other.rejectedQuantity, rejectedQuantity) ||
                other.rejectedQuantity == rejectedQuantity) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.inspectionNotes, inspectionNotes) ||
                other.inspectionNotes == inspectionNotes) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            (identical(other.storageLocation, storageLocation) ||
                other.storageLocation == storageLocation) &&
            const DeepCollectionEquality()
                .equals(other._qualityMetrics, _qualityMetrics) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      receivedQuantity,
      acceptedQuantity,
      rejectedQuantity,
      lotNumber,
      serialNumber,
      expiryDate,
      condition,
      notes,
      inspectionNotes,
      rejectionReason,
      storageLocation,
      const DeepCollectionEquality().hash(_qualityMetrics),
      const DeepCollectionEquality().hash(_attributes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateGoodsReceiptLineItemRequestImplCopyWith<
          _$UpdateGoodsReceiptLineItemRequestImpl>
      get copyWith => __$$UpdateGoodsReceiptLineItemRequestImplCopyWithImpl<
          _$UpdateGoodsReceiptLineItemRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateGoodsReceiptLineItemRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateGoodsReceiptLineItemRequest
    implements UpdateGoodsReceiptLineItemRequest {
  const factory _UpdateGoodsReceiptLineItemRequest(
          {final double? receivedQuantity,
          final double? acceptedQuantity,
          final double? rejectedQuantity,
          final String? lotNumber,
          final String? serialNumber,
          final DateTime? expiryDate,
          final String? condition,
          final String? notes,
          final String? inspectionNotes,
          final String? rejectionReason,
          final String? storageLocation,
          final Map<String, dynamic>? qualityMetrics,
          final Map<String, dynamic>? attributes}) =
      _$UpdateGoodsReceiptLineItemRequestImpl;

  factory _UpdateGoodsReceiptLineItemRequest.fromJson(
          Map<String, dynamic> json) =
      _$UpdateGoodsReceiptLineItemRequestImpl.fromJson;

  @override
  double? get receivedQuantity;
  @override
  double? get acceptedQuantity;
  @override
  double? get rejectedQuantity;
  @override
  String? get lotNumber;
  @override
  String? get serialNumber;
  @override
  DateTime? get expiryDate;
  @override
  String? get condition;
  @override
  String? get notes;
  @override
  String? get inspectionNotes;
  @override
  String? get rejectionReason;
  @override
  String? get storageLocation;
  @override
  Map<String, dynamic>? get qualityMetrics;
  @override
  Map<String, dynamic>? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$UpdateGoodsReceiptLineItemRequestImplCopyWith<
          _$UpdateGoodsReceiptLineItemRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GoodsReceiptFilters _$GoodsReceiptFiltersFromJson(Map<String, dynamic> json) {
  return _GoodsReceiptFilters.fromJson(json);
}

/// @nodoc
mixin _$GoodsReceiptFilters {
  String? get purchaseOrderId => throw _privateConstructorUsedError;
  String? get supplierId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get receivedBy => throw _privateConstructorUsedError;
  DateTime? get receiptDateAfter => throw _privateConstructorUsedError;
  DateTime? get receiptDateBefore => throw _privateConstructorUsedError;
  DateTime? get createdAfter => throw _privateConstructorUsedError;
  DateTime? get createdBefore => throw _privateConstructorUsedError;
  List<String>? get itemIds => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String? get sortBy => throw _privateConstructorUsedError;
  String? get sortOrder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoodsReceiptFiltersCopyWith<GoodsReceiptFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoodsReceiptFiltersCopyWith<$Res> {
  factory $GoodsReceiptFiltersCopyWith(
          GoodsReceiptFilters value, $Res Function(GoodsReceiptFilters) then) =
      _$GoodsReceiptFiltersCopyWithImpl<$Res, GoodsReceiptFilters>;
  @useResult
  $Res call(
      {String? purchaseOrderId,
      String? supplierId,
      String? status,
      String? receivedBy,
      DateTime? receiptDateAfter,
      DateTime? receiptDateBefore,
      DateTime? createdAfter,
      DateTime? createdBefore,
      List<String>? itemIds,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class _$GoodsReceiptFiltersCopyWithImpl<$Res, $Val extends GoodsReceiptFilters>
    implements $GoodsReceiptFiltersCopyWith<$Res> {
  _$GoodsReceiptFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseOrderId = freezed,
    Object? supplierId = freezed,
    Object? status = freezed,
    Object? receivedBy = freezed,
    Object? receiptDateAfter = freezed,
    Object? receiptDateBefore = freezed,
    Object? createdAfter = freezed,
    Object? createdBefore = freezed,
    Object? itemIds = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_value.copyWith(
      purchaseOrderId: freezed == purchaseOrderId
          ? _value.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierId: freezed == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      receivedBy: freezed == receivedBy
          ? _value.receivedBy
          : receivedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      receiptDateAfter: freezed == receiptDateAfter
          ? _value.receiptDateAfter
          : receiptDateAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      receiptDateBefore: freezed == receiptDateBefore
          ? _value.receiptDateBefore
          : receiptDateBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAfter: freezed == createdAfter
          ? _value.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _value.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      itemIds: freezed == itemIds
          ? _value.itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
abstract class _$$GoodsReceiptFiltersImplCopyWith<$Res>
    implements $GoodsReceiptFiltersCopyWith<$Res> {
  factory _$$GoodsReceiptFiltersImplCopyWith(_$GoodsReceiptFiltersImpl value,
          $Res Function(_$GoodsReceiptFiltersImpl) then) =
      __$$GoodsReceiptFiltersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? purchaseOrderId,
      String? supplierId,
      String? status,
      String? receivedBy,
      DateTime? receiptDateAfter,
      DateTime? receiptDateBefore,
      DateTime? createdAfter,
      DateTime? createdBefore,
      List<String>? itemIds,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class __$$GoodsReceiptFiltersImplCopyWithImpl<$Res>
    extends _$GoodsReceiptFiltersCopyWithImpl<$Res, _$GoodsReceiptFiltersImpl>
    implements _$$GoodsReceiptFiltersImplCopyWith<$Res> {
  __$$GoodsReceiptFiltersImplCopyWithImpl(_$GoodsReceiptFiltersImpl _value,
      $Res Function(_$GoodsReceiptFiltersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseOrderId = freezed,
    Object? supplierId = freezed,
    Object? status = freezed,
    Object? receivedBy = freezed,
    Object? receiptDateAfter = freezed,
    Object? receiptDateBefore = freezed,
    Object? createdAfter = freezed,
    Object? createdBefore = freezed,
    Object? itemIds = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_$GoodsReceiptFiltersImpl(
      purchaseOrderId: freezed == purchaseOrderId
          ? _value.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierId: freezed == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      receivedBy: freezed == receivedBy
          ? _value.receivedBy
          : receivedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      receiptDateAfter: freezed == receiptDateAfter
          ? _value.receiptDateAfter
          : receiptDateAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      receiptDateBefore: freezed == receiptDateBefore
          ? _value.receiptDateBefore
          : receiptDateBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAfter: freezed == createdAfter
          ? _value.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _value.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      itemIds: freezed == itemIds
          ? _value._itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
class _$GoodsReceiptFiltersImpl extends _GoodsReceiptFilters {
  const _$GoodsReceiptFiltersImpl(
      {this.purchaseOrderId,
      this.supplierId,
      this.status,
      this.receivedBy,
      this.receiptDateAfter,
      this.receiptDateBefore,
      this.createdAfter,
      this.createdBefore,
      final List<String>? itemIds,
      this.page,
      this.limit,
      this.sortBy,
      this.sortOrder})
      : _itemIds = itemIds,
        super._();

  factory _$GoodsReceiptFiltersImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoodsReceiptFiltersImplFromJson(json);

  @override
  final String? purchaseOrderId;
  @override
  final String? supplierId;
  @override
  final String? status;
  @override
  final String? receivedBy;
  @override
  final DateTime? receiptDateAfter;
  @override
  final DateTime? receiptDateBefore;
  @override
  final DateTime? createdAfter;
  @override
  final DateTime? createdBefore;
  final List<String>? _itemIds;
  @override
  List<String>? get itemIds {
    final value = _itemIds;
    if (value == null) return null;
    if (_itemIds is EqualUnmodifiableListView) return _itemIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
    return 'GoodsReceiptFilters(purchaseOrderId: $purchaseOrderId, supplierId: $supplierId, status: $status, receivedBy: $receivedBy, receiptDateAfter: $receiptDateAfter, receiptDateBefore: $receiptDateBefore, createdAfter: $createdAfter, createdBefore: $createdBefore, itemIds: $itemIds, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoodsReceiptFiltersImpl &&
            (identical(other.purchaseOrderId, purchaseOrderId) ||
                other.purchaseOrderId == purchaseOrderId) &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.receivedBy, receivedBy) ||
                other.receivedBy == receivedBy) &&
            (identical(other.receiptDateAfter, receiptDateAfter) ||
                other.receiptDateAfter == receiptDateAfter) &&
            (identical(other.receiptDateBefore, receiptDateBefore) ||
                other.receiptDateBefore == receiptDateBefore) &&
            (identical(other.createdAfter, createdAfter) ||
                other.createdAfter == createdAfter) &&
            (identical(other.createdBefore, createdBefore) ||
                other.createdBefore == createdBefore) &&
            const DeepCollectionEquality().equals(other._itemIds, _itemIds) &&
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
      purchaseOrderId,
      supplierId,
      status,
      receivedBy,
      receiptDateAfter,
      receiptDateBefore,
      createdAfter,
      createdBefore,
      const DeepCollectionEquality().hash(_itemIds),
      page,
      limit,
      sortBy,
      sortOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoodsReceiptFiltersImplCopyWith<_$GoodsReceiptFiltersImpl> get copyWith =>
      __$$GoodsReceiptFiltersImplCopyWithImpl<_$GoodsReceiptFiltersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoodsReceiptFiltersImplToJson(
      this,
    );
  }
}

abstract class _GoodsReceiptFilters extends GoodsReceiptFilters {
  const factory _GoodsReceiptFilters(
      {final String? purchaseOrderId,
      final String? supplierId,
      final String? status,
      final String? receivedBy,
      final DateTime? receiptDateAfter,
      final DateTime? receiptDateBefore,
      final DateTime? createdAfter,
      final DateTime? createdBefore,
      final List<String>? itemIds,
      final int? page,
      final int? limit,
      final String? sortBy,
      final String? sortOrder}) = _$GoodsReceiptFiltersImpl;
  const _GoodsReceiptFilters._() : super._();

  factory _GoodsReceiptFilters.fromJson(Map<String, dynamic> json) =
      _$GoodsReceiptFiltersImpl.fromJson;

  @override
  String? get purchaseOrderId;
  @override
  String? get supplierId;
  @override
  String? get status;
  @override
  String? get receivedBy;
  @override
  DateTime? get receiptDateAfter;
  @override
  DateTime? get receiptDateBefore;
  @override
  DateTime? get createdAfter;
  @override
  DateTime? get createdBefore;
  @override
  List<String>? get itemIds;
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
  _$$GoodsReceiptFiltersImplCopyWith<_$GoodsReceiptFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InspectGoodsReceiptRequest _$InspectGoodsReceiptRequestFromJson(
    Map<String, dynamic> json) {
  return _InspectGoodsReceiptRequest.fromJson(json);
}

/// @nodoc
mixin _$InspectGoodsReceiptRequest {
  String? get inspectionNotes => throw _privateConstructorUsedError;
  Map<String, dynamic>? get qualityMetrics =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InspectGoodsReceiptRequestCopyWith<InspectGoodsReceiptRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InspectGoodsReceiptRequestCopyWith<$Res> {
  factory $InspectGoodsReceiptRequestCopyWith(InspectGoodsReceiptRequest value,
          $Res Function(InspectGoodsReceiptRequest) then) =
      _$InspectGoodsReceiptRequestCopyWithImpl<$Res,
          InspectGoodsReceiptRequest>;
  @useResult
  $Res call({String? inspectionNotes, Map<String, dynamic>? qualityMetrics});
}

/// @nodoc
class _$InspectGoodsReceiptRequestCopyWithImpl<$Res,
        $Val extends InspectGoodsReceiptRequest>
    implements $InspectGoodsReceiptRequestCopyWith<$Res> {
  _$InspectGoodsReceiptRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inspectionNotes = freezed,
    Object? qualityMetrics = freezed,
  }) {
    return _then(_value.copyWith(
      inspectionNotes: freezed == inspectionNotes
          ? _value.inspectionNotes
          : inspectionNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      qualityMetrics: freezed == qualityMetrics
          ? _value.qualityMetrics
          : qualityMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InspectGoodsReceiptRequestImplCopyWith<$Res>
    implements $InspectGoodsReceiptRequestCopyWith<$Res> {
  factory _$$InspectGoodsReceiptRequestImplCopyWith(
          _$InspectGoodsReceiptRequestImpl value,
          $Res Function(_$InspectGoodsReceiptRequestImpl) then) =
      __$$InspectGoodsReceiptRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? inspectionNotes, Map<String, dynamic>? qualityMetrics});
}

/// @nodoc
class __$$InspectGoodsReceiptRequestImplCopyWithImpl<$Res>
    extends _$InspectGoodsReceiptRequestCopyWithImpl<$Res,
        _$InspectGoodsReceiptRequestImpl>
    implements _$$InspectGoodsReceiptRequestImplCopyWith<$Res> {
  __$$InspectGoodsReceiptRequestImplCopyWithImpl(
      _$InspectGoodsReceiptRequestImpl _value,
      $Res Function(_$InspectGoodsReceiptRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inspectionNotes = freezed,
    Object? qualityMetrics = freezed,
  }) {
    return _then(_$InspectGoodsReceiptRequestImpl(
      inspectionNotes: freezed == inspectionNotes
          ? _value.inspectionNotes
          : inspectionNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      qualityMetrics: freezed == qualityMetrics
          ? _value._qualityMetrics
          : qualityMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InspectGoodsReceiptRequestImpl implements _InspectGoodsReceiptRequest {
  const _$InspectGoodsReceiptRequestImpl(
      {this.inspectionNotes, final Map<String, dynamic>? qualityMetrics})
      : _qualityMetrics = qualityMetrics;

  factory _$InspectGoodsReceiptRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InspectGoodsReceiptRequestImplFromJson(json);

  @override
  final String? inspectionNotes;
  final Map<String, dynamic>? _qualityMetrics;
  @override
  Map<String, dynamic>? get qualityMetrics {
    final value = _qualityMetrics;
    if (value == null) return null;
    if (_qualityMetrics is EqualUnmodifiableMapView) return _qualityMetrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'InspectGoodsReceiptRequest(inspectionNotes: $inspectionNotes, qualityMetrics: $qualityMetrics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InspectGoodsReceiptRequestImpl &&
            (identical(other.inspectionNotes, inspectionNotes) ||
                other.inspectionNotes == inspectionNotes) &&
            const DeepCollectionEquality()
                .equals(other._qualityMetrics, _qualityMetrics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, inspectionNotes,
      const DeepCollectionEquality().hash(_qualityMetrics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InspectGoodsReceiptRequestImplCopyWith<_$InspectGoodsReceiptRequestImpl>
      get copyWith => __$$InspectGoodsReceiptRequestImplCopyWithImpl<
          _$InspectGoodsReceiptRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InspectGoodsReceiptRequestImplToJson(
      this,
    );
  }
}

abstract class _InspectGoodsReceiptRequest
    implements InspectGoodsReceiptRequest {
  const factory _InspectGoodsReceiptRequest(
          {final String? inspectionNotes,
          final Map<String, dynamic>? qualityMetrics}) =
      _$InspectGoodsReceiptRequestImpl;

  factory _InspectGoodsReceiptRequest.fromJson(Map<String, dynamic> json) =
      _$InspectGoodsReceiptRequestImpl.fromJson;

  @override
  String? get inspectionNotes;
  @override
  Map<String, dynamic>? get qualityMetrics;
  @override
  @JsonKey(ignore: true)
  _$$InspectGoodsReceiptRequestImplCopyWith<_$InspectGoodsReceiptRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AcceptGoodsReceiptRequest _$AcceptGoodsReceiptRequestFromJson(
    Map<String, dynamic> json) {
  return _AcceptGoodsReceiptRequest.fromJson(json);
}

/// @nodoc
mixin _$AcceptGoodsReceiptRequest {
  String? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AcceptGoodsReceiptRequestCopyWith<AcceptGoodsReceiptRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcceptGoodsReceiptRequestCopyWith<$Res> {
  factory $AcceptGoodsReceiptRequestCopyWith(AcceptGoodsReceiptRequest value,
          $Res Function(AcceptGoodsReceiptRequest) then) =
      _$AcceptGoodsReceiptRequestCopyWithImpl<$Res, AcceptGoodsReceiptRequest>;
  @useResult
  $Res call({String? notes});
}

/// @nodoc
class _$AcceptGoodsReceiptRequestCopyWithImpl<$Res,
        $Val extends AcceptGoodsReceiptRequest>
    implements $AcceptGoodsReceiptRequestCopyWith<$Res> {
  _$AcceptGoodsReceiptRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$AcceptGoodsReceiptRequestImplCopyWith<$Res>
    implements $AcceptGoodsReceiptRequestCopyWith<$Res> {
  factory _$$AcceptGoodsReceiptRequestImplCopyWith(
          _$AcceptGoodsReceiptRequestImpl value,
          $Res Function(_$AcceptGoodsReceiptRequestImpl) then) =
      __$$AcceptGoodsReceiptRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? notes});
}

/// @nodoc
class __$$AcceptGoodsReceiptRequestImplCopyWithImpl<$Res>
    extends _$AcceptGoodsReceiptRequestCopyWithImpl<$Res,
        _$AcceptGoodsReceiptRequestImpl>
    implements _$$AcceptGoodsReceiptRequestImplCopyWith<$Res> {
  __$$AcceptGoodsReceiptRequestImplCopyWithImpl(
      _$AcceptGoodsReceiptRequestImpl _value,
      $Res Function(_$AcceptGoodsReceiptRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = freezed,
  }) {
    return _then(_$AcceptGoodsReceiptRequestImpl(
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AcceptGoodsReceiptRequestImpl implements _AcceptGoodsReceiptRequest {
  const _$AcceptGoodsReceiptRequestImpl({this.notes});

  factory _$AcceptGoodsReceiptRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AcceptGoodsReceiptRequestImplFromJson(json);

  @override
  final String? notes;

  @override
  String toString() {
    return 'AcceptGoodsReceiptRequest(notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptGoodsReceiptRequestImpl &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptGoodsReceiptRequestImplCopyWith<_$AcceptGoodsReceiptRequestImpl>
      get copyWith => __$$AcceptGoodsReceiptRequestImplCopyWithImpl<
          _$AcceptGoodsReceiptRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AcceptGoodsReceiptRequestImplToJson(
      this,
    );
  }
}

abstract class _AcceptGoodsReceiptRequest implements AcceptGoodsReceiptRequest {
  const factory _AcceptGoodsReceiptRequest({final String? notes}) =
      _$AcceptGoodsReceiptRequestImpl;

  factory _AcceptGoodsReceiptRequest.fromJson(Map<String, dynamic> json) =
      _$AcceptGoodsReceiptRequestImpl.fromJson;

  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$AcceptGoodsReceiptRequestImplCopyWith<_$AcceptGoodsReceiptRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RejectGoodsReceiptRequest _$RejectGoodsReceiptRequestFromJson(
    Map<String, dynamic> json) {
  return _RejectGoodsReceiptRequest.fromJson(json);
}

/// @nodoc
mixin _$RejectGoodsReceiptRequest {
  String get reason => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RejectGoodsReceiptRequestCopyWith<RejectGoodsReceiptRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RejectGoodsReceiptRequestCopyWith<$Res> {
  factory $RejectGoodsReceiptRequestCopyWith(RejectGoodsReceiptRequest value,
          $Res Function(RejectGoodsReceiptRequest) then) =
      _$RejectGoodsReceiptRequestCopyWithImpl<$Res, RejectGoodsReceiptRequest>;
  @useResult
  $Res call({String reason, String? notes});
}

/// @nodoc
class _$RejectGoodsReceiptRequestCopyWithImpl<$Res,
        $Val extends RejectGoodsReceiptRequest>
    implements $RejectGoodsReceiptRequestCopyWith<$Res> {
  _$RejectGoodsReceiptRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$RejectGoodsReceiptRequestImplCopyWith<$Res>
    implements $RejectGoodsReceiptRequestCopyWith<$Res> {
  factory _$$RejectGoodsReceiptRequestImplCopyWith(
          _$RejectGoodsReceiptRequestImpl value,
          $Res Function(_$RejectGoodsReceiptRequestImpl) then) =
      __$$RejectGoodsReceiptRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String reason, String? notes});
}

/// @nodoc
class __$$RejectGoodsReceiptRequestImplCopyWithImpl<$Res>
    extends _$RejectGoodsReceiptRequestCopyWithImpl<$Res,
        _$RejectGoodsReceiptRequestImpl>
    implements _$$RejectGoodsReceiptRequestImplCopyWith<$Res> {
  __$$RejectGoodsReceiptRequestImplCopyWithImpl(
      _$RejectGoodsReceiptRequestImpl _value,
      $Res Function(_$RejectGoodsReceiptRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
    Object? notes = freezed,
  }) {
    return _then(_$RejectGoodsReceiptRequestImpl(
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
class _$RejectGoodsReceiptRequestImpl implements _RejectGoodsReceiptRequest {
  const _$RejectGoodsReceiptRequestImpl({required this.reason, this.notes});

  factory _$RejectGoodsReceiptRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RejectGoodsReceiptRequestImplFromJson(json);

  @override
  final String reason;
  @override
  final String? notes;

  @override
  String toString() {
    return 'RejectGoodsReceiptRequest(reason: $reason, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RejectGoodsReceiptRequestImpl &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reason, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RejectGoodsReceiptRequestImplCopyWith<_$RejectGoodsReceiptRequestImpl>
      get copyWith => __$$RejectGoodsReceiptRequestImplCopyWithImpl<
          _$RejectGoodsReceiptRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RejectGoodsReceiptRequestImplToJson(
      this,
    );
  }
}

abstract class _RejectGoodsReceiptRequest implements RejectGoodsReceiptRequest {
  const factory _RejectGoodsReceiptRequest(
      {required final String reason,
      final String? notes}) = _$RejectGoodsReceiptRequestImpl;

  factory _RejectGoodsReceiptRequest.fromJson(Map<String, dynamic> json) =
      _$RejectGoodsReceiptRequestImpl.fromJson;

  @override
  String get reason;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$RejectGoodsReceiptRequestImplCopyWith<_$RejectGoodsReceiptRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
