// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rfq_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RFQ _$RFQFromJson(Map<String, dynamic> json) {
  return _RFQ.fromJson(json);
}

/// @nodoc
mixin _$RFQ {
  String get id => throw _privateConstructorUsedError;
  String get rfqNumber => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // 'draft', 'sent', 'responses_received', 'evaluated', 'closed', 'cancelled'
  DateTime get rfqDate => throw _privateConstructorUsedError;
  DateTime get responseDeadline => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime? get sentAt => throw _privateConstructorUsedError;
  DateTime? get closedAt => throw _privateConstructorUsedError;
  DateTime? get cancelledAt => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  String? get closedBy => throw _privateConstructorUsedError;
  String? get cancelledBy => throw _privateConstructorUsedError;
  String? get department => throw _privateConstructorUsedError;
  String? get project => throw _privateConstructorUsedError;
  String? get deliveryLocation => throw _privateConstructorUsedError;
  String? get paymentTerms => throw _privateConstructorUsedError;
  String? get evaluationCriteria => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get termsAndConditions => throw _privateConstructorUsedError;
  List<String>? get supplierIds => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RFQCopyWith<RFQ> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RFQCopyWith<$Res> {
  factory $RFQCopyWith(RFQ value, $Res Function(RFQ) then) =
      _$RFQCopyWithImpl<$Res, RFQ>;
  @useResult
  $Res call(
      {String id,
      String rfqNumber,
      String title,
      String description,
      String status,
      DateTime rfqDate,
      DateTime responseDeadline,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? sentAt,
      DateTime? closedAt,
      DateTime? cancelledAt,
      String? createdBy,
      String? closedBy,
      String? cancelledBy,
      String? department,
      String? project,
      String? deliveryLocation,
      String? paymentTerms,
      String? evaluationCriteria,
      String? notes,
      String? termsAndConditions,
      List<String>? supplierIds,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$RFQCopyWithImpl<$Res, $Val extends RFQ> implements $RFQCopyWith<$Res> {
  _$RFQCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rfqNumber = null,
    Object? title = null,
    Object? description = null,
    Object? status = null,
    Object? rfqDate = null,
    Object? responseDeadline = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? sentAt = freezed,
    Object? closedAt = freezed,
    Object? cancelledAt = freezed,
    Object? createdBy = freezed,
    Object? closedBy = freezed,
    Object? cancelledBy = freezed,
    Object? department = freezed,
    Object? project = freezed,
    Object? deliveryLocation = freezed,
    Object? paymentTerms = freezed,
    Object? evaluationCriteria = freezed,
    Object? notes = freezed,
    Object? termsAndConditions = freezed,
    Object? supplierIds = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rfqNumber: null == rfqNumber
          ? _value.rfqNumber
          : rfqNumber // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      rfqDate: null == rfqDate
          ? _value.rfqDate
          : rfqDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      responseDeadline: null == responseDeadline
          ? _value.responseDeadline
          : responseDeadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sentAt: freezed == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      closedAt: freezed == closedAt
          ? _value.closedAt
          : closedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelledAt: freezed == cancelledAt
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      closedBy: freezed == closedBy
          ? _value.closedBy
          : closedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelledBy: freezed == cancelledBy
          ? _value.cancelledBy
          : cancelledBy // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryLocation: freezed == deliveryLocation
          ? _value.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _value.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      evaluationCriteria: freezed == evaluationCriteria
          ? _value.evaluationCriteria
          : evaluationCriteria // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _value.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierIds: freezed == supplierIds
          ? _value.supplierIds
          : supplierIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RFQImplCopyWith<$Res> implements $RFQCopyWith<$Res> {
  factory _$$RFQImplCopyWith(_$RFQImpl value, $Res Function(_$RFQImpl) then) =
      __$$RFQImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String rfqNumber,
      String title,
      String description,
      String status,
      DateTime rfqDate,
      DateTime responseDeadline,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? sentAt,
      DateTime? closedAt,
      DateTime? cancelledAt,
      String? createdBy,
      String? closedBy,
      String? cancelledBy,
      String? department,
      String? project,
      String? deliveryLocation,
      String? paymentTerms,
      String? evaluationCriteria,
      String? notes,
      String? termsAndConditions,
      List<String>? supplierIds,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$RFQImplCopyWithImpl<$Res> extends _$RFQCopyWithImpl<$Res, _$RFQImpl>
    implements _$$RFQImplCopyWith<$Res> {
  __$$RFQImplCopyWithImpl(_$RFQImpl _value, $Res Function(_$RFQImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rfqNumber = null,
    Object? title = null,
    Object? description = null,
    Object? status = null,
    Object? rfqDate = null,
    Object? responseDeadline = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? sentAt = freezed,
    Object? closedAt = freezed,
    Object? cancelledAt = freezed,
    Object? createdBy = freezed,
    Object? closedBy = freezed,
    Object? cancelledBy = freezed,
    Object? department = freezed,
    Object? project = freezed,
    Object? deliveryLocation = freezed,
    Object? paymentTerms = freezed,
    Object? evaluationCriteria = freezed,
    Object? notes = freezed,
    Object? termsAndConditions = freezed,
    Object? supplierIds = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$RFQImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rfqNumber: null == rfqNumber
          ? _value.rfqNumber
          : rfqNumber // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      rfqDate: null == rfqDate
          ? _value.rfqDate
          : rfqDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      responseDeadline: null == responseDeadline
          ? _value.responseDeadline
          : responseDeadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sentAt: freezed == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      closedAt: freezed == closedAt
          ? _value.closedAt
          : closedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelledAt: freezed == cancelledAt
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      closedBy: freezed == closedBy
          ? _value.closedBy
          : closedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelledBy: freezed == cancelledBy
          ? _value.cancelledBy
          : cancelledBy // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryLocation: freezed == deliveryLocation
          ? _value.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _value.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      evaluationCriteria: freezed == evaluationCriteria
          ? _value.evaluationCriteria
          : evaluationCriteria // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _value.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierIds: freezed == supplierIds
          ? _value._supplierIds
          : supplierIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RFQImpl implements _RFQ {
  const _$RFQImpl(
      {required this.id,
      required this.rfqNumber,
      required this.title,
      required this.description,
      required this.status,
      required this.rfqDate,
      required this.responseDeadline,
      required this.createdAt,
      required this.updatedAt,
      this.sentAt,
      this.closedAt,
      this.cancelledAt,
      this.createdBy,
      this.closedBy,
      this.cancelledBy,
      this.department,
      this.project,
      this.deliveryLocation,
      this.paymentTerms,
      this.evaluationCriteria,
      this.notes,
      this.termsAndConditions,
      final List<String>? supplierIds,
      final Map<String, dynamic>? metadata})
      : _supplierIds = supplierIds,
        _metadata = metadata;

  factory _$RFQImpl.fromJson(Map<String, dynamic> json) =>
      _$$RFQImplFromJson(json);

  @override
  final String id;
  @override
  final String rfqNumber;
  @override
  final String title;
  @override
  final String description;
  @override
  final String status;
// 'draft', 'sent', 'responses_received', 'evaluated', 'closed', 'cancelled'
  @override
  final DateTime rfqDate;
  @override
  final DateTime responseDeadline;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime? sentAt;
  @override
  final DateTime? closedAt;
  @override
  final DateTime? cancelledAt;
  @override
  final String? createdBy;
  @override
  final String? closedBy;
  @override
  final String? cancelledBy;
  @override
  final String? department;
  @override
  final String? project;
  @override
  final String? deliveryLocation;
  @override
  final String? paymentTerms;
  @override
  final String? evaluationCriteria;
  @override
  final String? notes;
  @override
  final String? termsAndConditions;
  final List<String>? _supplierIds;
  @override
  List<String>? get supplierIds {
    final value = _supplierIds;
    if (value == null) return null;
    if (_supplierIds is EqualUnmodifiableListView) return _supplierIds;
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
    return 'RFQ(id: $id, rfqNumber: $rfqNumber, title: $title, description: $description, status: $status, rfqDate: $rfqDate, responseDeadline: $responseDeadline, createdAt: $createdAt, updatedAt: $updatedAt, sentAt: $sentAt, closedAt: $closedAt, cancelledAt: $cancelledAt, createdBy: $createdBy, closedBy: $closedBy, cancelledBy: $cancelledBy, department: $department, project: $project, deliveryLocation: $deliveryLocation, paymentTerms: $paymentTerms, evaluationCriteria: $evaluationCriteria, notes: $notes, termsAndConditions: $termsAndConditions, supplierIds: $supplierIds, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RFQImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rfqNumber, rfqNumber) ||
                other.rfqNumber == rfqNumber) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.rfqDate, rfqDate) || other.rfqDate == rfqDate) &&
            (identical(other.responseDeadline, responseDeadline) ||
                other.responseDeadline == responseDeadline) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            (identical(other.closedAt, closedAt) ||
                other.closedAt == closedAt) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.closedBy, closedBy) ||
                other.closedBy == closedBy) &&
            (identical(other.cancelledBy, cancelledBy) ||
                other.cancelledBy == cancelledBy) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.deliveryLocation, deliveryLocation) ||
                other.deliveryLocation == deliveryLocation) &&
            (identical(other.paymentTerms, paymentTerms) ||
                other.paymentTerms == paymentTerms) &&
            (identical(other.evaluationCriteria, evaluationCriteria) ||
                other.evaluationCriteria == evaluationCriteria) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.termsAndConditions, termsAndConditions) ||
                other.termsAndConditions == termsAndConditions) &&
            const DeepCollectionEquality()
                .equals(other._supplierIds, _supplierIds) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        rfqNumber,
        title,
        description,
        status,
        rfqDate,
        responseDeadline,
        createdAt,
        updatedAt,
        sentAt,
        closedAt,
        cancelledAt,
        createdBy,
        closedBy,
        cancelledBy,
        department,
        project,
        deliveryLocation,
        paymentTerms,
        evaluationCriteria,
        notes,
        termsAndConditions,
        const DeepCollectionEquality().hash(_supplierIds),
        const DeepCollectionEquality().hash(_metadata)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RFQImplCopyWith<_$RFQImpl> get copyWith =>
      __$$RFQImplCopyWithImpl<_$RFQImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RFQImplToJson(
      this,
    );
  }
}

abstract class _RFQ implements RFQ {
  const factory _RFQ(
      {required final String id,
      required final String rfqNumber,
      required final String title,
      required final String description,
      required final String status,
      required final DateTime rfqDate,
      required final DateTime responseDeadline,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final DateTime? sentAt,
      final DateTime? closedAt,
      final DateTime? cancelledAt,
      final String? createdBy,
      final String? closedBy,
      final String? cancelledBy,
      final String? department,
      final String? project,
      final String? deliveryLocation,
      final String? paymentTerms,
      final String? evaluationCriteria,
      final String? notes,
      final String? termsAndConditions,
      final List<String>? supplierIds,
      final Map<String, dynamic>? metadata}) = _$RFQImpl;

  factory _RFQ.fromJson(Map<String, dynamic> json) = _$RFQImpl.fromJson;

  @override
  String get id;
  @override
  String get rfqNumber;
  @override
  String get title;
  @override
  String get description;
  @override
  String get status;
  @override // 'draft', 'sent', 'responses_received', 'evaluated', 'closed', 'cancelled'
  DateTime get rfqDate;
  @override
  DateTime get responseDeadline;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  DateTime? get sentAt;
  @override
  DateTime? get closedAt;
  @override
  DateTime? get cancelledAt;
  @override
  String? get createdBy;
  @override
  String? get closedBy;
  @override
  String? get cancelledBy;
  @override
  String? get department;
  @override
  String? get project;
  @override
  String? get deliveryLocation;
  @override
  String? get paymentTerms;
  @override
  String? get evaluationCriteria;
  @override
  String? get notes;
  @override
  String? get termsAndConditions;
  @override
  List<String>? get supplierIds;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$RFQImplCopyWith<_$RFQImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RFQLineItem _$RFQLineItemFromJson(Map<String, dynamic> json) {
  return _RFQLineItem.fromJson(json);
}

/// @nodoc
mixin _$RFQLineItem {
  String get id => throw _privateConstructorUsedError;
  String get rfqId => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  DateTime get requiredDate => throw _privateConstructorUsedError;
  int? get sequence => throw _privateConstructorUsedError;
  String? get specification => throw _privateConstructorUsedError;
  String? get brandPreference => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  double? get budgetPrice => throw _privateConstructorUsedError;
  double? get maxPrice => throw _privateConstructorUsedError;
  Map<String, dynamic>? get technicalRequirements =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get attributes => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RFQLineItemCopyWith<RFQLineItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RFQLineItemCopyWith<$Res> {
  factory $RFQLineItemCopyWith(
          RFQLineItem value, $Res Function(RFQLineItem) then) =
      _$RFQLineItemCopyWithImpl<$Res, RFQLineItem>;
  @useResult
  $Res call(
      {String id,
      String rfqId,
      String itemId,
      double quantity,
      String unit,
      DateTime requiredDate,
      int? sequence,
      String? specification,
      String? brandPreference,
      String? notes,
      double? budgetPrice,
      double? maxPrice,
      Map<String, dynamic>? technicalRequirements,
      Map<String, dynamic>? attributes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$RFQLineItemCopyWithImpl<$Res, $Val extends RFQLineItem>
    implements $RFQLineItemCopyWith<$Res> {
  _$RFQLineItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rfqId = null,
    Object? itemId = null,
    Object? quantity = null,
    Object? unit = null,
    Object? requiredDate = null,
    Object? sequence = freezed,
    Object? specification = freezed,
    Object? brandPreference = freezed,
    Object? notes = freezed,
    Object? budgetPrice = freezed,
    Object? maxPrice = freezed,
    Object? technicalRequirements = freezed,
    Object? attributes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rfqId: null == rfqId
          ? _value.rfqId
          : rfqId // ignore: cast_nullable_to_non_nullable
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
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      specification: freezed == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      brandPreference: freezed == brandPreference
          ? _value.brandPreference
          : brandPreference // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      budgetPrice: freezed == budgetPrice
          ? _value.budgetPrice
          : budgetPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      technicalRequirements: freezed == technicalRequirements
          ? _value.technicalRequirements
          : technicalRequirements // ignore: cast_nullable_to_non_nullable
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
abstract class _$$RFQLineItemImplCopyWith<$Res>
    implements $RFQLineItemCopyWith<$Res> {
  factory _$$RFQLineItemImplCopyWith(
          _$RFQLineItemImpl value, $Res Function(_$RFQLineItemImpl) then) =
      __$$RFQLineItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String rfqId,
      String itemId,
      double quantity,
      String unit,
      DateTime requiredDate,
      int? sequence,
      String? specification,
      String? brandPreference,
      String? notes,
      double? budgetPrice,
      double? maxPrice,
      Map<String, dynamic>? technicalRequirements,
      Map<String, dynamic>? attributes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$RFQLineItemImplCopyWithImpl<$Res>
    extends _$RFQLineItemCopyWithImpl<$Res, _$RFQLineItemImpl>
    implements _$$RFQLineItemImplCopyWith<$Res> {
  __$$RFQLineItemImplCopyWithImpl(
      _$RFQLineItemImpl _value, $Res Function(_$RFQLineItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rfqId = null,
    Object? itemId = null,
    Object? quantity = null,
    Object? unit = null,
    Object? requiredDate = null,
    Object? sequence = freezed,
    Object? specification = freezed,
    Object? brandPreference = freezed,
    Object? notes = freezed,
    Object? budgetPrice = freezed,
    Object? maxPrice = freezed,
    Object? technicalRequirements = freezed,
    Object? attributes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$RFQLineItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rfqId: null == rfqId
          ? _value.rfqId
          : rfqId // ignore: cast_nullable_to_non_nullable
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
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      specification: freezed == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      brandPreference: freezed == brandPreference
          ? _value.brandPreference
          : brandPreference // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      budgetPrice: freezed == budgetPrice
          ? _value.budgetPrice
          : budgetPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      technicalRequirements: freezed == technicalRequirements
          ? _value._technicalRequirements
          : technicalRequirements // ignore: cast_nullable_to_non_nullable
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
class _$RFQLineItemImpl implements _RFQLineItem {
  const _$RFQLineItemImpl(
      {required this.id,
      required this.rfqId,
      required this.itemId,
      required this.quantity,
      required this.unit,
      required this.requiredDate,
      this.sequence,
      this.specification,
      this.brandPreference,
      this.notes,
      this.budgetPrice,
      this.maxPrice,
      final Map<String, dynamic>? technicalRequirements,
      final Map<String, dynamic>? attributes,
      final Map<String, dynamic>? metadata})
      : _technicalRequirements = technicalRequirements,
        _attributes = attributes,
        _metadata = metadata;

  factory _$RFQLineItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$RFQLineItemImplFromJson(json);

  @override
  final String id;
  @override
  final String rfqId;
  @override
  final String itemId;
  @override
  final double quantity;
  @override
  final String unit;
  @override
  final DateTime requiredDate;
  @override
  final int? sequence;
  @override
  final String? specification;
  @override
  final String? brandPreference;
  @override
  final String? notes;
  @override
  final double? budgetPrice;
  @override
  final double? maxPrice;
  final Map<String, dynamic>? _technicalRequirements;
  @override
  Map<String, dynamic>? get technicalRequirements {
    final value = _technicalRequirements;
    if (value == null) return null;
    if (_technicalRequirements is EqualUnmodifiableMapView)
      return _technicalRequirements;
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
    return 'RFQLineItem(id: $id, rfqId: $rfqId, itemId: $itemId, quantity: $quantity, unit: $unit, requiredDate: $requiredDate, sequence: $sequence, specification: $specification, brandPreference: $brandPreference, notes: $notes, budgetPrice: $budgetPrice, maxPrice: $maxPrice, technicalRequirements: $technicalRequirements, attributes: $attributes, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RFQLineItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rfqId, rfqId) || other.rfqId == rfqId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.requiredDate, requiredDate) ||
                other.requiredDate == requiredDate) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.specification, specification) ||
                other.specification == specification) &&
            (identical(other.brandPreference, brandPreference) ||
                other.brandPreference == brandPreference) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.budgetPrice, budgetPrice) ||
                other.budgetPrice == budgetPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            const DeepCollectionEquality()
                .equals(other._technicalRequirements, _technicalRequirements) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      rfqId,
      itemId,
      quantity,
      unit,
      requiredDate,
      sequence,
      specification,
      brandPreference,
      notes,
      budgetPrice,
      maxPrice,
      const DeepCollectionEquality().hash(_technicalRequirements),
      const DeepCollectionEquality().hash(_attributes),
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RFQLineItemImplCopyWith<_$RFQLineItemImpl> get copyWith =>
      __$$RFQLineItemImplCopyWithImpl<_$RFQLineItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RFQLineItemImplToJson(
      this,
    );
  }
}

abstract class _RFQLineItem implements RFQLineItem {
  const factory _RFQLineItem(
      {required final String id,
      required final String rfqId,
      required final String itemId,
      required final double quantity,
      required final String unit,
      required final DateTime requiredDate,
      final int? sequence,
      final String? specification,
      final String? brandPreference,
      final String? notes,
      final double? budgetPrice,
      final double? maxPrice,
      final Map<String, dynamic>? technicalRequirements,
      final Map<String, dynamic>? attributes,
      final Map<String, dynamic>? metadata}) = _$RFQLineItemImpl;

  factory _RFQLineItem.fromJson(Map<String, dynamic> json) =
      _$RFQLineItemImpl.fromJson;

  @override
  String get id;
  @override
  String get rfqId;
  @override
  String get itemId;
  @override
  double get quantity;
  @override
  String get unit;
  @override
  DateTime get requiredDate;
  @override
  int? get sequence;
  @override
  String? get specification;
  @override
  String? get brandPreference;
  @override
  String? get notes;
  @override
  double? get budgetPrice;
  @override
  double? get maxPrice;
  @override
  Map<String, dynamic>? get technicalRequirements;
  @override
  Map<String, dynamic>? get attributes;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$RFQLineItemImplCopyWith<_$RFQLineItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RFQSupplier _$RFQSupplierFromJson(Map<String, dynamic> json) {
  return _RFQSupplier.fromJson(json);
}

/// @nodoc
mixin _$RFQSupplier {
  String get id => throw _privateConstructorUsedError;
  String get rfqId => throw _privateConstructorUsedError;
  String get supplierId => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // 'invited', 'acknowledged', 'quoted', 'declined'
  DateTime get invitedAt => throw _privateConstructorUsedError;
  DateTime? get acknowledgedAt => throw _privateConstructorUsedError;
  DateTime? get quotedAt => throw _privateConstructorUsedError;
  DateTime? get declinedAt => throw _privateConstructorUsedError;
  String? get quotationId => throw _privateConstructorUsedError;
  String? get declineReason => throw _privateConstructorUsedError;
  String? get contactPerson => throw _privateConstructorUsedError;
  String? get contactEmail => throw _privateConstructorUsedError;
  String? get contactPhone => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RFQSupplierCopyWith<RFQSupplier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RFQSupplierCopyWith<$Res> {
  factory $RFQSupplierCopyWith(
          RFQSupplier value, $Res Function(RFQSupplier) then) =
      _$RFQSupplierCopyWithImpl<$Res, RFQSupplier>;
  @useResult
  $Res call(
      {String id,
      String rfqId,
      String supplierId,
      String status,
      DateTime invitedAt,
      DateTime? acknowledgedAt,
      DateTime? quotedAt,
      DateTime? declinedAt,
      String? quotationId,
      String? declineReason,
      String? contactPerson,
      String? contactEmail,
      String? contactPhone,
      String? notes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$RFQSupplierCopyWithImpl<$Res, $Val extends RFQSupplier>
    implements $RFQSupplierCopyWith<$Res> {
  _$RFQSupplierCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rfqId = null,
    Object? supplierId = null,
    Object? status = null,
    Object? invitedAt = null,
    Object? acknowledgedAt = freezed,
    Object? quotedAt = freezed,
    Object? declinedAt = freezed,
    Object? quotationId = freezed,
    Object? declineReason = freezed,
    Object? contactPerson = freezed,
    Object? contactEmail = freezed,
    Object? contactPhone = freezed,
    Object? notes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rfqId: null == rfqId
          ? _value.rfqId
          : rfqId // ignore: cast_nullable_to_non_nullable
              as String,
      supplierId: null == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      invitedAt: null == invitedAt
          ? _value.invitedAt
          : invitedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      acknowledgedAt: freezed == acknowledgedAt
          ? _value.acknowledgedAt
          : acknowledgedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quotedAt: freezed == quotedAt
          ? _value.quotedAt
          : quotedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      declinedAt: freezed == declinedAt
          ? _value.declinedAt
          : declinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quotationId: freezed == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String?,
      declineReason: freezed == declineReason
          ? _value.declineReason
          : declineReason // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPerson: freezed == contactPerson
          ? _value.contactPerson
          : contactPerson // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
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
abstract class _$$RFQSupplierImplCopyWith<$Res>
    implements $RFQSupplierCopyWith<$Res> {
  factory _$$RFQSupplierImplCopyWith(
          _$RFQSupplierImpl value, $Res Function(_$RFQSupplierImpl) then) =
      __$$RFQSupplierImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String rfqId,
      String supplierId,
      String status,
      DateTime invitedAt,
      DateTime? acknowledgedAt,
      DateTime? quotedAt,
      DateTime? declinedAt,
      String? quotationId,
      String? declineReason,
      String? contactPerson,
      String? contactEmail,
      String? contactPhone,
      String? notes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$RFQSupplierImplCopyWithImpl<$Res>
    extends _$RFQSupplierCopyWithImpl<$Res, _$RFQSupplierImpl>
    implements _$$RFQSupplierImplCopyWith<$Res> {
  __$$RFQSupplierImplCopyWithImpl(
      _$RFQSupplierImpl _value, $Res Function(_$RFQSupplierImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rfqId = null,
    Object? supplierId = null,
    Object? status = null,
    Object? invitedAt = null,
    Object? acknowledgedAt = freezed,
    Object? quotedAt = freezed,
    Object? declinedAt = freezed,
    Object? quotationId = freezed,
    Object? declineReason = freezed,
    Object? contactPerson = freezed,
    Object? contactEmail = freezed,
    Object? contactPhone = freezed,
    Object? notes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$RFQSupplierImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rfqId: null == rfqId
          ? _value.rfqId
          : rfqId // ignore: cast_nullable_to_non_nullable
              as String,
      supplierId: null == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      invitedAt: null == invitedAt
          ? _value.invitedAt
          : invitedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      acknowledgedAt: freezed == acknowledgedAt
          ? _value.acknowledgedAt
          : acknowledgedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quotedAt: freezed == quotedAt
          ? _value.quotedAt
          : quotedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      declinedAt: freezed == declinedAt
          ? _value.declinedAt
          : declinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quotationId: freezed == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String?,
      declineReason: freezed == declineReason
          ? _value.declineReason
          : declineReason // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPerson: freezed == contactPerson
          ? _value.contactPerson
          : contactPerson // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
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
class _$RFQSupplierImpl implements _RFQSupplier {
  const _$RFQSupplierImpl(
      {required this.id,
      required this.rfqId,
      required this.supplierId,
      required this.status,
      required this.invitedAt,
      this.acknowledgedAt,
      this.quotedAt,
      this.declinedAt,
      this.quotationId,
      this.declineReason,
      this.contactPerson,
      this.contactEmail,
      this.contactPhone,
      this.notes,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$RFQSupplierImpl.fromJson(Map<String, dynamic> json) =>
      _$$RFQSupplierImplFromJson(json);

  @override
  final String id;
  @override
  final String rfqId;
  @override
  final String supplierId;
  @override
  final String status;
// 'invited', 'acknowledged', 'quoted', 'declined'
  @override
  final DateTime invitedAt;
  @override
  final DateTime? acknowledgedAt;
  @override
  final DateTime? quotedAt;
  @override
  final DateTime? declinedAt;
  @override
  final String? quotationId;
  @override
  final String? declineReason;
  @override
  final String? contactPerson;
  @override
  final String? contactEmail;
  @override
  final String? contactPhone;
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
    return 'RFQSupplier(id: $id, rfqId: $rfqId, supplierId: $supplierId, status: $status, invitedAt: $invitedAt, acknowledgedAt: $acknowledgedAt, quotedAt: $quotedAt, declinedAt: $declinedAt, quotationId: $quotationId, declineReason: $declineReason, contactPerson: $contactPerson, contactEmail: $contactEmail, contactPhone: $contactPhone, notes: $notes, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RFQSupplierImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rfqId, rfqId) || other.rfqId == rfqId) &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.invitedAt, invitedAt) ||
                other.invitedAt == invitedAt) &&
            (identical(other.acknowledgedAt, acknowledgedAt) ||
                other.acknowledgedAt == acknowledgedAt) &&
            (identical(other.quotedAt, quotedAt) ||
                other.quotedAt == quotedAt) &&
            (identical(other.declinedAt, declinedAt) ||
                other.declinedAt == declinedAt) &&
            (identical(other.quotationId, quotationId) ||
                other.quotationId == quotationId) &&
            (identical(other.declineReason, declineReason) ||
                other.declineReason == declineReason) &&
            (identical(other.contactPerson, contactPerson) ||
                other.contactPerson == contactPerson) &&
            (identical(other.contactEmail, contactEmail) ||
                other.contactEmail == contactEmail) &&
            (identical(other.contactPhone, contactPhone) ||
                other.contactPhone == contactPhone) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      rfqId,
      supplierId,
      status,
      invitedAt,
      acknowledgedAt,
      quotedAt,
      declinedAt,
      quotationId,
      declineReason,
      contactPerson,
      contactEmail,
      contactPhone,
      notes,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RFQSupplierImplCopyWith<_$RFQSupplierImpl> get copyWith =>
      __$$RFQSupplierImplCopyWithImpl<_$RFQSupplierImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RFQSupplierImplToJson(
      this,
    );
  }
}

abstract class _RFQSupplier implements RFQSupplier {
  const factory _RFQSupplier(
      {required final String id,
      required final String rfqId,
      required final String supplierId,
      required final String status,
      required final DateTime invitedAt,
      final DateTime? acknowledgedAt,
      final DateTime? quotedAt,
      final DateTime? declinedAt,
      final String? quotationId,
      final String? declineReason,
      final String? contactPerson,
      final String? contactEmail,
      final String? contactPhone,
      final String? notes,
      final Map<String, dynamic>? metadata}) = _$RFQSupplierImpl;

  factory _RFQSupplier.fromJson(Map<String, dynamic> json) =
      _$RFQSupplierImpl.fromJson;

  @override
  String get id;
  @override
  String get rfqId;
  @override
  String get supplierId;
  @override
  String get status;
  @override // 'invited', 'acknowledged', 'quoted', 'declined'
  DateTime get invitedAt;
  @override
  DateTime? get acknowledgedAt;
  @override
  DateTime? get quotedAt;
  @override
  DateTime? get declinedAt;
  @override
  String? get quotationId;
  @override
  String? get declineReason;
  @override
  String? get contactPerson;
  @override
  String? get contactEmail;
  @override
  String? get contactPhone;
  @override
  String? get notes;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$RFQSupplierImplCopyWith<_$RFQSupplierImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateRFQRequest _$CreateRFQRequestFromJson(Map<String, dynamic> json) {
  return _CreateRFQRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateRFQRequest {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get responseDeadline => throw _privateConstructorUsedError;
  String? get department => throw _privateConstructorUsedError;
  String? get project => throw _privateConstructorUsedError;
  String? get deliveryLocation => throw _privateConstructorUsedError;
  String? get paymentTerms => throw _privateConstructorUsedError;
  String? get evaluationCriteria => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get termsAndConditions => throw _privateConstructorUsedError;
  List<String>? get supplierIds => throw _privateConstructorUsedError;
  List<CreateRFQLineItemRequest>? get lineItems =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateRFQRequestCopyWith<CreateRFQRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRFQRequestCopyWith<$Res> {
  factory $CreateRFQRequestCopyWith(
          CreateRFQRequest value, $Res Function(CreateRFQRequest) then) =
      _$CreateRFQRequestCopyWithImpl<$Res, CreateRFQRequest>;
  @useResult
  $Res call(
      {String title,
      String description,
      DateTime responseDeadline,
      String? department,
      String? project,
      String? deliveryLocation,
      String? paymentTerms,
      String? evaluationCriteria,
      String? notes,
      String? termsAndConditions,
      List<String>? supplierIds,
      List<CreateRFQLineItemRequest>? lineItems,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$CreateRFQRequestCopyWithImpl<$Res, $Val extends CreateRFQRequest>
    implements $CreateRFQRequestCopyWith<$Res> {
  _$CreateRFQRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? responseDeadline = null,
    Object? department = freezed,
    Object? project = freezed,
    Object? deliveryLocation = freezed,
    Object? paymentTerms = freezed,
    Object? evaluationCriteria = freezed,
    Object? notes = freezed,
    Object? termsAndConditions = freezed,
    Object? supplierIds = freezed,
    Object? lineItems = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      responseDeadline: null == responseDeadline
          ? _value.responseDeadline
          : responseDeadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryLocation: freezed == deliveryLocation
          ? _value.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _value.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      evaluationCriteria: freezed == evaluationCriteria
          ? _value.evaluationCriteria
          : evaluationCriteria // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _value.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierIds: freezed == supplierIds
          ? _value.supplierIds
          : supplierIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lineItems: freezed == lineItems
          ? _value.lineItems
          : lineItems // ignore: cast_nullable_to_non_nullable
              as List<CreateRFQLineItemRequest>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateRFQRequestImplCopyWith<$Res>
    implements $CreateRFQRequestCopyWith<$Res> {
  factory _$$CreateRFQRequestImplCopyWith(_$CreateRFQRequestImpl value,
          $Res Function(_$CreateRFQRequestImpl) then) =
      __$$CreateRFQRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      DateTime responseDeadline,
      String? department,
      String? project,
      String? deliveryLocation,
      String? paymentTerms,
      String? evaluationCriteria,
      String? notes,
      String? termsAndConditions,
      List<String>? supplierIds,
      List<CreateRFQLineItemRequest>? lineItems,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$CreateRFQRequestImplCopyWithImpl<$Res>
    extends _$CreateRFQRequestCopyWithImpl<$Res, _$CreateRFQRequestImpl>
    implements _$$CreateRFQRequestImplCopyWith<$Res> {
  __$$CreateRFQRequestImplCopyWithImpl(_$CreateRFQRequestImpl _value,
      $Res Function(_$CreateRFQRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? responseDeadline = null,
    Object? department = freezed,
    Object? project = freezed,
    Object? deliveryLocation = freezed,
    Object? paymentTerms = freezed,
    Object? evaluationCriteria = freezed,
    Object? notes = freezed,
    Object? termsAndConditions = freezed,
    Object? supplierIds = freezed,
    Object? lineItems = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$CreateRFQRequestImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      responseDeadline: null == responseDeadline
          ? _value.responseDeadline
          : responseDeadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryLocation: freezed == deliveryLocation
          ? _value.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _value.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      evaluationCriteria: freezed == evaluationCriteria
          ? _value.evaluationCriteria
          : evaluationCriteria // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _value.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierIds: freezed == supplierIds
          ? _value._supplierIds
          : supplierIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lineItems: freezed == lineItems
          ? _value._lineItems
          : lineItems // ignore: cast_nullable_to_non_nullable
              as List<CreateRFQLineItemRequest>?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateRFQRequestImpl implements _CreateRFQRequest {
  const _$CreateRFQRequestImpl(
      {required this.title,
      required this.description,
      required this.responseDeadline,
      this.department,
      this.project,
      this.deliveryLocation,
      this.paymentTerms,
      this.evaluationCriteria,
      this.notes,
      this.termsAndConditions,
      final List<String>? supplierIds,
      final List<CreateRFQLineItemRequest>? lineItems,
      final Map<String, dynamic>? metadata})
      : _supplierIds = supplierIds,
        _lineItems = lineItems,
        _metadata = metadata;

  factory _$CreateRFQRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateRFQRequestImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime responseDeadline;
  @override
  final String? department;
  @override
  final String? project;
  @override
  final String? deliveryLocation;
  @override
  final String? paymentTerms;
  @override
  final String? evaluationCriteria;
  @override
  final String? notes;
  @override
  final String? termsAndConditions;
  final List<String>? _supplierIds;
  @override
  List<String>? get supplierIds {
    final value = _supplierIds;
    if (value == null) return null;
    if (_supplierIds is EqualUnmodifiableListView) return _supplierIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CreateRFQLineItemRequest>? _lineItems;
  @override
  List<CreateRFQLineItemRequest>? get lineItems {
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
    return 'CreateRFQRequest(title: $title, description: $description, responseDeadline: $responseDeadline, department: $department, project: $project, deliveryLocation: $deliveryLocation, paymentTerms: $paymentTerms, evaluationCriteria: $evaluationCriteria, notes: $notes, termsAndConditions: $termsAndConditions, supplierIds: $supplierIds, lineItems: $lineItems, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRFQRequestImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.responseDeadline, responseDeadline) ||
                other.responseDeadline == responseDeadline) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.deliveryLocation, deliveryLocation) ||
                other.deliveryLocation == deliveryLocation) &&
            (identical(other.paymentTerms, paymentTerms) ||
                other.paymentTerms == paymentTerms) &&
            (identical(other.evaluationCriteria, evaluationCriteria) ||
                other.evaluationCriteria == evaluationCriteria) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.termsAndConditions, termsAndConditions) ||
                other.termsAndConditions == termsAndConditions) &&
            const DeepCollectionEquality()
                .equals(other._supplierIds, _supplierIds) &&
            const DeepCollectionEquality()
                .equals(other._lineItems, _lineItems) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      responseDeadline,
      department,
      project,
      deliveryLocation,
      paymentTerms,
      evaluationCriteria,
      notes,
      termsAndConditions,
      const DeepCollectionEquality().hash(_supplierIds),
      const DeepCollectionEquality().hash(_lineItems),
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRFQRequestImplCopyWith<_$CreateRFQRequestImpl> get copyWith =>
      __$$CreateRFQRequestImplCopyWithImpl<_$CreateRFQRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateRFQRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateRFQRequest implements CreateRFQRequest {
  const factory _CreateRFQRequest(
      {required final String title,
      required final String description,
      required final DateTime responseDeadline,
      final String? department,
      final String? project,
      final String? deliveryLocation,
      final String? paymentTerms,
      final String? evaluationCriteria,
      final String? notes,
      final String? termsAndConditions,
      final List<String>? supplierIds,
      final List<CreateRFQLineItemRequest>? lineItems,
      final Map<String, dynamic>? metadata}) = _$CreateRFQRequestImpl;

  factory _CreateRFQRequest.fromJson(Map<String, dynamic> json) =
      _$CreateRFQRequestImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get responseDeadline;
  @override
  String? get department;
  @override
  String? get project;
  @override
  String? get deliveryLocation;
  @override
  String? get paymentTerms;
  @override
  String? get evaluationCriteria;
  @override
  String? get notes;
  @override
  String? get termsAndConditions;
  @override
  List<String>? get supplierIds;
  @override
  List<CreateRFQLineItemRequest>? get lineItems;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$CreateRFQRequestImplCopyWith<_$CreateRFQRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateRFQLineItemRequest _$CreateRFQLineItemRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateRFQLineItemRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateRFQLineItemRequest {
  String get itemId => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  DateTime get requiredDate => throw _privateConstructorUsedError;
  int? get sequence => throw _privateConstructorUsedError;
  String? get specification => throw _privateConstructorUsedError;
  String? get brandPreference => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  double? get budgetPrice => throw _privateConstructorUsedError;
  double? get maxPrice => throw _privateConstructorUsedError;
  Map<String, dynamic>? get technicalRequirements =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateRFQLineItemRequestCopyWith<CreateRFQLineItemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRFQLineItemRequestCopyWith<$Res> {
  factory $CreateRFQLineItemRequestCopyWith(CreateRFQLineItemRequest value,
          $Res Function(CreateRFQLineItemRequest) then) =
      _$CreateRFQLineItemRequestCopyWithImpl<$Res, CreateRFQLineItemRequest>;
  @useResult
  $Res call(
      {String itemId,
      double quantity,
      String unit,
      DateTime requiredDate,
      int? sequence,
      String? specification,
      String? brandPreference,
      String? notes,
      double? budgetPrice,
      double? maxPrice,
      Map<String, dynamic>? technicalRequirements,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class _$CreateRFQLineItemRequestCopyWithImpl<$Res,
        $Val extends CreateRFQLineItemRequest>
    implements $CreateRFQLineItemRequestCopyWith<$Res> {
  _$CreateRFQLineItemRequestCopyWithImpl(this._value, this._then);

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
    Object? sequence = freezed,
    Object? specification = freezed,
    Object? brandPreference = freezed,
    Object? notes = freezed,
    Object? budgetPrice = freezed,
    Object? maxPrice = freezed,
    Object? technicalRequirements = freezed,
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
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      specification: freezed == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      brandPreference: freezed == brandPreference
          ? _value.brandPreference
          : brandPreference // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      budgetPrice: freezed == budgetPrice
          ? _value.budgetPrice
          : budgetPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      technicalRequirements: freezed == technicalRequirements
          ? _value.technicalRequirements
          : technicalRequirements // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateRFQLineItemRequestImplCopyWith<$Res>
    implements $CreateRFQLineItemRequestCopyWith<$Res> {
  factory _$$CreateRFQLineItemRequestImplCopyWith(
          _$CreateRFQLineItemRequestImpl value,
          $Res Function(_$CreateRFQLineItemRequestImpl) then) =
      __$$CreateRFQLineItemRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String itemId,
      double quantity,
      String unit,
      DateTime requiredDate,
      int? sequence,
      String? specification,
      String? brandPreference,
      String? notes,
      double? budgetPrice,
      double? maxPrice,
      Map<String, dynamic>? technicalRequirements,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class __$$CreateRFQLineItemRequestImplCopyWithImpl<$Res>
    extends _$CreateRFQLineItemRequestCopyWithImpl<$Res,
        _$CreateRFQLineItemRequestImpl>
    implements _$$CreateRFQLineItemRequestImplCopyWith<$Res> {
  __$$CreateRFQLineItemRequestImplCopyWithImpl(
      _$CreateRFQLineItemRequestImpl _value,
      $Res Function(_$CreateRFQLineItemRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? quantity = null,
    Object? unit = null,
    Object? requiredDate = null,
    Object? sequence = freezed,
    Object? specification = freezed,
    Object? brandPreference = freezed,
    Object? notes = freezed,
    Object? budgetPrice = freezed,
    Object? maxPrice = freezed,
    Object? technicalRequirements = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_$CreateRFQLineItemRequestImpl(
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
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      specification: freezed == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      brandPreference: freezed == brandPreference
          ? _value.brandPreference
          : brandPreference // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      budgetPrice: freezed == budgetPrice
          ? _value.budgetPrice
          : budgetPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      technicalRequirements: freezed == technicalRequirements
          ? _value._technicalRequirements
          : technicalRequirements // ignore: cast_nullable_to_non_nullable
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
class _$CreateRFQLineItemRequestImpl implements _CreateRFQLineItemRequest {
  const _$CreateRFQLineItemRequestImpl(
      {required this.itemId,
      required this.quantity,
      required this.unit,
      required this.requiredDate,
      this.sequence,
      this.specification,
      this.brandPreference,
      this.notes,
      this.budgetPrice,
      this.maxPrice,
      final Map<String, dynamic>? technicalRequirements,
      final Map<String, dynamic>? attributes})
      : _technicalRequirements = technicalRequirements,
        _attributes = attributes;

  factory _$CreateRFQLineItemRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateRFQLineItemRequestImplFromJson(json);

  @override
  final String itemId;
  @override
  final double quantity;
  @override
  final String unit;
  @override
  final DateTime requiredDate;
  @override
  final int? sequence;
  @override
  final String? specification;
  @override
  final String? brandPreference;
  @override
  final String? notes;
  @override
  final double? budgetPrice;
  @override
  final double? maxPrice;
  final Map<String, dynamic>? _technicalRequirements;
  @override
  Map<String, dynamic>? get technicalRequirements {
    final value = _technicalRequirements;
    if (value == null) return null;
    if (_technicalRequirements is EqualUnmodifiableMapView)
      return _technicalRequirements;
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
    return 'CreateRFQLineItemRequest(itemId: $itemId, quantity: $quantity, unit: $unit, requiredDate: $requiredDate, sequence: $sequence, specification: $specification, brandPreference: $brandPreference, notes: $notes, budgetPrice: $budgetPrice, maxPrice: $maxPrice, technicalRequirements: $technicalRequirements, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRFQLineItemRequestImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.requiredDate, requiredDate) ||
                other.requiredDate == requiredDate) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.specification, specification) ||
                other.specification == specification) &&
            (identical(other.brandPreference, brandPreference) ||
                other.brandPreference == brandPreference) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.budgetPrice, budgetPrice) ||
                other.budgetPrice == budgetPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            const DeepCollectionEquality()
                .equals(other._technicalRequirements, _technicalRequirements) &&
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
      sequence,
      specification,
      brandPreference,
      notes,
      budgetPrice,
      maxPrice,
      const DeepCollectionEquality().hash(_technicalRequirements),
      const DeepCollectionEquality().hash(_attributes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRFQLineItemRequestImplCopyWith<_$CreateRFQLineItemRequestImpl>
      get copyWith => __$$CreateRFQLineItemRequestImplCopyWithImpl<
          _$CreateRFQLineItemRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateRFQLineItemRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateRFQLineItemRequest implements CreateRFQLineItemRequest {
  const factory _CreateRFQLineItemRequest(
      {required final String itemId,
      required final double quantity,
      required final String unit,
      required final DateTime requiredDate,
      final int? sequence,
      final String? specification,
      final String? brandPreference,
      final String? notes,
      final double? budgetPrice,
      final double? maxPrice,
      final Map<String, dynamic>? technicalRequirements,
      final Map<String, dynamic>? attributes}) = _$CreateRFQLineItemRequestImpl;

  factory _CreateRFQLineItemRequest.fromJson(Map<String, dynamic> json) =
      _$CreateRFQLineItemRequestImpl.fromJson;

  @override
  String get itemId;
  @override
  double get quantity;
  @override
  String get unit;
  @override
  DateTime get requiredDate;
  @override
  int? get sequence;
  @override
  String? get specification;
  @override
  String? get brandPreference;
  @override
  String? get notes;
  @override
  double? get budgetPrice;
  @override
  double? get maxPrice;
  @override
  Map<String, dynamic>? get technicalRequirements;
  @override
  Map<String, dynamic>? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$CreateRFQLineItemRequestImplCopyWith<_$CreateRFQLineItemRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateRFQRequest _$UpdateRFQRequestFromJson(Map<String, dynamic> json) {
  return _UpdateRFQRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateRFQRequest {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get responseDeadline => throw _privateConstructorUsedError;
  String? get department => throw _privateConstructorUsedError;
  String? get project => throw _privateConstructorUsedError;
  String? get deliveryLocation => throw _privateConstructorUsedError;
  String? get paymentTerms => throw _privateConstructorUsedError;
  String? get evaluationCriteria => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get termsAndConditions => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateRFQRequestCopyWith<UpdateRFQRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateRFQRequestCopyWith<$Res> {
  factory $UpdateRFQRequestCopyWith(
          UpdateRFQRequest value, $Res Function(UpdateRFQRequest) then) =
      _$UpdateRFQRequestCopyWithImpl<$Res, UpdateRFQRequest>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      DateTime? responseDeadline,
      String? department,
      String? project,
      String? deliveryLocation,
      String? paymentTerms,
      String? evaluationCriteria,
      String? notes,
      String? termsAndConditions,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$UpdateRFQRequestCopyWithImpl<$Res, $Val extends UpdateRFQRequest>
    implements $UpdateRFQRequestCopyWith<$Res> {
  _$UpdateRFQRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? responseDeadline = freezed,
    Object? department = freezed,
    Object? project = freezed,
    Object? deliveryLocation = freezed,
    Object? paymentTerms = freezed,
    Object? evaluationCriteria = freezed,
    Object? notes = freezed,
    Object? termsAndConditions = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      responseDeadline: freezed == responseDeadline
          ? _value.responseDeadline
          : responseDeadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryLocation: freezed == deliveryLocation
          ? _value.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _value.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      evaluationCriteria: freezed == evaluationCriteria
          ? _value.evaluationCriteria
          : evaluationCriteria // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _value.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateRFQRequestImplCopyWith<$Res>
    implements $UpdateRFQRequestCopyWith<$Res> {
  factory _$$UpdateRFQRequestImplCopyWith(_$UpdateRFQRequestImpl value,
          $Res Function(_$UpdateRFQRequestImpl) then) =
      __$$UpdateRFQRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      DateTime? responseDeadline,
      String? department,
      String? project,
      String? deliveryLocation,
      String? paymentTerms,
      String? evaluationCriteria,
      String? notes,
      String? termsAndConditions,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$UpdateRFQRequestImplCopyWithImpl<$Res>
    extends _$UpdateRFQRequestCopyWithImpl<$Res, _$UpdateRFQRequestImpl>
    implements _$$UpdateRFQRequestImplCopyWith<$Res> {
  __$$UpdateRFQRequestImplCopyWithImpl(_$UpdateRFQRequestImpl _value,
      $Res Function(_$UpdateRFQRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? responseDeadline = freezed,
    Object? department = freezed,
    Object? project = freezed,
    Object? deliveryLocation = freezed,
    Object? paymentTerms = freezed,
    Object? evaluationCriteria = freezed,
    Object? notes = freezed,
    Object? termsAndConditions = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$UpdateRFQRequestImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      responseDeadline: freezed == responseDeadline
          ? _value.responseDeadline
          : responseDeadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryLocation: freezed == deliveryLocation
          ? _value.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _value.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      evaluationCriteria: freezed == evaluationCriteria
          ? _value.evaluationCriteria
          : evaluationCriteria // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _value.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
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
class _$UpdateRFQRequestImpl implements _UpdateRFQRequest {
  const _$UpdateRFQRequestImpl(
      {this.title,
      this.description,
      this.responseDeadline,
      this.department,
      this.project,
      this.deliveryLocation,
      this.paymentTerms,
      this.evaluationCriteria,
      this.notes,
      this.termsAndConditions,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$UpdateRFQRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateRFQRequestImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final DateTime? responseDeadline;
  @override
  final String? department;
  @override
  final String? project;
  @override
  final String? deliveryLocation;
  @override
  final String? paymentTerms;
  @override
  final String? evaluationCriteria;
  @override
  final String? notes;
  @override
  final String? termsAndConditions;
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
    return 'UpdateRFQRequest(title: $title, description: $description, responseDeadline: $responseDeadline, department: $department, project: $project, deliveryLocation: $deliveryLocation, paymentTerms: $paymentTerms, evaluationCriteria: $evaluationCriteria, notes: $notes, termsAndConditions: $termsAndConditions, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateRFQRequestImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.responseDeadline, responseDeadline) ||
                other.responseDeadline == responseDeadline) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.deliveryLocation, deliveryLocation) ||
                other.deliveryLocation == deliveryLocation) &&
            (identical(other.paymentTerms, paymentTerms) ||
                other.paymentTerms == paymentTerms) &&
            (identical(other.evaluationCriteria, evaluationCriteria) ||
                other.evaluationCriteria == evaluationCriteria) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.termsAndConditions, termsAndConditions) ||
                other.termsAndConditions == termsAndConditions) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      responseDeadline,
      department,
      project,
      deliveryLocation,
      paymentTerms,
      evaluationCriteria,
      notes,
      termsAndConditions,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateRFQRequestImplCopyWith<_$UpdateRFQRequestImpl> get copyWith =>
      __$$UpdateRFQRequestImplCopyWithImpl<_$UpdateRFQRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateRFQRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateRFQRequest implements UpdateRFQRequest {
  const factory _UpdateRFQRequest(
      {final String? title,
      final String? description,
      final DateTime? responseDeadline,
      final String? department,
      final String? project,
      final String? deliveryLocation,
      final String? paymentTerms,
      final String? evaluationCriteria,
      final String? notes,
      final String? termsAndConditions,
      final Map<String, dynamic>? metadata}) = _$UpdateRFQRequestImpl;

  factory _UpdateRFQRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateRFQRequestImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  DateTime? get responseDeadline;
  @override
  String? get department;
  @override
  String? get project;
  @override
  String? get deliveryLocation;
  @override
  String? get paymentTerms;
  @override
  String? get evaluationCriteria;
  @override
  String? get notes;
  @override
  String? get termsAndConditions;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$UpdateRFQRequestImplCopyWith<_$UpdateRFQRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RFQFilters _$RFQFiltersFromJson(Map<String, dynamic> json) {
  return _RFQFilters.fromJson(json);
}

/// @nodoc
mixin _$RFQFilters {
  String? get status => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  String? get department => throw _privateConstructorUsedError;
  String? get project => throw _privateConstructorUsedError;
  DateTime? get rfqDateAfter => throw _privateConstructorUsedError;
  DateTime? get rfqDateBefore => throw _privateConstructorUsedError;
  DateTime? get responseDeadlineAfter => throw _privateConstructorUsedError;
  DateTime? get responseDeadlineBefore => throw _privateConstructorUsedError;
  List<String>? get supplierIds => throw _privateConstructorUsedError;
  List<String>? get itemIds => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String? get sortBy => throw _privateConstructorUsedError;
  String? get sortOrder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RFQFiltersCopyWith<RFQFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RFQFiltersCopyWith<$Res> {
  factory $RFQFiltersCopyWith(
          RFQFilters value, $Res Function(RFQFilters) then) =
      _$RFQFiltersCopyWithImpl<$Res, RFQFilters>;
  @useResult
  $Res call(
      {String? status,
      String? createdBy,
      String? department,
      String? project,
      DateTime? rfqDateAfter,
      DateTime? rfqDateBefore,
      DateTime? responseDeadlineAfter,
      DateTime? responseDeadlineBefore,
      List<String>? supplierIds,
      List<String>? itemIds,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class _$RFQFiltersCopyWithImpl<$Res, $Val extends RFQFilters>
    implements $RFQFiltersCopyWith<$Res> {
  _$RFQFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? createdBy = freezed,
    Object? department = freezed,
    Object? project = freezed,
    Object? rfqDateAfter = freezed,
    Object? rfqDateBefore = freezed,
    Object? responseDeadlineAfter = freezed,
    Object? responseDeadlineBefore = freezed,
    Object? supplierIds = freezed,
    Object? itemIds = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      rfqDateAfter: freezed == rfqDateAfter
          ? _value.rfqDateAfter
          : rfqDateAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rfqDateBefore: freezed == rfqDateBefore
          ? _value.rfqDateBefore
          : rfqDateBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      responseDeadlineAfter: freezed == responseDeadlineAfter
          ? _value.responseDeadlineAfter
          : responseDeadlineAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      responseDeadlineBefore: freezed == responseDeadlineBefore
          ? _value.responseDeadlineBefore
          : responseDeadlineBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      supplierIds: freezed == supplierIds
          ? _value.supplierIds
          : supplierIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
abstract class _$$RFQFiltersImplCopyWith<$Res>
    implements $RFQFiltersCopyWith<$Res> {
  factory _$$RFQFiltersImplCopyWith(
          _$RFQFiltersImpl value, $Res Function(_$RFQFiltersImpl) then) =
      __$$RFQFiltersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status,
      String? createdBy,
      String? department,
      String? project,
      DateTime? rfqDateAfter,
      DateTime? rfqDateBefore,
      DateTime? responseDeadlineAfter,
      DateTime? responseDeadlineBefore,
      List<String>? supplierIds,
      List<String>? itemIds,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class __$$RFQFiltersImplCopyWithImpl<$Res>
    extends _$RFQFiltersCopyWithImpl<$Res, _$RFQFiltersImpl>
    implements _$$RFQFiltersImplCopyWith<$Res> {
  __$$RFQFiltersImplCopyWithImpl(
      _$RFQFiltersImpl _value, $Res Function(_$RFQFiltersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? createdBy = freezed,
    Object? department = freezed,
    Object? project = freezed,
    Object? rfqDateAfter = freezed,
    Object? rfqDateBefore = freezed,
    Object? responseDeadlineAfter = freezed,
    Object? responseDeadlineBefore = freezed,
    Object? supplierIds = freezed,
    Object? itemIds = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_$RFQFiltersImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      rfqDateAfter: freezed == rfqDateAfter
          ? _value.rfqDateAfter
          : rfqDateAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rfqDateBefore: freezed == rfqDateBefore
          ? _value.rfqDateBefore
          : rfqDateBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      responseDeadlineAfter: freezed == responseDeadlineAfter
          ? _value.responseDeadlineAfter
          : responseDeadlineAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      responseDeadlineBefore: freezed == responseDeadlineBefore
          ? _value.responseDeadlineBefore
          : responseDeadlineBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      supplierIds: freezed == supplierIds
          ? _value._supplierIds
          : supplierIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
class _$RFQFiltersImpl extends _RFQFilters {
  const _$RFQFiltersImpl(
      {this.status,
      this.createdBy,
      this.department,
      this.project,
      this.rfqDateAfter,
      this.rfqDateBefore,
      this.responseDeadlineAfter,
      this.responseDeadlineBefore,
      final List<String>? supplierIds,
      final List<String>? itemIds,
      this.page,
      this.limit,
      this.sortBy,
      this.sortOrder})
      : _supplierIds = supplierIds,
        _itemIds = itemIds,
        super._();

  factory _$RFQFiltersImpl.fromJson(Map<String, dynamic> json) =>
      _$$RFQFiltersImplFromJson(json);

  @override
  final String? status;
  @override
  final String? createdBy;
  @override
  final String? department;
  @override
  final String? project;
  @override
  final DateTime? rfqDateAfter;
  @override
  final DateTime? rfqDateBefore;
  @override
  final DateTime? responseDeadlineAfter;
  @override
  final DateTime? responseDeadlineBefore;
  final List<String>? _supplierIds;
  @override
  List<String>? get supplierIds {
    final value = _supplierIds;
    if (value == null) return null;
    if (_supplierIds is EqualUnmodifiableListView) return _supplierIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
    return 'RFQFilters(status: $status, createdBy: $createdBy, department: $department, project: $project, rfqDateAfter: $rfqDateAfter, rfqDateBefore: $rfqDateBefore, responseDeadlineAfter: $responseDeadlineAfter, responseDeadlineBefore: $responseDeadlineBefore, supplierIds: $supplierIds, itemIds: $itemIds, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RFQFiltersImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.rfqDateAfter, rfqDateAfter) ||
                other.rfqDateAfter == rfqDateAfter) &&
            (identical(other.rfqDateBefore, rfqDateBefore) ||
                other.rfqDateBefore == rfqDateBefore) &&
            (identical(other.responseDeadlineAfter, responseDeadlineAfter) ||
                other.responseDeadlineAfter == responseDeadlineAfter) &&
            (identical(other.responseDeadlineBefore, responseDeadlineBefore) ||
                other.responseDeadlineBefore == responseDeadlineBefore) &&
            const DeepCollectionEquality()
                .equals(other._supplierIds, _supplierIds) &&
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
      status,
      createdBy,
      department,
      project,
      rfqDateAfter,
      rfqDateBefore,
      responseDeadlineAfter,
      responseDeadlineBefore,
      const DeepCollectionEquality().hash(_supplierIds),
      const DeepCollectionEquality().hash(_itemIds),
      page,
      limit,
      sortBy,
      sortOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RFQFiltersImplCopyWith<_$RFQFiltersImpl> get copyWith =>
      __$$RFQFiltersImplCopyWithImpl<_$RFQFiltersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RFQFiltersImplToJson(
      this,
    );
  }
}

abstract class _RFQFilters extends RFQFilters {
  const factory _RFQFilters(
      {final String? status,
      final String? createdBy,
      final String? department,
      final String? project,
      final DateTime? rfqDateAfter,
      final DateTime? rfqDateBefore,
      final DateTime? responseDeadlineAfter,
      final DateTime? responseDeadlineBefore,
      final List<String>? supplierIds,
      final List<String>? itemIds,
      final int? page,
      final int? limit,
      final String? sortBy,
      final String? sortOrder}) = _$RFQFiltersImpl;
  const _RFQFilters._() : super._();

  factory _RFQFilters.fromJson(Map<String, dynamic> json) =
      _$RFQFiltersImpl.fromJson;

  @override
  String? get status;
  @override
  String? get createdBy;
  @override
  String? get department;
  @override
  String? get project;
  @override
  DateTime? get rfqDateAfter;
  @override
  DateTime? get rfqDateBefore;
  @override
  DateTime? get responseDeadlineAfter;
  @override
  DateTime? get responseDeadlineBefore;
  @override
  List<String>? get supplierIds;
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
  _$$RFQFiltersImplCopyWith<_$RFQFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddRFQSupplierRequest _$AddRFQSupplierRequestFromJson(
    Map<String, dynamic> json) {
  return _AddRFQSupplierRequest.fromJson(json);
}

/// @nodoc
mixin _$AddRFQSupplierRequest {
  String get supplierId => throw _privateConstructorUsedError;
  String? get contactPerson => throw _privateConstructorUsedError;
  String? get contactEmail => throw _privateConstructorUsedError;
  String? get contactPhone => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddRFQSupplierRequestCopyWith<AddRFQSupplierRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddRFQSupplierRequestCopyWith<$Res> {
  factory $AddRFQSupplierRequestCopyWith(AddRFQSupplierRequest value,
          $Res Function(AddRFQSupplierRequest) then) =
      _$AddRFQSupplierRequestCopyWithImpl<$Res, AddRFQSupplierRequest>;
  @useResult
  $Res call(
      {String supplierId,
      String? contactPerson,
      String? contactEmail,
      String? contactPhone,
      String? notes});
}

/// @nodoc
class _$AddRFQSupplierRequestCopyWithImpl<$Res,
        $Val extends AddRFQSupplierRequest>
    implements $AddRFQSupplierRequestCopyWith<$Res> {
  _$AddRFQSupplierRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supplierId = null,
    Object? contactPerson = freezed,
    Object? contactEmail = freezed,
    Object? contactPhone = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      supplierId: null == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      contactPerson: freezed == contactPerson
          ? _value.contactPerson
          : contactPerson // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddRFQSupplierRequestImplCopyWith<$Res>
    implements $AddRFQSupplierRequestCopyWith<$Res> {
  factory _$$AddRFQSupplierRequestImplCopyWith(
          _$AddRFQSupplierRequestImpl value,
          $Res Function(_$AddRFQSupplierRequestImpl) then) =
      __$$AddRFQSupplierRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String supplierId,
      String? contactPerson,
      String? contactEmail,
      String? contactPhone,
      String? notes});
}

/// @nodoc
class __$$AddRFQSupplierRequestImplCopyWithImpl<$Res>
    extends _$AddRFQSupplierRequestCopyWithImpl<$Res,
        _$AddRFQSupplierRequestImpl>
    implements _$$AddRFQSupplierRequestImplCopyWith<$Res> {
  __$$AddRFQSupplierRequestImplCopyWithImpl(_$AddRFQSupplierRequestImpl _value,
      $Res Function(_$AddRFQSupplierRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supplierId = null,
    Object? contactPerson = freezed,
    Object? contactEmail = freezed,
    Object? contactPhone = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$AddRFQSupplierRequestImpl(
      supplierId: null == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      contactPerson: freezed == contactPerson
          ? _value.contactPerson
          : contactPerson // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
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
class _$AddRFQSupplierRequestImpl implements _AddRFQSupplierRequest {
  const _$AddRFQSupplierRequestImpl(
      {required this.supplierId,
      this.contactPerson,
      this.contactEmail,
      this.contactPhone,
      this.notes});

  factory _$AddRFQSupplierRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddRFQSupplierRequestImplFromJson(json);

  @override
  final String supplierId;
  @override
  final String? contactPerson;
  @override
  final String? contactEmail;
  @override
  final String? contactPhone;
  @override
  final String? notes;

  @override
  String toString() {
    return 'AddRFQSupplierRequest(supplierId: $supplierId, contactPerson: $contactPerson, contactEmail: $contactEmail, contactPhone: $contactPhone, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddRFQSupplierRequestImpl &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.contactPerson, contactPerson) ||
                other.contactPerson == contactPerson) &&
            (identical(other.contactEmail, contactEmail) ||
                other.contactEmail == contactEmail) &&
            (identical(other.contactPhone, contactPhone) ||
                other.contactPhone == contactPhone) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, supplierId, contactPerson,
      contactEmail, contactPhone, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddRFQSupplierRequestImplCopyWith<_$AddRFQSupplierRequestImpl>
      get copyWith => __$$AddRFQSupplierRequestImplCopyWithImpl<
          _$AddRFQSupplierRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddRFQSupplierRequestImplToJson(
      this,
    );
  }
}

abstract class _AddRFQSupplierRequest implements AddRFQSupplierRequest {
  const factory _AddRFQSupplierRequest(
      {required final String supplierId,
      final String? contactPerson,
      final String? contactEmail,
      final String? contactPhone,
      final String? notes}) = _$AddRFQSupplierRequestImpl;

  factory _AddRFQSupplierRequest.fromJson(Map<String, dynamic> json) =
      _$AddRFQSupplierRequestImpl.fromJson;

  @override
  String get supplierId;
  @override
  String? get contactPerson;
  @override
  String? get contactEmail;
  @override
  String? get contactPhone;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$AddRFQSupplierRequestImplCopyWith<_$AddRFQSupplierRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
