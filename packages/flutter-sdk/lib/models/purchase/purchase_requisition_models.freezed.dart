// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_requisition_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PurchaseRequisition _$PurchaseRequisitionFromJson(Map<String, dynamic> json) {
  return _PurchaseRequisition.fromJson(json);
}

/// @nodoc
mixin _$PurchaseRequisition {
  String get id => throw _privateConstructorUsedError;
  String get requisitionNumber => throw _privateConstructorUsedError;
  String get requestedBy => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // 'draft', 'submitted', 'approved', 'rejected', 'converted', 'closed', 'cancelled'
  DateTime get requestDate => throw _privateConstructorUsedError;
  DateTime get requiredDate => throw _privateConstructorUsedError;
  String get priority =>
      throw _privateConstructorUsedError; // 'low', 'medium', 'high', 'urgent'
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime? get submittedAt => throw _privateConstructorUsedError;
  DateTime? get approvedAt => throw _privateConstructorUsedError;
  DateTime? get rejectedAt => throw _privateConstructorUsedError;
  DateTime? get convertedAt => throw _privateConstructorUsedError;
  DateTime? get closedAt => throw _privateConstructorUsedError;
  DateTime? get cancelledAt => throw _privateConstructorUsedError;
  String? get approvedBy => throw _privateConstructorUsedError;
  String? get rejectedBy => throw _privateConstructorUsedError;
  String? get convertedBy => throw _privateConstructorUsedError;
  String? get department => throw _privateConstructorUsedError;
  String? get costCenter => throw _privateConstructorUsedError;
  String? get project => throw _privateConstructorUsedError;
  String? get justification => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get rejectionReason => throw _privateConstructorUsedError;
  String? get approvalNotes => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseRequisitionCopyWith<PurchaseRequisition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseRequisitionCopyWith<$Res> {
  factory $PurchaseRequisitionCopyWith(
          PurchaseRequisition value, $Res Function(PurchaseRequisition) then) =
      _$PurchaseRequisitionCopyWithImpl<$Res, PurchaseRequisition>;
  @useResult
  $Res call(
      {String id,
      String requisitionNumber,
      String requestedBy,
      String status,
      DateTime requestDate,
      DateTime requiredDate,
      String priority,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? submittedAt,
      DateTime? approvedAt,
      DateTime? rejectedAt,
      DateTime? convertedAt,
      DateTime? closedAt,
      DateTime? cancelledAt,
      String? approvedBy,
      String? rejectedBy,
      String? convertedBy,
      String? department,
      String? costCenter,
      String? project,
      String? justification,
      String? notes,
      String? rejectionReason,
      String? approvalNotes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$PurchaseRequisitionCopyWithImpl<$Res, $Val extends PurchaseRequisition>
    implements $PurchaseRequisitionCopyWith<$Res> {
  _$PurchaseRequisitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? requisitionNumber = null,
    Object? requestedBy = null,
    Object? status = null,
    Object? requestDate = null,
    Object? requiredDate = null,
    Object? priority = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? submittedAt = freezed,
    Object? approvedAt = freezed,
    Object? rejectedAt = freezed,
    Object? convertedAt = freezed,
    Object? closedAt = freezed,
    Object? cancelledAt = freezed,
    Object? approvedBy = freezed,
    Object? rejectedBy = freezed,
    Object? convertedBy = freezed,
    Object? department = freezed,
    Object? costCenter = freezed,
    Object? project = freezed,
    Object? justification = freezed,
    Object? notes = freezed,
    Object? rejectionReason = freezed,
    Object? approvalNotes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      requisitionNumber: null == requisitionNumber
          ? _value.requisitionNumber
          : requisitionNumber // ignore: cast_nullable_to_non_nullable
              as String,
      requestedBy: null == requestedBy
          ? _value.requestedBy
          : requestedBy // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      requestDate: null == requestDate
          ? _value.requestDate
          : requestDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requiredDate: null == requiredDate
          ? _value.requiredDate
          : requiredDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      submittedAt: freezed == submittedAt
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _value.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      convertedAt: freezed == convertedAt
          ? _value.convertedAt
          : convertedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      closedAt: freezed == closedAt
          ? _value.closedAt
          : closedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelledAt: freezed == cancelledAt
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectedBy: freezed == rejectedBy
          ? _value.rejectedBy
          : rejectedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      convertedBy: freezed == convertedBy
          ? _value.convertedBy
          : convertedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      costCenter: freezed == costCenter
          ? _value.costCenter
          : costCenter // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      justification: freezed == justification
          ? _value.justification
          : justification // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalNotes: freezed == approvalNotes
          ? _value.approvalNotes
          : approvalNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PurchaseRequisitionImplCopyWith<$Res>
    implements $PurchaseRequisitionCopyWith<$Res> {
  factory _$$PurchaseRequisitionImplCopyWith(_$PurchaseRequisitionImpl value,
          $Res Function(_$PurchaseRequisitionImpl) then) =
      __$$PurchaseRequisitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String requisitionNumber,
      String requestedBy,
      String status,
      DateTime requestDate,
      DateTime requiredDate,
      String priority,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? submittedAt,
      DateTime? approvedAt,
      DateTime? rejectedAt,
      DateTime? convertedAt,
      DateTime? closedAt,
      DateTime? cancelledAt,
      String? approvedBy,
      String? rejectedBy,
      String? convertedBy,
      String? department,
      String? costCenter,
      String? project,
      String? justification,
      String? notes,
      String? rejectionReason,
      String? approvalNotes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$PurchaseRequisitionImplCopyWithImpl<$Res>
    extends _$PurchaseRequisitionCopyWithImpl<$Res, _$PurchaseRequisitionImpl>
    implements _$$PurchaseRequisitionImplCopyWith<$Res> {
  __$$PurchaseRequisitionImplCopyWithImpl(_$PurchaseRequisitionImpl _value,
      $Res Function(_$PurchaseRequisitionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? requisitionNumber = null,
    Object? requestedBy = null,
    Object? status = null,
    Object? requestDate = null,
    Object? requiredDate = null,
    Object? priority = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? submittedAt = freezed,
    Object? approvedAt = freezed,
    Object? rejectedAt = freezed,
    Object? convertedAt = freezed,
    Object? closedAt = freezed,
    Object? cancelledAt = freezed,
    Object? approvedBy = freezed,
    Object? rejectedBy = freezed,
    Object? convertedBy = freezed,
    Object? department = freezed,
    Object? costCenter = freezed,
    Object? project = freezed,
    Object? justification = freezed,
    Object? notes = freezed,
    Object? rejectionReason = freezed,
    Object? approvalNotes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$PurchaseRequisitionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      requisitionNumber: null == requisitionNumber
          ? _value.requisitionNumber
          : requisitionNumber // ignore: cast_nullable_to_non_nullable
              as String,
      requestedBy: null == requestedBy
          ? _value.requestedBy
          : requestedBy // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      requestDate: null == requestDate
          ? _value.requestDate
          : requestDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requiredDate: null == requiredDate
          ? _value.requiredDate
          : requiredDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      submittedAt: freezed == submittedAt
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _value.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      convertedAt: freezed == convertedAt
          ? _value.convertedAt
          : convertedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      closedAt: freezed == closedAt
          ? _value.closedAt
          : closedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelledAt: freezed == cancelledAt
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectedBy: freezed == rejectedBy
          ? _value.rejectedBy
          : rejectedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      convertedBy: freezed == convertedBy
          ? _value.convertedBy
          : convertedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      costCenter: freezed == costCenter
          ? _value.costCenter
          : costCenter // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      justification: freezed == justification
          ? _value.justification
          : justification // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalNotes: freezed == approvalNotes
          ? _value.approvalNotes
          : approvalNotes // ignore: cast_nullable_to_non_nullable
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
class _$PurchaseRequisitionImpl implements _PurchaseRequisition {
  const _$PurchaseRequisitionImpl(
      {required this.id,
      required this.requisitionNumber,
      required this.requestedBy,
      required this.status,
      required this.requestDate,
      required this.requiredDate,
      required this.priority,
      required this.createdAt,
      required this.updatedAt,
      this.submittedAt,
      this.approvedAt,
      this.rejectedAt,
      this.convertedAt,
      this.closedAt,
      this.cancelledAt,
      this.approvedBy,
      this.rejectedBy,
      this.convertedBy,
      this.department,
      this.costCenter,
      this.project,
      this.justification,
      this.notes,
      this.rejectionReason,
      this.approvalNotes,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$PurchaseRequisitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchaseRequisitionImplFromJson(json);

  @override
  final String id;
  @override
  final String requisitionNumber;
  @override
  final String requestedBy;
  @override
  final String status;
// 'draft', 'submitted', 'approved', 'rejected', 'converted', 'closed', 'cancelled'
  @override
  final DateTime requestDate;
  @override
  final DateTime requiredDate;
  @override
  final String priority;
// 'low', 'medium', 'high', 'urgent'
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime? submittedAt;
  @override
  final DateTime? approvedAt;
  @override
  final DateTime? rejectedAt;
  @override
  final DateTime? convertedAt;
  @override
  final DateTime? closedAt;
  @override
  final DateTime? cancelledAt;
  @override
  final String? approvedBy;
  @override
  final String? rejectedBy;
  @override
  final String? convertedBy;
  @override
  final String? department;
  @override
  final String? costCenter;
  @override
  final String? project;
  @override
  final String? justification;
  @override
  final String? notes;
  @override
  final String? rejectionReason;
  @override
  final String? approvalNotes;
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
    return 'PurchaseRequisition(id: $id, requisitionNumber: $requisitionNumber, requestedBy: $requestedBy, status: $status, requestDate: $requestDate, requiredDate: $requiredDate, priority: $priority, createdAt: $createdAt, updatedAt: $updatedAt, submittedAt: $submittedAt, approvedAt: $approvedAt, rejectedAt: $rejectedAt, convertedAt: $convertedAt, closedAt: $closedAt, cancelledAt: $cancelledAt, approvedBy: $approvedBy, rejectedBy: $rejectedBy, convertedBy: $convertedBy, department: $department, costCenter: $costCenter, project: $project, justification: $justification, notes: $notes, rejectionReason: $rejectionReason, approvalNotes: $approvalNotes, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseRequisitionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.requisitionNumber, requisitionNumber) ||
                other.requisitionNumber == requisitionNumber) &&
            (identical(other.requestedBy, requestedBy) ||
                other.requestedBy == requestedBy) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.requestDate, requestDate) ||
                other.requestDate == requestDate) &&
            (identical(other.requiredDate, requiredDate) ||
                other.requiredDate == requiredDate) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt) &&
            (identical(other.approvedAt, approvedAt) ||
                other.approvedAt == approvedAt) &&
            (identical(other.rejectedAt, rejectedAt) ||
                other.rejectedAt == rejectedAt) &&
            (identical(other.convertedAt, convertedAt) ||
                other.convertedAt == convertedAt) &&
            (identical(other.closedAt, closedAt) ||
                other.closedAt == closedAt) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.approvedBy, approvedBy) ||
                other.approvedBy == approvedBy) &&
            (identical(other.rejectedBy, rejectedBy) ||
                other.rejectedBy == rejectedBy) &&
            (identical(other.convertedBy, convertedBy) ||
                other.convertedBy == convertedBy) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.costCenter, costCenter) ||
                other.costCenter == costCenter) &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.justification, justification) ||
                other.justification == justification) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            (identical(other.approvalNotes, approvalNotes) ||
                other.approvalNotes == approvalNotes) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        requisitionNumber,
        requestedBy,
        status,
        requestDate,
        requiredDate,
        priority,
        createdAt,
        updatedAt,
        submittedAt,
        approvedAt,
        rejectedAt,
        convertedAt,
        closedAt,
        cancelledAt,
        approvedBy,
        rejectedBy,
        convertedBy,
        department,
        costCenter,
        project,
        justification,
        notes,
        rejectionReason,
        approvalNotes,
        const DeepCollectionEquality().hash(_metadata)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseRequisitionImplCopyWith<_$PurchaseRequisitionImpl> get copyWith =>
      __$$PurchaseRequisitionImplCopyWithImpl<_$PurchaseRequisitionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchaseRequisitionImplToJson(
      this,
    );
  }
}

abstract class _PurchaseRequisition implements PurchaseRequisition {
  const factory _PurchaseRequisition(
      {required final String id,
      required final String requisitionNumber,
      required final String requestedBy,
      required final String status,
      required final DateTime requestDate,
      required final DateTime requiredDate,
      required final String priority,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final DateTime? submittedAt,
      final DateTime? approvedAt,
      final DateTime? rejectedAt,
      final DateTime? convertedAt,
      final DateTime? closedAt,
      final DateTime? cancelledAt,
      final String? approvedBy,
      final String? rejectedBy,
      final String? convertedBy,
      final String? department,
      final String? costCenter,
      final String? project,
      final String? justification,
      final String? notes,
      final String? rejectionReason,
      final String? approvalNotes,
      final Map<String, dynamic>? metadata}) = _$PurchaseRequisitionImpl;

  factory _PurchaseRequisition.fromJson(Map<String, dynamic> json) =
      _$PurchaseRequisitionImpl.fromJson;

  @override
  String get id;
  @override
  String get requisitionNumber;
  @override
  String get requestedBy;
  @override
  String get status;
  @override // 'draft', 'submitted', 'approved', 'rejected', 'converted', 'closed', 'cancelled'
  DateTime get requestDate;
  @override
  DateTime get requiredDate;
  @override
  String get priority;
  @override // 'low', 'medium', 'high', 'urgent'
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  DateTime? get submittedAt;
  @override
  DateTime? get approvedAt;
  @override
  DateTime? get rejectedAt;
  @override
  DateTime? get convertedAt;
  @override
  DateTime? get closedAt;
  @override
  DateTime? get cancelledAt;
  @override
  String? get approvedBy;
  @override
  String? get rejectedBy;
  @override
  String? get convertedBy;
  @override
  String? get department;
  @override
  String? get costCenter;
  @override
  String? get project;
  @override
  String? get justification;
  @override
  String? get notes;
  @override
  String? get rejectionReason;
  @override
  String? get approvalNotes;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$PurchaseRequisitionImplCopyWith<_$PurchaseRequisitionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PurchaseRequisitionLineItem _$PurchaseRequisitionLineItemFromJson(
    Map<String, dynamic> json) {
  return _PurchaseRequisitionLineItem.fromJson(json);
}

/// @nodoc
mixin _$PurchaseRequisitionLineItem {
  String get id => throw _privateConstructorUsedError;
  String get purchaseRequisitionId => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  DateTime get requiredDate => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // 'pending', 'approved', 'rejected', 'converted'
  double? get estimatedPrice => throw _privateConstructorUsedError;
  double? get budgetAmount => throw _privateConstructorUsedError;
  int? get sequence => throw _privateConstructorUsedError;
  String? get justification => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get specification => throw _privateConstructorUsedError;
  String? get preferredSupplier => throw _privateConstructorUsedError;
  String? get convertedPurchaseOrderId => throw _privateConstructorUsedError;
  Map<String, dynamic>? get attributes => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseRequisitionLineItemCopyWith<PurchaseRequisitionLineItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseRequisitionLineItemCopyWith<$Res> {
  factory $PurchaseRequisitionLineItemCopyWith(
          PurchaseRequisitionLineItem value,
          $Res Function(PurchaseRequisitionLineItem) then) =
      _$PurchaseRequisitionLineItemCopyWithImpl<$Res,
          PurchaseRequisitionLineItem>;
  @useResult
  $Res call(
      {String id,
      String purchaseRequisitionId,
      String itemId,
      double quantity,
      String unit,
      DateTime requiredDate,
      String status,
      double? estimatedPrice,
      double? budgetAmount,
      int? sequence,
      String? justification,
      String? notes,
      String? specification,
      String? preferredSupplier,
      String? convertedPurchaseOrderId,
      Map<String, dynamic>? attributes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$PurchaseRequisitionLineItemCopyWithImpl<$Res,
        $Val extends PurchaseRequisitionLineItem>
    implements $PurchaseRequisitionLineItemCopyWith<$Res> {
  _$PurchaseRequisitionLineItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? purchaseRequisitionId = null,
    Object? itemId = null,
    Object? quantity = null,
    Object? unit = null,
    Object? requiredDate = null,
    Object? status = null,
    Object? estimatedPrice = freezed,
    Object? budgetAmount = freezed,
    Object? sequence = freezed,
    Object? justification = freezed,
    Object? notes = freezed,
    Object? specification = freezed,
    Object? preferredSupplier = freezed,
    Object? convertedPurchaseOrderId = freezed,
    Object? attributes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseRequisitionId: null == purchaseRequisitionId
          ? _value.purchaseRequisitionId
          : purchaseRequisitionId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      requiredDate: null == requiredDate
          ? _value.requiredDate
          : requiredDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedPrice: freezed == estimatedPrice
          ? _value.estimatedPrice
          : estimatedPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      budgetAmount: freezed == budgetAmount
          ? _value.budgetAmount
          : budgetAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      justification: freezed == justification
          ? _value.justification
          : justification // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      preferredSupplier: freezed == preferredSupplier
          ? _value.preferredSupplier
          : preferredSupplier // ignore: cast_nullable_to_non_nullable
              as String?,
      convertedPurchaseOrderId: freezed == convertedPurchaseOrderId
          ? _value.convertedPurchaseOrderId
          : convertedPurchaseOrderId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PurchaseRequisitionLineItemImplCopyWith<$Res>
    implements $PurchaseRequisitionLineItemCopyWith<$Res> {
  factory _$$PurchaseRequisitionLineItemImplCopyWith(
          _$PurchaseRequisitionLineItemImpl value,
          $Res Function(_$PurchaseRequisitionLineItemImpl) then) =
      __$$PurchaseRequisitionLineItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String purchaseRequisitionId,
      String itemId,
      double quantity,
      String unit,
      DateTime requiredDate,
      String status,
      double? estimatedPrice,
      double? budgetAmount,
      int? sequence,
      String? justification,
      String? notes,
      String? specification,
      String? preferredSupplier,
      String? convertedPurchaseOrderId,
      Map<String, dynamic>? attributes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$PurchaseRequisitionLineItemImplCopyWithImpl<$Res>
    extends _$PurchaseRequisitionLineItemCopyWithImpl<$Res,
        _$PurchaseRequisitionLineItemImpl>
    implements _$$PurchaseRequisitionLineItemImplCopyWith<$Res> {
  __$$PurchaseRequisitionLineItemImplCopyWithImpl(
      _$PurchaseRequisitionLineItemImpl _value,
      $Res Function(_$PurchaseRequisitionLineItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? purchaseRequisitionId = null,
    Object? itemId = null,
    Object? quantity = null,
    Object? unit = null,
    Object? requiredDate = null,
    Object? status = null,
    Object? estimatedPrice = freezed,
    Object? budgetAmount = freezed,
    Object? sequence = freezed,
    Object? justification = freezed,
    Object? notes = freezed,
    Object? specification = freezed,
    Object? preferredSupplier = freezed,
    Object? convertedPurchaseOrderId = freezed,
    Object? attributes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$PurchaseRequisitionLineItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseRequisitionId: null == purchaseRequisitionId
          ? _value.purchaseRequisitionId
          : purchaseRequisitionId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      requiredDate: null == requiredDate
          ? _value.requiredDate
          : requiredDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedPrice: freezed == estimatedPrice
          ? _value.estimatedPrice
          : estimatedPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      budgetAmount: freezed == budgetAmount
          ? _value.budgetAmount
          : budgetAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      justification: freezed == justification
          ? _value.justification
          : justification // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      preferredSupplier: freezed == preferredSupplier
          ? _value.preferredSupplier
          : preferredSupplier // ignore: cast_nullable_to_non_nullable
              as String?,
      convertedPurchaseOrderId: freezed == convertedPurchaseOrderId
          ? _value.convertedPurchaseOrderId
          : convertedPurchaseOrderId // ignore: cast_nullable_to_non_nullable
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
class _$PurchaseRequisitionLineItemImpl
    implements _PurchaseRequisitionLineItem {
  const _$PurchaseRequisitionLineItemImpl(
      {required this.id,
      required this.purchaseRequisitionId,
      required this.itemId,
      required this.quantity,
      required this.unit,
      required this.requiredDate,
      required this.status,
      this.estimatedPrice,
      this.budgetAmount,
      this.sequence,
      this.justification,
      this.notes,
      this.specification,
      this.preferredSupplier,
      this.convertedPurchaseOrderId,
      final Map<String, dynamic>? attributes,
      final Map<String, dynamic>? metadata})
      : _attributes = attributes,
        _metadata = metadata;

  factory _$PurchaseRequisitionLineItemImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PurchaseRequisitionLineItemImplFromJson(json);

  @override
  final String id;
  @override
  final String purchaseRequisitionId;
  @override
  final String itemId;
  @override
  final double quantity;
  @override
  final String unit;
  @override
  final DateTime requiredDate;
  @override
  final String status;
// 'pending', 'approved', 'rejected', 'converted'
  @override
  final double? estimatedPrice;
  @override
  final double? budgetAmount;
  @override
  final int? sequence;
  @override
  final String? justification;
  @override
  final String? notes;
  @override
  final String? specification;
  @override
  final String? preferredSupplier;
  @override
  final String? convertedPurchaseOrderId;
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
    return 'PurchaseRequisitionLineItem(id: $id, purchaseRequisitionId: $purchaseRequisitionId, itemId: $itemId, quantity: $quantity, unit: $unit, requiredDate: $requiredDate, status: $status, estimatedPrice: $estimatedPrice, budgetAmount: $budgetAmount, sequence: $sequence, justification: $justification, notes: $notes, specification: $specification, preferredSupplier: $preferredSupplier, convertedPurchaseOrderId: $convertedPurchaseOrderId, attributes: $attributes, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseRequisitionLineItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.purchaseRequisitionId, purchaseRequisitionId) ||
                other.purchaseRequisitionId == purchaseRequisitionId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.requiredDate, requiredDate) ||
                other.requiredDate == requiredDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.estimatedPrice, estimatedPrice) ||
                other.estimatedPrice == estimatedPrice) &&
            (identical(other.budgetAmount, budgetAmount) ||
                other.budgetAmount == budgetAmount) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.justification, justification) ||
                other.justification == justification) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.specification, specification) ||
                other.specification == specification) &&
            (identical(other.preferredSupplier, preferredSupplier) ||
                other.preferredSupplier == preferredSupplier) &&
            (identical(
                    other.convertedPurchaseOrderId, convertedPurchaseOrderId) ||
                other.convertedPurchaseOrderId == convertedPurchaseOrderId) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      purchaseRequisitionId,
      itemId,
      quantity,
      unit,
      requiredDate,
      status,
      estimatedPrice,
      budgetAmount,
      sequence,
      justification,
      notes,
      specification,
      preferredSupplier,
      convertedPurchaseOrderId,
      const DeepCollectionEquality().hash(_attributes),
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseRequisitionLineItemImplCopyWith<_$PurchaseRequisitionLineItemImpl>
      get copyWith => __$$PurchaseRequisitionLineItemImplCopyWithImpl<
          _$PurchaseRequisitionLineItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchaseRequisitionLineItemImplToJson(
      this,
    );
  }
}

abstract class _PurchaseRequisitionLineItem
    implements PurchaseRequisitionLineItem {
  const factory _PurchaseRequisitionLineItem(
          {required final String id,
          required final String purchaseRequisitionId,
          required final String itemId,
          required final double quantity,
          required final String unit,
          required final DateTime requiredDate,
          required final String status,
          final double? estimatedPrice,
          final double? budgetAmount,
          final int? sequence,
          final String? justification,
          final String? notes,
          final String? specification,
          final String? preferredSupplier,
          final String? convertedPurchaseOrderId,
          final Map<String, dynamic>? attributes,
          final Map<String, dynamic>? metadata}) =
      _$PurchaseRequisitionLineItemImpl;

  factory _PurchaseRequisitionLineItem.fromJson(Map<String, dynamic> json) =
      _$PurchaseRequisitionLineItemImpl.fromJson;

  @override
  String get id;
  @override
  String get purchaseRequisitionId;
  @override
  String get itemId;
  @override
  double get quantity;
  @override
  String get unit;
  @override
  DateTime get requiredDate;
  @override
  String get status;
  @override // 'pending', 'approved', 'rejected', 'converted'
  double? get estimatedPrice;
  @override
  double? get budgetAmount;
  @override
  int? get sequence;
  @override
  String? get justification;
  @override
  String? get notes;
  @override
  String? get specification;
  @override
  String? get preferredSupplier;
  @override
  String? get convertedPurchaseOrderId;
  @override
  Map<String, dynamic>? get attributes;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$PurchaseRequisitionLineItemImplCopyWith<_$PurchaseRequisitionLineItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreatePurchaseRequisitionRequest _$CreatePurchaseRequisitionRequestFromJson(
    Map<String, dynamic> json) {
  return _CreatePurchaseRequisitionRequest.fromJson(json);
}

/// @nodoc
mixin _$CreatePurchaseRequisitionRequest {
  DateTime get requiredDate => throw _privateConstructorUsedError;
  String get priority => throw _privateConstructorUsedError;
  String? get department => throw _privateConstructorUsedError;
  String? get costCenter => throw _privateConstructorUsedError;
  String? get project => throw _privateConstructorUsedError;
  String? get justification => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  List<CreatePurchaseRequisitionLineItemRequest>? get lineItems =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePurchaseRequisitionRequestCopyWith<CreatePurchaseRequisitionRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePurchaseRequisitionRequestCopyWith<$Res> {
  factory $CreatePurchaseRequisitionRequestCopyWith(
          CreatePurchaseRequisitionRequest value,
          $Res Function(CreatePurchaseRequisitionRequest) then) =
      _$CreatePurchaseRequisitionRequestCopyWithImpl<$Res,
          CreatePurchaseRequisitionRequest>;
  @useResult
  $Res call(
      {DateTime requiredDate,
      String priority,
      String? department,
      String? costCenter,
      String? project,
      String? justification,
      String? notes,
      List<CreatePurchaseRequisitionLineItemRequest>? lineItems,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$CreatePurchaseRequisitionRequestCopyWithImpl<$Res,
        $Val extends CreatePurchaseRequisitionRequest>
    implements $CreatePurchaseRequisitionRequestCopyWith<$Res> {
  _$CreatePurchaseRequisitionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requiredDate = null,
    Object? priority = null,
    Object? department = freezed,
    Object? costCenter = freezed,
    Object? project = freezed,
    Object? justification = freezed,
    Object? notes = freezed,
    Object? lineItems = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      requiredDate: null == requiredDate
          ? _value.requiredDate
          : requiredDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      costCenter: freezed == costCenter
          ? _value.costCenter
          : costCenter // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      justification: freezed == justification
          ? _value.justification
          : justification // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      lineItems: freezed == lineItems
          ? _value.lineItems
          : lineItems // ignore: cast_nullable_to_non_nullable
              as List<CreatePurchaseRequisitionLineItemRequest>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatePurchaseRequisitionRequestImplCopyWith<$Res>
    implements $CreatePurchaseRequisitionRequestCopyWith<$Res> {
  factory _$$CreatePurchaseRequisitionRequestImplCopyWith(
          _$CreatePurchaseRequisitionRequestImpl value,
          $Res Function(_$CreatePurchaseRequisitionRequestImpl) then) =
      __$$CreatePurchaseRequisitionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime requiredDate,
      String priority,
      String? department,
      String? costCenter,
      String? project,
      String? justification,
      String? notes,
      List<CreatePurchaseRequisitionLineItemRequest>? lineItems,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$CreatePurchaseRequisitionRequestImplCopyWithImpl<$Res>
    extends _$CreatePurchaseRequisitionRequestCopyWithImpl<$Res,
        _$CreatePurchaseRequisitionRequestImpl>
    implements _$$CreatePurchaseRequisitionRequestImplCopyWith<$Res> {
  __$$CreatePurchaseRequisitionRequestImplCopyWithImpl(
      _$CreatePurchaseRequisitionRequestImpl _value,
      $Res Function(_$CreatePurchaseRequisitionRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requiredDate = null,
    Object? priority = null,
    Object? department = freezed,
    Object? costCenter = freezed,
    Object? project = freezed,
    Object? justification = freezed,
    Object? notes = freezed,
    Object? lineItems = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$CreatePurchaseRequisitionRequestImpl(
      requiredDate: null == requiredDate
          ? _value.requiredDate
          : requiredDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      costCenter: freezed == costCenter
          ? _value.costCenter
          : costCenter // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      justification: freezed == justification
          ? _value.justification
          : justification // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      lineItems: freezed == lineItems
          ? _value._lineItems
          : lineItems // ignore: cast_nullable_to_non_nullable
              as List<CreatePurchaseRequisitionLineItemRequest>?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatePurchaseRequisitionRequestImpl
    implements _CreatePurchaseRequisitionRequest {
  const _$CreatePurchaseRequisitionRequestImpl(
      {required this.requiredDate,
      required this.priority,
      this.department,
      this.costCenter,
      this.project,
      this.justification,
      this.notes,
      final List<CreatePurchaseRequisitionLineItemRequest>? lineItems,
      final Map<String, dynamic>? metadata})
      : _lineItems = lineItems,
        _metadata = metadata;

  factory _$CreatePurchaseRequisitionRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreatePurchaseRequisitionRequestImplFromJson(json);

  @override
  final DateTime requiredDate;
  @override
  final String priority;
  @override
  final String? department;
  @override
  final String? costCenter;
  @override
  final String? project;
  @override
  final String? justification;
  @override
  final String? notes;
  final List<CreatePurchaseRequisitionLineItemRequest>? _lineItems;
  @override
  List<CreatePurchaseRequisitionLineItemRequest>? get lineItems {
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
    return 'CreatePurchaseRequisitionRequest(requiredDate: $requiredDate, priority: $priority, department: $department, costCenter: $costCenter, project: $project, justification: $justification, notes: $notes, lineItems: $lineItems, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePurchaseRequisitionRequestImpl &&
            (identical(other.requiredDate, requiredDate) ||
                other.requiredDate == requiredDate) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.costCenter, costCenter) ||
                other.costCenter == costCenter) &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.justification, justification) ||
                other.justification == justification) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._lineItems, _lineItems) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      requiredDate,
      priority,
      department,
      costCenter,
      project,
      justification,
      notes,
      const DeepCollectionEquality().hash(_lineItems),
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePurchaseRequisitionRequestImplCopyWith<
          _$CreatePurchaseRequisitionRequestImpl>
      get copyWith => __$$CreatePurchaseRequisitionRequestImplCopyWithImpl<
          _$CreatePurchaseRequisitionRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePurchaseRequisitionRequestImplToJson(
      this,
    );
  }
}

abstract class _CreatePurchaseRequisitionRequest
    implements CreatePurchaseRequisitionRequest {
  const factory _CreatePurchaseRequisitionRequest(
          {required final DateTime requiredDate,
          required final String priority,
          final String? department,
          final String? costCenter,
          final String? project,
          final String? justification,
          final String? notes,
          final List<CreatePurchaseRequisitionLineItemRequest>? lineItems,
          final Map<String, dynamic>? metadata}) =
      _$CreatePurchaseRequisitionRequestImpl;

  factory _CreatePurchaseRequisitionRequest.fromJson(
          Map<String, dynamic> json) =
      _$CreatePurchaseRequisitionRequestImpl.fromJson;

  @override
  DateTime get requiredDate;
  @override
  String get priority;
  @override
  String? get department;
  @override
  String? get costCenter;
  @override
  String? get project;
  @override
  String? get justification;
  @override
  String? get notes;
  @override
  List<CreatePurchaseRequisitionLineItemRequest>? get lineItems;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$CreatePurchaseRequisitionRequestImplCopyWith<
          _$CreatePurchaseRequisitionRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreatePurchaseRequisitionLineItemRequest
    _$CreatePurchaseRequisitionLineItemRequestFromJson(
        Map<String, dynamic> json) {
  return _CreatePurchaseRequisitionLineItemRequest.fromJson(json);
}

/// @nodoc
mixin _$CreatePurchaseRequisitionLineItemRequest {
  String get itemId => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  DateTime get requiredDate => throw _privateConstructorUsedError;
  double? get estimatedPrice => throw _privateConstructorUsedError;
  double? get budgetAmount => throw _privateConstructorUsedError;
  int? get sequence => throw _privateConstructorUsedError;
  String? get justification => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get specification => throw _privateConstructorUsedError;
  String? get preferredSupplier => throw _privateConstructorUsedError;
  Map<String, dynamic>? get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePurchaseRequisitionLineItemRequestCopyWith<
          CreatePurchaseRequisitionLineItemRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePurchaseRequisitionLineItemRequestCopyWith<$Res> {
  factory $CreatePurchaseRequisitionLineItemRequestCopyWith(
          CreatePurchaseRequisitionLineItemRequest value,
          $Res Function(CreatePurchaseRequisitionLineItemRequest) then) =
      _$CreatePurchaseRequisitionLineItemRequestCopyWithImpl<$Res,
          CreatePurchaseRequisitionLineItemRequest>;
  @useResult
  $Res call(
      {String itemId,
      double quantity,
      String unit,
      DateTime requiredDate,
      double? estimatedPrice,
      double? budgetAmount,
      int? sequence,
      String? justification,
      String? notes,
      String? specification,
      String? preferredSupplier,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class _$CreatePurchaseRequisitionLineItemRequestCopyWithImpl<$Res,
        $Val extends CreatePurchaseRequisitionLineItemRequest>
    implements $CreatePurchaseRequisitionLineItemRequestCopyWith<$Res> {
  _$CreatePurchaseRequisitionLineItemRequestCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? quantity = null,
    Object? unit = null,
    Object? requiredDate = null,
    Object? estimatedPrice = freezed,
    Object? budgetAmount = freezed,
    Object? sequence = freezed,
    Object? justification = freezed,
    Object? notes = freezed,
    Object? specification = freezed,
    Object? preferredSupplier = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      requiredDate: null == requiredDate
          ? _value.requiredDate
          : requiredDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      estimatedPrice: freezed == estimatedPrice
          ? _value.estimatedPrice
          : estimatedPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      budgetAmount: freezed == budgetAmount
          ? _value.budgetAmount
          : budgetAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      justification: freezed == justification
          ? _value.justification
          : justification // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      preferredSupplier: freezed == preferredSupplier
          ? _value.preferredSupplier
          : preferredSupplier // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatePurchaseRequisitionLineItemRequestImplCopyWith<$Res>
    implements $CreatePurchaseRequisitionLineItemRequestCopyWith<$Res> {
  factory _$$CreatePurchaseRequisitionLineItemRequestImplCopyWith(
          _$CreatePurchaseRequisitionLineItemRequestImpl value,
          $Res Function(_$CreatePurchaseRequisitionLineItemRequestImpl) then) =
      __$$CreatePurchaseRequisitionLineItemRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String itemId,
      double quantity,
      String unit,
      DateTime requiredDate,
      double? estimatedPrice,
      double? budgetAmount,
      int? sequence,
      String? justification,
      String? notes,
      String? specification,
      String? preferredSupplier,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class __$$CreatePurchaseRequisitionLineItemRequestImplCopyWithImpl<$Res>
    extends _$CreatePurchaseRequisitionLineItemRequestCopyWithImpl<$Res,
        _$CreatePurchaseRequisitionLineItemRequestImpl>
    implements _$$CreatePurchaseRequisitionLineItemRequestImplCopyWith<$Res> {
  __$$CreatePurchaseRequisitionLineItemRequestImplCopyWithImpl(
      _$CreatePurchaseRequisitionLineItemRequestImpl _value,
      $Res Function(_$CreatePurchaseRequisitionLineItemRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? quantity = null,
    Object? unit = null,
    Object? requiredDate = null,
    Object? estimatedPrice = freezed,
    Object? budgetAmount = freezed,
    Object? sequence = freezed,
    Object? justification = freezed,
    Object? notes = freezed,
    Object? specification = freezed,
    Object? preferredSupplier = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_$CreatePurchaseRequisitionLineItemRequestImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      requiredDate: null == requiredDate
          ? _value.requiredDate
          : requiredDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      estimatedPrice: freezed == estimatedPrice
          ? _value.estimatedPrice
          : estimatedPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      budgetAmount: freezed == budgetAmount
          ? _value.budgetAmount
          : budgetAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      justification: freezed == justification
          ? _value.justification
          : justification // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      preferredSupplier: freezed == preferredSupplier
          ? _value.preferredSupplier
          : preferredSupplier // ignore: cast_nullable_to_non_nullable
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
class _$CreatePurchaseRequisitionLineItemRequestImpl
    implements _CreatePurchaseRequisitionLineItemRequest {
  const _$CreatePurchaseRequisitionLineItemRequestImpl(
      {required this.itemId,
      required this.quantity,
      required this.unit,
      required this.requiredDate,
      this.estimatedPrice,
      this.budgetAmount,
      this.sequence,
      this.justification,
      this.notes,
      this.specification,
      this.preferredSupplier,
      final Map<String, dynamic>? attributes})
      : _attributes = attributes;

  factory _$CreatePurchaseRequisitionLineItemRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreatePurchaseRequisitionLineItemRequestImplFromJson(json);

  @override
  final String itemId;
  @override
  final double quantity;
  @override
  final String unit;
  @override
  final DateTime requiredDate;
  @override
  final double? estimatedPrice;
  @override
  final double? budgetAmount;
  @override
  final int? sequence;
  @override
  final String? justification;
  @override
  final String? notes;
  @override
  final String? specification;
  @override
  final String? preferredSupplier;
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
    return 'CreatePurchaseRequisitionLineItemRequest(itemId: $itemId, quantity: $quantity, unit: $unit, requiredDate: $requiredDate, estimatedPrice: $estimatedPrice, budgetAmount: $budgetAmount, sequence: $sequence, justification: $justification, notes: $notes, specification: $specification, preferredSupplier: $preferredSupplier, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePurchaseRequisitionLineItemRequestImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.requiredDate, requiredDate) ||
                other.requiredDate == requiredDate) &&
            (identical(other.estimatedPrice, estimatedPrice) ||
                other.estimatedPrice == estimatedPrice) &&
            (identical(other.budgetAmount, budgetAmount) ||
                other.budgetAmount == budgetAmount) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.justification, justification) ||
                other.justification == justification) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.specification, specification) ||
                other.specification == specification) &&
            (identical(other.preferredSupplier, preferredSupplier) ||
                other.preferredSupplier == preferredSupplier) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itemId,
      quantity,
      unit,
      requiredDate,
      estimatedPrice,
      budgetAmount,
      sequence,
      justification,
      notes,
      specification,
      preferredSupplier,
      const DeepCollectionEquality().hash(_attributes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePurchaseRequisitionLineItemRequestImplCopyWith<
          _$CreatePurchaseRequisitionLineItemRequestImpl>
      get copyWith =>
          __$$CreatePurchaseRequisitionLineItemRequestImplCopyWithImpl<
              _$CreatePurchaseRequisitionLineItemRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePurchaseRequisitionLineItemRequestImplToJson(
      this,
    );
  }
}

abstract class _CreatePurchaseRequisitionLineItemRequest
    implements CreatePurchaseRequisitionLineItemRequest {
  const factory _CreatePurchaseRequisitionLineItemRequest(
          {required final String itemId,
          required final double quantity,
          required final String unit,
          required final DateTime requiredDate,
          final double? estimatedPrice,
          final double? budgetAmount,
          final int? sequence,
          final String? justification,
          final String? notes,
          final String? specification,
          final String? preferredSupplier,
          final Map<String, dynamic>? attributes}) =
      _$CreatePurchaseRequisitionLineItemRequestImpl;

  factory _CreatePurchaseRequisitionLineItemRequest.fromJson(
          Map<String, dynamic> json) =
      _$CreatePurchaseRequisitionLineItemRequestImpl.fromJson;

  @override
  String get itemId;
  @override
  double get quantity;
  @override
  String get unit;
  @override
  DateTime get requiredDate;
  @override
  double? get estimatedPrice;
  @override
  double? get budgetAmount;
  @override
  int? get sequence;
  @override
  String? get justification;
  @override
  String? get notes;
  @override
  String? get specification;
  @override
  String? get preferredSupplier;
  @override
  Map<String, dynamic>? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$CreatePurchaseRequisitionLineItemRequestImplCopyWith<
          _$CreatePurchaseRequisitionLineItemRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdatePurchaseRequisitionRequest _$UpdatePurchaseRequisitionRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdatePurchaseRequisitionRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdatePurchaseRequisitionRequest {
  DateTime? get requiredDate => throw _privateConstructorUsedError;
  String? get priority => throw _privateConstructorUsedError;
  String? get department => throw _privateConstructorUsedError;
  String? get costCenter => throw _privateConstructorUsedError;
  String? get project => throw _privateConstructorUsedError;
  String? get justification => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdatePurchaseRequisitionRequestCopyWith<UpdatePurchaseRequisitionRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePurchaseRequisitionRequestCopyWith<$Res> {
  factory $UpdatePurchaseRequisitionRequestCopyWith(
          UpdatePurchaseRequisitionRequest value,
          $Res Function(UpdatePurchaseRequisitionRequest) then) =
      _$UpdatePurchaseRequisitionRequestCopyWithImpl<$Res,
          UpdatePurchaseRequisitionRequest>;
  @useResult
  $Res call(
      {DateTime? requiredDate,
      String? priority,
      String? department,
      String? costCenter,
      String? project,
      String? justification,
      String? notes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$UpdatePurchaseRequisitionRequestCopyWithImpl<$Res,
        $Val extends UpdatePurchaseRequisitionRequest>
    implements $UpdatePurchaseRequisitionRequestCopyWith<$Res> {
  _$UpdatePurchaseRequisitionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requiredDate = freezed,
    Object? priority = freezed,
    Object? department = freezed,
    Object? costCenter = freezed,
    Object? project = freezed,
    Object? justification = freezed,
    Object? notes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      requiredDate: freezed == requiredDate
          ? _value.requiredDate
          : requiredDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      costCenter: freezed == costCenter
          ? _value.costCenter
          : costCenter // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      justification: freezed == justification
          ? _value.justification
          : justification // ignore: cast_nullable_to_non_nullable
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
abstract class _$$UpdatePurchaseRequisitionRequestImplCopyWith<$Res>
    implements $UpdatePurchaseRequisitionRequestCopyWith<$Res> {
  factory _$$UpdatePurchaseRequisitionRequestImplCopyWith(
          _$UpdatePurchaseRequisitionRequestImpl value,
          $Res Function(_$UpdatePurchaseRequisitionRequestImpl) then) =
      __$$UpdatePurchaseRequisitionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? requiredDate,
      String? priority,
      String? department,
      String? costCenter,
      String? project,
      String? justification,
      String? notes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$UpdatePurchaseRequisitionRequestImplCopyWithImpl<$Res>
    extends _$UpdatePurchaseRequisitionRequestCopyWithImpl<$Res,
        _$UpdatePurchaseRequisitionRequestImpl>
    implements _$$UpdatePurchaseRequisitionRequestImplCopyWith<$Res> {
  __$$UpdatePurchaseRequisitionRequestImplCopyWithImpl(
      _$UpdatePurchaseRequisitionRequestImpl _value,
      $Res Function(_$UpdatePurchaseRequisitionRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requiredDate = freezed,
    Object? priority = freezed,
    Object? department = freezed,
    Object? costCenter = freezed,
    Object? project = freezed,
    Object? justification = freezed,
    Object? notes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$UpdatePurchaseRequisitionRequestImpl(
      requiredDate: freezed == requiredDate
          ? _value.requiredDate
          : requiredDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      costCenter: freezed == costCenter
          ? _value.costCenter
          : costCenter // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      justification: freezed == justification
          ? _value.justification
          : justification // ignore: cast_nullable_to_non_nullable
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
class _$UpdatePurchaseRequisitionRequestImpl
    implements _UpdatePurchaseRequisitionRequest {
  const _$UpdatePurchaseRequisitionRequestImpl(
      {this.requiredDate,
      this.priority,
      this.department,
      this.costCenter,
      this.project,
      this.justification,
      this.notes,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$UpdatePurchaseRequisitionRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdatePurchaseRequisitionRequestImplFromJson(json);

  @override
  final DateTime? requiredDate;
  @override
  final String? priority;
  @override
  final String? department;
  @override
  final String? costCenter;
  @override
  final String? project;
  @override
  final String? justification;
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
    return 'UpdatePurchaseRequisitionRequest(requiredDate: $requiredDate, priority: $priority, department: $department, costCenter: $costCenter, project: $project, justification: $justification, notes: $notes, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePurchaseRequisitionRequestImpl &&
            (identical(other.requiredDate, requiredDate) ||
                other.requiredDate == requiredDate) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.costCenter, costCenter) ||
                other.costCenter == costCenter) &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.justification, justification) ||
                other.justification == justification) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      requiredDate,
      priority,
      department,
      costCenter,
      project,
      justification,
      notes,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePurchaseRequisitionRequestImplCopyWith<
          _$UpdatePurchaseRequisitionRequestImpl>
      get copyWith => __$$UpdatePurchaseRequisitionRequestImplCopyWithImpl<
          _$UpdatePurchaseRequisitionRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatePurchaseRequisitionRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdatePurchaseRequisitionRequest
    implements UpdatePurchaseRequisitionRequest {
  const factory _UpdatePurchaseRequisitionRequest(
          {final DateTime? requiredDate,
          final String? priority,
          final String? department,
          final String? costCenter,
          final String? project,
          final String? justification,
          final String? notes,
          final Map<String, dynamic>? metadata}) =
      _$UpdatePurchaseRequisitionRequestImpl;

  factory _UpdatePurchaseRequisitionRequest.fromJson(
          Map<String, dynamic> json) =
      _$UpdatePurchaseRequisitionRequestImpl.fromJson;

  @override
  DateTime? get requiredDate;
  @override
  String? get priority;
  @override
  String? get department;
  @override
  String? get costCenter;
  @override
  String? get project;
  @override
  String? get justification;
  @override
  String? get notes;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$UpdatePurchaseRequisitionRequestImplCopyWith<
          _$UpdatePurchaseRequisitionRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdatePurchaseRequisitionLineItemRequest
    _$UpdatePurchaseRequisitionLineItemRequestFromJson(
        Map<String, dynamic> json) {
  return _UpdatePurchaseRequisitionLineItemRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdatePurchaseRequisitionLineItemRequest {
  double? get quantity => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;
  DateTime? get requiredDate => throw _privateConstructorUsedError;
  double? get estimatedPrice => throw _privateConstructorUsedError;
  double? get budgetAmount => throw _privateConstructorUsedError;
  int? get sequence => throw _privateConstructorUsedError;
  String? get justification => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get specification => throw _privateConstructorUsedError;
  String? get preferredSupplier => throw _privateConstructorUsedError;
  Map<String, dynamic>? get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdatePurchaseRequisitionLineItemRequestCopyWith<
          UpdatePurchaseRequisitionLineItemRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePurchaseRequisitionLineItemRequestCopyWith<$Res> {
  factory $UpdatePurchaseRequisitionLineItemRequestCopyWith(
          UpdatePurchaseRequisitionLineItemRequest value,
          $Res Function(UpdatePurchaseRequisitionLineItemRequest) then) =
      _$UpdatePurchaseRequisitionLineItemRequestCopyWithImpl<$Res,
          UpdatePurchaseRequisitionLineItemRequest>;
  @useResult
  $Res call(
      {double? quantity,
      String? unit,
      DateTime? requiredDate,
      double? estimatedPrice,
      double? budgetAmount,
      int? sequence,
      String? justification,
      String? notes,
      String? specification,
      String? preferredSupplier,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class _$UpdatePurchaseRequisitionLineItemRequestCopyWithImpl<$Res,
        $Val extends UpdatePurchaseRequisitionLineItemRequest>
    implements $UpdatePurchaseRequisitionLineItemRequestCopyWith<$Res> {
  _$UpdatePurchaseRequisitionLineItemRequestCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = freezed,
    Object? unit = freezed,
    Object? requiredDate = freezed,
    Object? estimatedPrice = freezed,
    Object? budgetAmount = freezed,
    Object? sequence = freezed,
    Object? justification = freezed,
    Object? notes = freezed,
    Object? specification = freezed,
    Object? preferredSupplier = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_value.copyWith(
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      requiredDate: freezed == requiredDate
          ? _value.requiredDate
          : requiredDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estimatedPrice: freezed == estimatedPrice
          ? _value.estimatedPrice
          : estimatedPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      budgetAmount: freezed == budgetAmount
          ? _value.budgetAmount
          : budgetAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      justification: freezed == justification
          ? _value.justification
          : justification // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      preferredSupplier: freezed == preferredSupplier
          ? _value.preferredSupplier
          : preferredSupplier // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdatePurchaseRequisitionLineItemRequestImplCopyWith<$Res>
    implements $UpdatePurchaseRequisitionLineItemRequestCopyWith<$Res> {
  factory _$$UpdatePurchaseRequisitionLineItemRequestImplCopyWith(
          _$UpdatePurchaseRequisitionLineItemRequestImpl value,
          $Res Function(_$UpdatePurchaseRequisitionLineItemRequestImpl) then) =
      __$$UpdatePurchaseRequisitionLineItemRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? quantity,
      String? unit,
      DateTime? requiredDate,
      double? estimatedPrice,
      double? budgetAmount,
      int? sequence,
      String? justification,
      String? notes,
      String? specification,
      String? preferredSupplier,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class __$$UpdatePurchaseRequisitionLineItemRequestImplCopyWithImpl<$Res>
    extends _$UpdatePurchaseRequisitionLineItemRequestCopyWithImpl<$Res,
        _$UpdatePurchaseRequisitionLineItemRequestImpl>
    implements _$$UpdatePurchaseRequisitionLineItemRequestImplCopyWith<$Res> {
  __$$UpdatePurchaseRequisitionLineItemRequestImplCopyWithImpl(
      _$UpdatePurchaseRequisitionLineItemRequestImpl _value,
      $Res Function(_$UpdatePurchaseRequisitionLineItemRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = freezed,
    Object? unit = freezed,
    Object? requiredDate = freezed,
    Object? estimatedPrice = freezed,
    Object? budgetAmount = freezed,
    Object? sequence = freezed,
    Object? justification = freezed,
    Object? notes = freezed,
    Object? specification = freezed,
    Object? preferredSupplier = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_$UpdatePurchaseRequisitionLineItemRequestImpl(
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      requiredDate: freezed == requiredDate
          ? _value.requiredDate
          : requiredDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estimatedPrice: freezed == estimatedPrice
          ? _value.estimatedPrice
          : estimatedPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      budgetAmount: freezed == budgetAmount
          ? _value.budgetAmount
          : budgetAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      justification: freezed == justification
          ? _value.justification
          : justification // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      preferredSupplier: freezed == preferredSupplier
          ? _value.preferredSupplier
          : preferredSupplier // ignore: cast_nullable_to_non_nullable
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
class _$UpdatePurchaseRequisitionLineItemRequestImpl
    implements _UpdatePurchaseRequisitionLineItemRequest {
  const _$UpdatePurchaseRequisitionLineItemRequestImpl(
      {this.quantity,
      this.unit,
      this.requiredDate,
      this.estimatedPrice,
      this.budgetAmount,
      this.sequence,
      this.justification,
      this.notes,
      this.specification,
      this.preferredSupplier,
      final Map<String, dynamic>? attributes})
      : _attributes = attributes;

  factory _$UpdatePurchaseRequisitionLineItemRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdatePurchaseRequisitionLineItemRequestImplFromJson(json);

  @override
  final double? quantity;
  @override
  final String? unit;
  @override
  final DateTime? requiredDate;
  @override
  final double? estimatedPrice;
  @override
  final double? budgetAmount;
  @override
  final int? sequence;
  @override
  final String? justification;
  @override
  final String? notes;
  @override
  final String? specification;
  @override
  final String? preferredSupplier;
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
    return 'UpdatePurchaseRequisitionLineItemRequest(quantity: $quantity, unit: $unit, requiredDate: $requiredDate, estimatedPrice: $estimatedPrice, budgetAmount: $budgetAmount, sequence: $sequence, justification: $justification, notes: $notes, specification: $specification, preferredSupplier: $preferredSupplier, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePurchaseRequisitionLineItemRequestImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.requiredDate, requiredDate) ||
                other.requiredDate == requiredDate) &&
            (identical(other.estimatedPrice, estimatedPrice) ||
                other.estimatedPrice == estimatedPrice) &&
            (identical(other.budgetAmount, budgetAmount) ||
                other.budgetAmount == budgetAmount) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.justification, justification) ||
                other.justification == justification) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.specification, specification) ||
                other.specification == specification) &&
            (identical(other.preferredSupplier, preferredSupplier) ||
                other.preferredSupplier == preferredSupplier) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      quantity,
      unit,
      requiredDate,
      estimatedPrice,
      budgetAmount,
      sequence,
      justification,
      notes,
      specification,
      preferredSupplier,
      const DeepCollectionEquality().hash(_attributes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePurchaseRequisitionLineItemRequestImplCopyWith<
          _$UpdatePurchaseRequisitionLineItemRequestImpl>
      get copyWith =>
          __$$UpdatePurchaseRequisitionLineItemRequestImplCopyWithImpl<
              _$UpdatePurchaseRequisitionLineItemRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatePurchaseRequisitionLineItemRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdatePurchaseRequisitionLineItemRequest
    implements UpdatePurchaseRequisitionLineItemRequest {
  const factory _UpdatePurchaseRequisitionLineItemRequest(
          {final double? quantity,
          final String? unit,
          final DateTime? requiredDate,
          final double? estimatedPrice,
          final double? budgetAmount,
          final int? sequence,
          final String? justification,
          final String? notes,
          final String? specification,
          final String? preferredSupplier,
          final Map<String, dynamic>? attributes}) =
      _$UpdatePurchaseRequisitionLineItemRequestImpl;

  factory _UpdatePurchaseRequisitionLineItemRequest.fromJson(
          Map<String, dynamic> json) =
      _$UpdatePurchaseRequisitionLineItemRequestImpl.fromJson;

  @override
  double? get quantity;
  @override
  String? get unit;
  @override
  DateTime? get requiredDate;
  @override
  double? get estimatedPrice;
  @override
  double? get budgetAmount;
  @override
  int? get sequence;
  @override
  String? get justification;
  @override
  String? get notes;
  @override
  String? get specification;
  @override
  String? get preferredSupplier;
  @override
  Map<String, dynamic>? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$UpdatePurchaseRequisitionLineItemRequestImplCopyWith<
          _$UpdatePurchaseRequisitionLineItemRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PurchaseRequisitionFilters _$PurchaseRequisitionFiltersFromJson(
    Map<String, dynamic> json) {
  return _PurchaseRequisitionFilters.fromJson(json);
}

/// @nodoc
mixin _$PurchaseRequisitionFilters {
  String? get requestedBy => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get priority => throw _privateConstructorUsedError;
  String? get department => throw _privateConstructorUsedError;
  String? get costCenter => throw _privateConstructorUsedError;
  String? get project => throw _privateConstructorUsedError;
  DateTime? get requestDateAfter => throw _privateConstructorUsedError;
  DateTime? get requestDateBefore => throw _privateConstructorUsedError;
  DateTime? get requiredDateAfter => throw _privateConstructorUsedError;
  DateTime? get requiredDateBefore => throw _privateConstructorUsedError;
  List<String>? get itemIds => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String? get sortBy => throw _privateConstructorUsedError;
  String? get sortOrder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseRequisitionFiltersCopyWith<PurchaseRequisitionFilters>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseRequisitionFiltersCopyWith<$Res> {
  factory $PurchaseRequisitionFiltersCopyWith(PurchaseRequisitionFilters value,
          $Res Function(PurchaseRequisitionFilters) then) =
      _$PurchaseRequisitionFiltersCopyWithImpl<$Res,
          PurchaseRequisitionFilters>;
  @useResult
  $Res call(
      {String? requestedBy,
      String? status,
      String? priority,
      String? department,
      String? costCenter,
      String? project,
      DateTime? requestDateAfter,
      DateTime? requestDateBefore,
      DateTime? requiredDateAfter,
      DateTime? requiredDateBefore,
      List<String>? itemIds,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class _$PurchaseRequisitionFiltersCopyWithImpl<$Res,
        $Val extends PurchaseRequisitionFilters>
    implements $PurchaseRequisitionFiltersCopyWith<$Res> {
  _$PurchaseRequisitionFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestedBy = freezed,
    Object? status = freezed,
    Object? priority = freezed,
    Object? department = freezed,
    Object? costCenter = freezed,
    Object? project = freezed,
    Object? requestDateAfter = freezed,
    Object? requestDateBefore = freezed,
    Object? requiredDateAfter = freezed,
    Object? requiredDateBefore = freezed,
    Object? itemIds = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_value.copyWith(
      requestedBy: freezed == requestedBy
          ? _value.requestedBy
          : requestedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      costCenter: freezed == costCenter
          ? _value.costCenter
          : costCenter // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      requestDateAfter: freezed == requestDateAfter
          ? _value.requestDateAfter
          : requestDateAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requestDateBefore: freezed == requestDateBefore
          ? _value.requestDateBefore
          : requestDateBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requiredDateAfter: freezed == requiredDateAfter
          ? _value.requiredDateAfter
          : requiredDateAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requiredDateBefore: freezed == requiredDateBefore
          ? _value.requiredDateBefore
          : requiredDateBefore // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PurchaseRequisitionFiltersImplCopyWith<$Res>
    implements $PurchaseRequisitionFiltersCopyWith<$Res> {
  factory _$$PurchaseRequisitionFiltersImplCopyWith(
          _$PurchaseRequisitionFiltersImpl value,
          $Res Function(_$PurchaseRequisitionFiltersImpl) then) =
      __$$PurchaseRequisitionFiltersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? requestedBy,
      String? status,
      String? priority,
      String? department,
      String? costCenter,
      String? project,
      DateTime? requestDateAfter,
      DateTime? requestDateBefore,
      DateTime? requiredDateAfter,
      DateTime? requiredDateBefore,
      List<String>? itemIds,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class __$$PurchaseRequisitionFiltersImplCopyWithImpl<$Res>
    extends _$PurchaseRequisitionFiltersCopyWithImpl<$Res,
        _$PurchaseRequisitionFiltersImpl>
    implements _$$PurchaseRequisitionFiltersImplCopyWith<$Res> {
  __$$PurchaseRequisitionFiltersImplCopyWithImpl(
      _$PurchaseRequisitionFiltersImpl _value,
      $Res Function(_$PurchaseRequisitionFiltersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestedBy = freezed,
    Object? status = freezed,
    Object? priority = freezed,
    Object? department = freezed,
    Object? costCenter = freezed,
    Object? project = freezed,
    Object? requestDateAfter = freezed,
    Object? requestDateBefore = freezed,
    Object? requiredDateAfter = freezed,
    Object? requiredDateBefore = freezed,
    Object? itemIds = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_$PurchaseRequisitionFiltersImpl(
      requestedBy: freezed == requestedBy
          ? _value.requestedBy
          : requestedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      costCenter: freezed == costCenter
          ? _value.costCenter
          : costCenter // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      requestDateAfter: freezed == requestDateAfter
          ? _value.requestDateAfter
          : requestDateAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requestDateBefore: freezed == requestDateBefore
          ? _value.requestDateBefore
          : requestDateBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requiredDateAfter: freezed == requiredDateAfter
          ? _value.requiredDateAfter
          : requiredDateAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requiredDateBefore: freezed == requiredDateBefore
          ? _value.requiredDateBefore
          : requiredDateBefore // ignore: cast_nullable_to_non_nullable
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
class _$PurchaseRequisitionFiltersImpl extends _PurchaseRequisitionFilters {
  const _$PurchaseRequisitionFiltersImpl(
      {this.requestedBy,
      this.status,
      this.priority,
      this.department,
      this.costCenter,
      this.project,
      this.requestDateAfter,
      this.requestDateBefore,
      this.requiredDateAfter,
      this.requiredDateBefore,
      final List<String>? itemIds,
      this.page,
      this.limit,
      this.sortBy,
      this.sortOrder})
      : _itemIds = itemIds,
        super._();

  factory _$PurchaseRequisitionFiltersImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PurchaseRequisitionFiltersImplFromJson(json);

  @override
  final String? requestedBy;
  @override
  final String? status;
  @override
  final String? priority;
  @override
  final String? department;
  @override
  final String? costCenter;
  @override
  final String? project;
  @override
  final DateTime? requestDateAfter;
  @override
  final DateTime? requestDateBefore;
  @override
  final DateTime? requiredDateAfter;
  @override
  final DateTime? requiredDateBefore;
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
    return 'PurchaseRequisitionFilters(requestedBy: $requestedBy, status: $status, priority: $priority, department: $department, costCenter: $costCenter, project: $project, requestDateAfter: $requestDateAfter, requestDateBefore: $requestDateBefore, requiredDateAfter: $requiredDateAfter, requiredDateBefore: $requiredDateBefore, itemIds: $itemIds, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseRequisitionFiltersImpl &&
            (identical(other.requestedBy, requestedBy) ||
                other.requestedBy == requestedBy) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.costCenter, costCenter) ||
                other.costCenter == costCenter) &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.requestDateAfter, requestDateAfter) ||
                other.requestDateAfter == requestDateAfter) &&
            (identical(other.requestDateBefore, requestDateBefore) ||
                other.requestDateBefore == requestDateBefore) &&
            (identical(other.requiredDateAfter, requiredDateAfter) ||
                other.requiredDateAfter == requiredDateAfter) &&
            (identical(other.requiredDateBefore, requiredDateBefore) ||
                other.requiredDateBefore == requiredDateBefore) &&
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
      requestedBy,
      status,
      priority,
      department,
      costCenter,
      project,
      requestDateAfter,
      requestDateBefore,
      requiredDateAfter,
      requiredDateBefore,
      const DeepCollectionEquality().hash(_itemIds),
      page,
      limit,
      sortBy,
      sortOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseRequisitionFiltersImplCopyWith<_$PurchaseRequisitionFiltersImpl>
      get copyWith => __$$PurchaseRequisitionFiltersImplCopyWithImpl<
          _$PurchaseRequisitionFiltersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchaseRequisitionFiltersImplToJson(
      this,
    );
  }
}

abstract class _PurchaseRequisitionFilters extends PurchaseRequisitionFilters {
  const factory _PurchaseRequisitionFilters(
      {final String? requestedBy,
      final String? status,
      final String? priority,
      final String? department,
      final String? costCenter,
      final String? project,
      final DateTime? requestDateAfter,
      final DateTime? requestDateBefore,
      final DateTime? requiredDateAfter,
      final DateTime? requiredDateBefore,
      final List<String>? itemIds,
      final int? page,
      final int? limit,
      final String? sortBy,
      final String? sortOrder}) = _$PurchaseRequisitionFiltersImpl;
  const _PurchaseRequisitionFilters._() : super._();

  factory _PurchaseRequisitionFilters.fromJson(Map<String, dynamic> json) =
      _$PurchaseRequisitionFiltersImpl.fromJson;

  @override
  String? get requestedBy;
  @override
  String? get status;
  @override
  String? get priority;
  @override
  String? get department;
  @override
  String? get costCenter;
  @override
  String? get project;
  @override
  DateTime? get requestDateAfter;
  @override
  DateTime? get requestDateBefore;
  @override
  DateTime? get requiredDateAfter;
  @override
  DateTime? get requiredDateBefore;
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
  _$$PurchaseRequisitionFiltersImplCopyWith<_$PurchaseRequisitionFiltersImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApprovePurchaseRequisitionRequest _$ApprovePurchaseRequisitionRequestFromJson(
    Map<String, dynamic> json) {
  return _ApprovePurchaseRequisitionRequest.fromJson(json);
}

/// @nodoc
mixin _$ApprovePurchaseRequisitionRequest {
  String? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApprovePurchaseRequisitionRequestCopyWith<ApprovePurchaseRequisitionRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApprovePurchaseRequisitionRequestCopyWith<$Res> {
  factory $ApprovePurchaseRequisitionRequestCopyWith(
          ApprovePurchaseRequisitionRequest value,
          $Res Function(ApprovePurchaseRequisitionRequest) then) =
      _$ApprovePurchaseRequisitionRequestCopyWithImpl<$Res,
          ApprovePurchaseRequisitionRequest>;
  @useResult
  $Res call({String? notes});
}

/// @nodoc
class _$ApprovePurchaseRequisitionRequestCopyWithImpl<$Res,
        $Val extends ApprovePurchaseRequisitionRequest>
    implements $ApprovePurchaseRequisitionRequestCopyWith<$Res> {
  _$ApprovePurchaseRequisitionRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$ApprovePurchaseRequisitionRequestImplCopyWith<$Res>
    implements $ApprovePurchaseRequisitionRequestCopyWith<$Res> {
  factory _$$ApprovePurchaseRequisitionRequestImplCopyWith(
          _$ApprovePurchaseRequisitionRequestImpl value,
          $Res Function(_$ApprovePurchaseRequisitionRequestImpl) then) =
      __$$ApprovePurchaseRequisitionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? notes});
}

/// @nodoc
class __$$ApprovePurchaseRequisitionRequestImplCopyWithImpl<$Res>
    extends _$ApprovePurchaseRequisitionRequestCopyWithImpl<$Res,
        _$ApprovePurchaseRequisitionRequestImpl>
    implements _$$ApprovePurchaseRequisitionRequestImplCopyWith<$Res> {
  __$$ApprovePurchaseRequisitionRequestImplCopyWithImpl(
      _$ApprovePurchaseRequisitionRequestImpl _value,
      $Res Function(_$ApprovePurchaseRequisitionRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = freezed,
  }) {
    return _then(_$ApprovePurchaseRequisitionRequestImpl(
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApprovePurchaseRequisitionRequestImpl
    implements _ApprovePurchaseRequisitionRequest {
  const _$ApprovePurchaseRequisitionRequestImpl({this.notes});

  factory _$ApprovePurchaseRequisitionRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApprovePurchaseRequisitionRequestImplFromJson(json);

  @override
  final String? notes;

  @override
  String toString() {
    return 'ApprovePurchaseRequisitionRequest(notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApprovePurchaseRequisitionRequestImpl &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApprovePurchaseRequisitionRequestImplCopyWith<
          _$ApprovePurchaseRequisitionRequestImpl>
      get copyWith => __$$ApprovePurchaseRequisitionRequestImplCopyWithImpl<
          _$ApprovePurchaseRequisitionRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApprovePurchaseRequisitionRequestImplToJson(
      this,
    );
  }
}

abstract class _ApprovePurchaseRequisitionRequest
    implements ApprovePurchaseRequisitionRequest {
  const factory _ApprovePurchaseRequisitionRequest({final String? notes}) =
      _$ApprovePurchaseRequisitionRequestImpl;

  factory _ApprovePurchaseRequisitionRequest.fromJson(
          Map<String, dynamic> json) =
      _$ApprovePurchaseRequisitionRequestImpl.fromJson;

  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$ApprovePurchaseRequisitionRequestImplCopyWith<
          _$ApprovePurchaseRequisitionRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RejectPurchaseRequisitionRequest _$RejectPurchaseRequisitionRequestFromJson(
    Map<String, dynamic> json) {
  return _RejectPurchaseRequisitionRequest.fromJson(json);
}

/// @nodoc
mixin _$RejectPurchaseRequisitionRequest {
  String get reason => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RejectPurchaseRequisitionRequestCopyWith<RejectPurchaseRequisitionRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RejectPurchaseRequisitionRequestCopyWith<$Res> {
  factory $RejectPurchaseRequisitionRequestCopyWith(
          RejectPurchaseRequisitionRequest value,
          $Res Function(RejectPurchaseRequisitionRequest) then) =
      _$RejectPurchaseRequisitionRequestCopyWithImpl<$Res,
          RejectPurchaseRequisitionRequest>;
  @useResult
  $Res call({String reason, String? notes});
}

/// @nodoc
class _$RejectPurchaseRequisitionRequestCopyWithImpl<$Res,
        $Val extends RejectPurchaseRequisitionRequest>
    implements $RejectPurchaseRequisitionRequestCopyWith<$Res> {
  _$RejectPurchaseRequisitionRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$RejectPurchaseRequisitionRequestImplCopyWith<$Res>
    implements $RejectPurchaseRequisitionRequestCopyWith<$Res> {
  factory _$$RejectPurchaseRequisitionRequestImplCopyWith(
          _$RejectPurchaseRequisitionRequestImpl value,
          $Res Function(_$RejectPurchaseRequisitionRequestImpl) then) =
      __$$RejectPurchaseRequisitionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String reason, String? notes});
}

/// @nodoc
class __$$RejectPurchaseRequisitionRequestImplCopyWithImpl<$Res>
    extends _$RejectPurchaseRequisitionRequestCopyWithImpl<$Res,
        _$RejectPurchaseRequisitionRequestImpl>
    implements _$$RejectPurchaseRequisitionRequestImplCopyWith<$Res> {
  __$$RejectPurchaseRequisitionRequestImplCopyWithImpl(
      _$RejectPurchaseRequisitionRequestImpl _value,
      $Res Function(_$RejectPurchaseRequisitionRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
    Object? notes = freezed,
  }) {
    return _then(_$RejectPurchaseRequisitionRequestImpl(
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
class _$RejectPurchaseRequisitionRequestImpl
    implements _RejectPurchaseRequisitionRequest {
  const _$RejectPurchaseRequisitionRequestImpl(
      {required this.reason, this.notes});

  factory _$RejectPurchaseRequisitionRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RejectPurchaseRequisitionRequestImplFromJson(json);

  @override
  final String reason;
  @override
  final String? notes;

  @override
  String toString() {
    return 'RejectPurchaseRequisitionRequest(reason: $reason, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RejectPurchaseRequisitionRequestImpl &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reason, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RejectPurchaseRequisitionRequestImplCopyWith<
          _$RejectPurchaseRequisitionRequestImpl>
      get copyWith => __$$RejectPurchaseRequisitionRequestImplCopyWithImpl<
          _$RejectPurchaseRequisitionRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RejectPurchaseRequisitionRequestImplToJson(
      this,
    );
  }
}

abstract class _RejectPurchaseRequisitionRequest
    implements RejectPurchaseRequisitionRequest {
  const factory _RejectPurchaseRequisitionRequest(
      {required final String reason,
      final String? notes}) = _$RejectPurchaseRequisitionRequestImpl;

  factory _RejectPurchaseRequisitionRequest.fromJson(
          Map<String, dynamic> json) =
      _$RejectPurchaseRequisitionRequestImpl.fromJson;

  @override
  String get reason;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$RejectPurchaseRequisitionRequestImplCopyWith<
          _$RejectPurchaseRequisitionRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
