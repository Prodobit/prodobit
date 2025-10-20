// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'eco_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Eco _$EcoFromJson(Map<String, dynamic> json) {
  return _Eco.fromJson(json);
}

/// @nodoc
mixin _$Eco {
  String get id => throw _privateConstructorUsedError;
  String get ecoNumber => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get type =>
      throw _privateConstructorUsedError; // 'bom_change', 'item_change', 'process_change', 'routing_change'
  String get priority =>
      throw _privateConstructorUsedError; // 'low', 'medium', 'high', 'critical'
  String get status =>
      throw _privateConstructorUsedError; // 'draft', 'pending_review', 'approved', 'rejected', 'implemented', 'cancelled'
  String get reason => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String? get requestedBy => throw _privateConstructorUsedError;
  String? get reviewedBy => throw _privateConstructorUsedError;
  String? get approvedBy => throw _privateConstructorUsedError;
  String? get implementedBy => throw _privateConstructorUsedError;
  DateTime? get targetImplementationDate => throw _privateConstructorUsedError;
  DateTime? get actualImplementationDate => throw _privateConstructorUsedError;
  DateTime? get approvedAt => throw _privateConstructorUsedError;
  DateTime? get rejectedAt => throw _privateConstructorUsedError;
  DateTime? get implementedAt => throw _privateConstructorUsedError;
  String? get rejectionReason => throw _privateConstructorUsedError;
  String? get implementationNotes => throw _privateConstructorUsedError;
  double? get estimatedCost => throw _privateConstructorUsedError;
  double? get actualCost => throw _privateConstructorUsedError;
  int? get estimatedHours => throw _privateConstructorUsedError;
  int? get actualHours => throw _privateConstructorUsedError;
  List<String>? get affectedBomIds => throw _privateConstructorUsedError;
  List<String>? get affectedItemIds => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EcoCopyWith<Eco> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EcoCopyWith<$Res> {
  factory $EcoCopyWith(Eco value, $Res Function(Eco) then) =
      _$EcoCopyWithImpl<$Res, Eco>;
  @useResult
  $Res call(
      {String id,
      String ecoNumber,
      String title,
      String description,
      String type,
      String priority,
      String status,
      String reason,
      DateTime createdAt,
      DateTime updatedAt,
      String? requestedBy,
      String? reviewedBy,
      String? approvedBy,
      String? implementedBy,
      DateTime? targetImplementationDate,
      DateTime? actualImplementationDate,
      DateTime? approvedAt,
      DateTime? rejectedAt,
      DateTime? implementedAt,
      String? rejectionReason,
      String? implementationNotes,
      double? estimatedCost,
      double? actualCost,
      int? estimatedHours,
      int? actualHours,
      List<String>? affectedBomIds,
      List<String>? affectedItemIds,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$EcoCopyWithImpl<$Res, $Val extends Eco> implements $EcoCopyWith<$Res> {
  _$EcoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ecoNumber = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? priority = null,
    Object? status = null,
    Object? reason = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? requestedBy = freezed,
    Object? reviewedBy = freezed,
    Object? approvedBy = freezed,
    Object? implementedBy = freezed,
    Object? targetImplementationDate = freezed,
    Object? actualImplementationDate = freezed,
    Object? approvedAt = freezed,
    Object? rejectedAt = freezed,
    Object? implementedAt = freezed,
    Object? rejectionReason = freezed,
    Object? implementationNotes = freezed,
    Object? estimatedCost = freezed,
    Object? actualCost = freezed,
    Object? estimatedHours = freezed,
    Object? actualHours = freezed,
    Object? affectedBomIds = freezed,
    Object? affectedItemIds = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ecoNumber: null == ecoNumber
          ? _value.ecoNumber
          : ecoNumber // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requestedBy: freezed == requestedBy
          ? _value.requestedBy
          : requestedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewedBy: freezed == reviewedBy
          ? _value.reviewedBy
          : reviewedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      implementedBy: freezed == implementedBy
          ? _value.implementedBy
          : implementedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      targetImplementationDate: freezed == targetImplementationDate
          ? _value.targetImplementationDate
          : targetImplementationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualImplementationDate: freezed == actualImplementationDate
          ? _value.actualImplementationDate
          : actualImplementationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _value.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      implementedAt: freezed == implementedAt
          ? _value.implementedAt
          : implementedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      implementationNotes: freezed == implementationNotes
          ? _value.implementationNotes
          : implementationNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      estimatedCost: freezed == estimatedCost
          ? _value.estimatedCost
          : estimatedCost // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      estimatedHours: freezed == estimatedHours
          ? _value.estimatedHours
          : estimatedHours // ignore: cast_nullable_to_non_nullable
              as int?,
      actualHours: freezed == actualHours
          ? _value.actualHours
          : actualHours // ignore: cast_nullable_to_non_nullable
              as int?,
      affectedBomIds: freezed == affectedBomIds
          ? _value.affectedBomIds
          : affectedBomIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      affectedItemIds: freezed == affectedItemIds
          ? _value.affectedItemIds
          : affectedItemIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EcoImplCopyWith<$Res> implements $EcoCopyWith<$Res> {
  factory _$$EcoImplCopyWith(_$EcoImpl value, $Res Function(_$EcoImpl) then) =
      __$$EcoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String ecoNumber,
      String title,
      String description,
      String type,
      String priority,
      String status,
      String reason,
      DateTime createdAt,
      DateTime updatedAt,
      String? requestedBy,
      String? reviewedBy,
      String? approvedBy,
      String? implementedBy,
      DateTime? targetImplementationDate,
      DateTime? actualImplementationDate,
      DateTime? approvedAt,
      DateTime? rejectedAt,
      DateTime? implementedAt,
      String? rejectionReason,
      String? implementationNotes,
      double? estimatedCost,
      double? actualCost,
      int? estimatedHours,
      int? actualHours,
      List<String>? affectedBomIds,
      List<String>? affectedItemIds,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$EcoImplCopyWithImpl<$Res> extends _$EcoCopyWithImpl<$Res, _$EcoImpl>
    implements _$$EcoImplCopyWith<$Res> {
  __$$EcoImplCopyWithImpl(_$EcoImpl _value, $Res Function(_$EcoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ecoNumber = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? priority = null,
    Object? status = null,
    Object? reason = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? requestedBy = freezed,
    Object? reviewedBy = freezed,
    Object? approvedBy = freezed,
    Object? implementedBy = freezed,
    Object? targetImplementationDate = freezed,
    Object? actualImplementationDate = freezed,
    Object? approvedAt = freezed,
    Object? rejectedAt = freezed,
    Object? implementedAt = freezed,
    Object? rejectionReason = freezed,
    Object? implementationNotes = freezed,
    Object? estimatedCost = freezed,
    Object? actualCost = freezed,
    Object? estimatedHours = freezed,
    Object? actualHours = freezed,
    Object? affectedBomIds = freezed,
    Object? affectedItemIds = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$EcoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ecoNumber: null == ecoNumber
          ? _value.ecoNumber
          : ecoNumber // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requestedBy: freezed == requestedBy
          ? _value.requestedBy
          : requestedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewedBy: freezed == reviewedBy
          ? _value.reviewedBy
          : reviewedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      implementedBy: freezed == implementedBy
          ? _value.implementedBy
          : implementedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      targetImplementationDate: freezed == targetImplementationDate
          ? _value.targetImplementationDate
          : targetImplementationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualImplementationDate: freezed == actualImplementationDate
          ? _value.actualImplementationDate
          : actualImplementationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _value.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      implementedAt: freezed == implementedAt
          ? _value.implementedAt
          : implementedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      implementationNotes: freezed == implementationNotes
          ? _value.implementationNotes
          : implementationNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      estimatedCost: freezed == estimatedCost
          ? _value.estimatedCost
          : estimatedCost // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      estimatedHours: freezed == estimatedHours
          ? _value.estimatedHours
          : estimatedHours // ignore: cast_nullable_to_non_nullable
              as int?,
      actualHours: freezed == actualHours
          ? _value.actualHours
          : actualHours // ignore: cast_nullable_to_non_nullable
              as int?,
      affectedBomIds: freezed == affectedBomIds
          ? _value._affectedBomIds
          : affectedBomIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      affectedItemIds: freezed == affectedItemIds
          ? _value._affectedItemIds
          : affectedItemIds // ignore: cast_nullable_to_non_nullable
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
class _$EcoImpl implements _Eco {
  const _$EcoImpl(
      {required this.id,
      required this.ecoNumber,
      required this.title,
      required this.description,
      required this.type,
      required this.priority,
      required this.status,
      required this.reason,
      required this.createdAt,
      required this.updatedAt,
      this.requestedBy,
      this.reviewedBy,
      this.approvedBy,
      this.implementedBy,
      this.targetImplementationDate,
      this.actualImplementationDate,
      this.approvedAt,
      this.rejectedAt,
      this.implementedAt,
      this.rejectionReason,
      this.implementationNotes,
      this.estimatedCost,
      this.actualCost,
      this.estimatedHours,
      this.actualHours,
      final List<String>? affectedBomIds,
      final List<String>? affectedItemIds,
      final Map<String, dynamic>? metadata})
      : _affectedBomIds = affectedBomIds,
        _affectedItemIds = affectedItemIds,
        _metadata = metadata;

  factory _$EcoImpl.fromJson(Map<String, dynamic> json) =>
      _$$EcoImplFromJson(json);

  @override
  final String id;
  @override
  final String ecoNumber;
  @override
  final String title;
  @override
  final String description;
  @override
  final String type;
// 'bom_change', 'item_change', 'process_change', 'routing_change'
  @override
  final String priority;
// 'low', 'medium', 'high', 'critical'
  @override
  final String status;
// 'draft', 'pending_review', 'approved', 'rejected', 'implemented', 'cancelled'
  @override
  final String reason;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String? requestedBy;
  @override
  final String? reviewedBy;
  @override
  final String? approvedBy;
  @override
  final String? implementedBy;
  @override
  final DateTime? targetImplementationDate;
  @override
  final DateTime? actualImplementationDate;
  @override
  final DateTime? approvedAt;
  @override
  final DateTime? rejectedAt;
  @override
  final DateTime? implementedAt;
  @override
  final String? rejectionReason;
  @override
  final String? implementationNotes;
  @override
  final double? estimatedCost;
  @override
  final double? actualCost;
  @override
  final int? estimatedHours;
  @override
  final int? actualHours;
  final List<String>? _affectedBomIds;
  @override
  List<String>? get affectedBomIds {
    final value = _affectedBomIds;
    if (value == null) return null;
    if (_affectedBomIds is EqualUnmodifiableListView) return _affectedBomIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _affectedItemIds;
  @override
  List<String>? get affectedItemIds {
    final value = _affectedItemIds;
    if (value == null) return null;
    if (_affectedItemIds is EqualUnmodifiableListView) return _affectedItemIds;
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
    return 'Eco(id: $id, ecoNumber: $ecoNumber, title: $title, description: $description, type: $type, priority: $priority, status: $status, reason: $reason, createdAt: $createdAt, updatedAt: $updatedAt, requestedBy: $requestedBy, reviewedBy: $reviewedBy, approvedBy: $approvedBy, implementedBy: $implementedBy, targetImplementationDate: $targetImplementationDate, actualImplementationDate: $actualImplementationDate, approvedAt: $approvedAt, rejectedAt: $rejectedAt, implementedAt: $implementedAt, rejectionReason: $rejectionReason, implementationNotes: $implementationNotes, estimatedCost: $estimatedCost, actualCost: $actualCost, estimatedHours: $estimatedHours, actualHours: $actualHours, affectedBomIds: $affectedBomIds, affectedItemIds: $affectedItemIds, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EcoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ecoNumber, ecoNumber) ||
                other.ecoNumber == ecoNumber) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.requestedBy, requestedBy) ||
                other.requestedBy == requestedBy) &&
            (identical(other.reviewedBy, reviewedBy) ||
                other.reviewedBy == reviewedBy) &&
            (identical(other.approvedBy, approvedBy) ||
                other.approvedBy == approvedBy) &&
            (identical(other.implementedBy, implementedBy) ||
                other.implementedBy == implementedBy) &&
            (identical(
                    other.targetImplementationDate, targetImplementationDate) ||
                other.targetImplementationDate == targetImplementationDate) &&
            (identical(
                    other.actualImplementationDate, actualImplementationDate) ||
                other.actualImplementationDate == actualImplementationDate) &&
            (identical(other.approvedAt, approvedAt) ||
                other.approvedAt == approvedAt) &&
            (identical(other.rejectedAt, rejectedAt) ||
                other.rejectedAt == rejectedAt) &&
            (identical(other.implementedAt, implementedAt) ||
                other.implementedAt == implementedAt) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            (identical(other.implementationNotes, implementationNotes) ||
                other.implementationNotes == implementationNotes) &&
            (identical(other.estimatedCost, estimatedCost) ||
                other.estimatedCost == estimatedCost) &&
            (identical(other.actualCost, actualCost) ||
                other.actualCost == actualCost) &&
            (identical(other.estimatedHours, estimatedHours) ||
                other.estimatedHours == estimatedHours) &&
            (identical(other.actualHours, actualHours) ||
                other.actualHours == actualHours) &&
            const DeepCollectionEquality()
                .equals(other._affectedBomIds, _affectedBomIds) &&
            const DeepCollectionEquality()
                .equals(other._affectedItemIds, _affectedItemIds) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        ecoNumber,
        title,
        description,
        type,
        priority,
        status,
        reason,
        createdAt,
        updatedAt,
        requestedBy,
        reviewedBy,
        approvedBy,
        implementedBy,
        targetImplementationDate,
        actualImplementationDate,
        approvedAt,
        rejectedAt,
        implementedAt,
        rejectionReason,
        implementationNotes,
        estimatedCost,
        actualCost,
        estimatedHours,
        actualHours,
        const DeepCollectionEquality().hash(_affectedBomIds),
        const DeepCollectionEquality().hash(_affectedItemIds),
        const DeepCollectionEquality().hash(_metadata)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EcoImplCopyWith<_$EcoImpl> get copyWith =>
      __$$EcoImplCopyWithImpl<_$EcoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EcoImplToJson(
      this,
    );
  }
}

abstract class _Eco implements Eco {
  const factory _Eco(
      {required final String id,
      required final String ecoNumber,
      required final String title,
      required final String description,
      required final String type,
      required final String priority,
      required final String status,
      required final String reason,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final String? requestedBy,
      final String? reviewedBy,
      final String? approvedBy,
      final String? implementedBy,
      final DateTime? targetImplementationDate,
      final DateTime? actualImplementationDate,
      final DateTime? approvedAt,
      final DateTime? rejectedAt,
      final DateTime? implementedAt,
      final String? rejectionReason,
      final String? implementationNotes,
      final double? estimatedCost,
      final double? actualCost,
      final int? estimatedHours,
      final int? actualHours,
      final List<String>? affectedBomIds,
      final List<String>? affectedItemIds,
      final Map<String, dynamic>? metadata}) = _$EcoImpl;

  factory _Eco.fromJson(Map<String, dynamic> json) = _$EcoImpl.fromJson;

  @override
  String get id;
  @override
  String get ecoNumber;
  @override
  String get title;
  @override
  String get description;
  @override
  String get type;
  @override // 'bom_change', 'item_change', 'process_change', 'routing_change'
  String get priority;
  @override // 'low', 'medium', 'high', 'critical'
  String get status;
  @override // 'draft', 'pending_review', 'approved', 'rejected', 'implemented', 'cancelled'
  String get reason;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String? get requestedBy;
  @override
  String? get reviewedBy;
  @override
  String? get approvedBy;
  @override
  String? get implementedBy;
  @override
  DateTime? get targetImplementationDate;
  @override
  DateTime? get actualImplementationDate;
  @override
  DateTime? get approvedAt;
  @override
  DateTime? get rejectedAt;
  @override
  DateTime? get implementedAt;
  @override
  String? get rejectionReason;
  @override
  String? get implementationNotes;
  @override
  double? get estimatedCost;
  @override
  double? get actualCost;
  @override
  int? get estimatedHours;
  @override
  int? get actualHours;
  @override
  List<String>? get affectedBomIds;
  @override
  List<String>? get affectedItemIds;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$EcoImplCopyWith<_$EcoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateEcoRequest _$CreateEcoRequestFromJson(Map<String, dynamic> json) {
  return _CreateEcoRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateEcoRequest {
  String get ecoNumber => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get priority => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  DateTime? get targetImplementationDate => throw _privateConstructorUsedError;
  double? get estimatedCost => throw _privateConstructorUsedError;
  int? get estimatedHours => throw _privateConstructorUsedError;
  List<String>? get affectedBomIds => throw _privateConstructorUsedError;
  List<String>? get affectedItemIds => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateEcoRequestCopyWith<CreateEcoRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateEcoRequestCopyWith<$Res> {
  factory $CreateEcoRequestCopyWith(
          CreateEcoRequest value, $Res Function(CreateEcoRequest) then) =
      _$CreateEcoRequestCopyWithImpl<$Res, CreateEcoRequest>;
  @useResult
  $Res call(
      {String ecoNumber,
      String title,
      String description,
      String type,
      String priority,
      String reason,
      DateTime? targetImplementationDate,
      double? estimatedCost,
      int? estimatedHours,
      List<String>? affectedBomIds,
      List<String>? affectedItemIds,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$CreateEcoRequestCopyWithImpl<$Res, $Val extends CreateEcoRequest>
    implements $CreateEcoRequestCopyWith<$Res> {
  _$CreateEcoRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ecoNumber = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? priority = null,
    Object? reason = null,
    Object? targetImplementationDate = freezed,
    Object? estimatedCost = freezed,
    Object? estimatedHours = freezed,
    Object? affectedBomIds = freezed,
    Object? affectedItemIds = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      ecoNumber: null == ecoNumber
          ? _value.ecoNumber
          : ecoNumber // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      targetImplementationDate: freezed == targetImplementationDate
          ? _value.targetImplementationDate
          : targetImplementationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estimatedCost: freezed == estimatedCost
          ? _value.estimatedCost
          : estimatedCost // ignore: cast_nullable_to_non_nullable
              as double?,
      estimatedHours: freezed == estimatedHours
          ? _value.estimatedHours
          : estimatedHours // ignore: cast_nullable_to_non_nullable
              as int?,
      affectedBomIds: freezed == affectedBomIds
          ? _value.affectedBomIds
          : affectedBomIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      affectedItemIds: freezed == affectedItemIds
          ? _value.affectedItemIds
          : affectedItemIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateEcoRequestImplCopyWith<$Res>
    implements $CreateEcoRequestCopyWith<$Res> {
  factory _$$CreateEcoRequestImplCopyWith(_$CreateEcoRequestImpl value,
          $Res Function(_$CreateEcoRequestImpl) then) =
      __$$CreateEcoRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String ecoNumber,
      String title,
      String description,
      String type,
      String priority,
      String reason,
      DateTime? targetImplementationDate,
      double? estimatedCost,
      int? estimatedHours,
      List<String>? affectedBomIds,
      List<String>? affectedItemIds,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$CreateEcoRequestImplCopyWithImpl<$Res>
    extends _$CreateEcoRequestCopyWithImpl<$Res, _$CreateEcoRequestImpl>
    implements _$$CreateEcoRequestImplCopyWith<$Res> {
  __$$CreateEcoRequestImplCopyWithImpl(_$CreateEcoRequestImpl _value,
      $Res Function(_$CreateEcoRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ecoNumber = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? priority = null,
    Object? reason = null,
    Object? targetImplementationDate = freezed,
    Object? estimatedCost = freezed,
    Object? estimatedHours = freezed,
    Object? affectedBomIds = freezed,
    Object? affectedItemIds = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$CreateEcoRequestImpl(
      ecoNumber: null == ecoNumber
          ? _value.ecoNumber
          : ecoNumber // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      targetImplementationDate: freezed == targetImplementationDate
          ? _value.targetImplementationDate
          : targetImplementationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estimatedCost: freezed == estimatedCost
          ? _value.estimatedCost
          : estimatedCost // ignore: cast_nullable_to_non_nullable
              as double?,
      estimatedHours: freezed == estimatedHours
          ? _value.estimatedHours
          : estimatedHours // ignore: cast_nullable_to_non_nullable
              as int?,
      affectedBomIds: freezed == affectedBomIds
          ? _value._affectedBomIds
          : affectedBomIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      affectedItemIds: freezed == affectedItemIds
          ? _value._affectedItemIds
          : affectedItemIds // ignore: cast_nullable_to_non_nullable
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
class _$CreateEcoRequestImpl implements _CreateEcoRequest {
  const _$CreateEcoRequestImpl(
      {required this.ecoNumber,
      required this.title,
      required this.description,
      required this.type,
      required this.priority,
      required this.reason,
      this.targetImplementationDate,
      this.estimatedCost,
      this.estimatedHours,
      final List<String>? affectedBomIds,
      final List<String>? affectedItemIds,
      final Map<String, dynamic>? metadata})
      : _affectedBomIds = affectedBomIds,
        _affectedItemIds = affectedItemIds,
        _metadata = metadata;

  factory _$CreateEcoRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateEcoRequestImplFromJson(json);

  @override
  final String ecoNumber;
  @override
  final String title;
  @override
  final String description;
  @override
  final String type;
  @override
  final String priority;
  @override
  final String reason;
  @override
  final DateTime? targetImplementationDate;
  @override
  final double? estimatedCost;
  @override
  final int? estimatedHours;
  final List<String>? _affectedBomIds;
  @override
  List<String>? get affectedBomIds {
    final value = _affectedBomIds;
    if (value == null) return null;
    if (_affectedBomIds is EqualUnmodifiableListView) return _affectedBomIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _affectedItemIds;
  @override
  List<String>? get affectedItemIds {
    final value = _affectedItemIds;
    if (value == null) return null;
    if (_affectedItemIds is EqualUnmodifiableListView) return _affectedItemIds;
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
    return 'CreateEcoRequest(ecoNumber: $ecoNumber, title: $title, description: $description, type: $type, priority: $priority, reason: $reason, targetImplementationDate: $targetImplementationDate, estimatedCost: $estimatedCost, estimatedHours: $estimatedHours, affectedBomIds: $affectedBomIds, affectedItemIds: $affectedItemIds, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateEcoRequestImpl &&
            (identical(other.ecoNumber, ecoNumber) ||
                other.ecoNumber == ecoNumber) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(
                    other.targetImplementationDate, targetImplementationDate) ||
                other.targetImplementationDate == targetImplementationDate) &&
            (identical(other.estimatedCost, estimatedCost) ||
                other.estimatedCost == estimatedCost) &&
            (identical(other.estimatedHours, estimatedHours) ||
                other.estimatedHours == estimatedHours) &&
            const DeepCollectionEquality()
                .equals(other._affectedBomIds, _affectedBomIds) &&
            const DeepCollectionEquality()
                .equals(other._affectedItemIds, _affectedItemIds) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      ecoNumber,
      title,
      description,
      type,
      priority,
      reason,
      targetImplementationDate,
      estimatedCost,
      estimatedHours,
      const DeepCollectionEquality().hash(_affectedBomIds),
      const DeepCollectionEquality().hash(_affectedItemIds),
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateEcoRequestImplCopyWith<_$CreateEcoRequestImpl> get copyWith =>
      __$$CreateEcoRequestImplCopyWithImpl<_$CreateEcoRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateEcoRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateEcoRequest implements CreateEcoRequest {
  const factory _CreateEcoRequest(
      {required final String ecoNumber,
      required final String title,
      required final String description,
      required final String type,
      required final String priority,
      required final String reason,
      final DateTime? targetImplementationDate,
      final double? estimatedCost,
      final int? estimatedHours,
      final List<String>? affectedBomIds,
      final List<String>? affectedItemIds,
      final Map<String, dynamic>? metadata}) = _$CreateEcoRequestImpl;

  factory _CreateEcoRequest.fromJson(Map<String, dynamic> json) =
      _$CreateEcoRequestImpl.fromJson;

  @override
  String get ecoNumber;
  @override
  String get title;
  @override
  String get description;
  @override
  String get type;
  @override
  String get priority;
  @override
  String get reason;
  @override
  DateTime? get targetImplementationDate;
  @override
  double? get estimatedCost;
  @override
  int? get estimatedHours;
  @override
  List<String>? get affectedBomIds;
  @override
  List<String>? get affectedItemIds;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$CreateEcoRequestImplCopyWith<_$CreateEcoRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateEcoRequest _$UpdateEcoRequestFromJson(Map<String, dynamic> json) {
  return _UpdateEcoRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateEcoRequest {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get priority => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  DateTime? get targetImplementationDate => throw _privateConstructorUsedError;
  double? get estimatedCost => throw _privateConstructorUsedError;
  int? get estimatedHours => throw _privateConstructorUsedError;
  List<String>? get affectedBomIds => throw _privateConstructorUsedError;
  List<String>? get affectedItemIds => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateEcoRequestCopyWith<UpdateEcoRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateEcoRequestCopyWith<$Res> {
  factory $UpdateEcoRequestCopyWith(
          UpdateEcoRequest value, $Res Function(UpdateEcoRequest) then) =
      _$UpdateEcoRequestCopyWithImpl<$Res, UpdateEcoRequest>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      String? type,
      String? priority,
      String? reason,
      DateTime? targetImplementationDate,
      double? estimatedCost,
      int? estimatedHours,
      List<String>? affectedBomIds,
      List<String>? affectedItemIds,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$UpdateEcoRequestCopyWithImpl<$Res, $Val extends UpdateEcoRequest>
    implements $UpdateEcoRequestCopyWith<$Res> {
  _$UpdateEcoRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? priority = freezed,
    Object? reason = freezed,
    Object? targetImplementationDate = freezed,
    Object? estimatedCost = freezed,
    Object? estimatedHours = freezed,
    Object? affectedBomIds = freezed,
    Object? affectedItemIds = freezed,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      targetImplementationDate: freezed == targetImplementationDate
          ? _value.targetImplementationDate
          : targetImplementationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estimatedCost: freezed == estimatedCost
          ? _value.estimatedCost
          : estimatedCost // ignore: cast_nullable_to_non_nullable
              as double?,
      estimatedHours: freezed == estimatedHours
          ? _value.estimatedHours
          : estimatedHours // ignore: cast_nullable_to_non_nullable
              as int?,
      affectedBomIds: freezed == affectedBomIds
          ? _value.affectedBomIds
          : affectedBomIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      affectedItemIds: freezed == affectedItemIds
          ? _value.affectedItemIds
          : affectedItemIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateEcoRequestImplCopyWith<$Res>
    implements $UpdateEcoRequestCopyWith<$Res> {
  factory _$$UpdateEcoRequestImplCopyWith(_$UpdateEcoRequestImpl value,
          $Res Function(_$UpdateEcoRequestImpl) then) =
      __$$UpdateEcoRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      String? type,
      String? priority,
      String? reason,
      DateTime? targetImplementationDate,
      double? estimatedCost,
      int? estimatedHours,
      List<String>? affectedBomIds,
      List<String>? affectedItemIds,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$UpdateEcoRequestImplCopyWithImpl<$Res>
    extends _$UpdateEcoRequestCopyWithImpl<$Res, _$UpdateEcoRequestImpl>
    implements _$$UpdateEcoRequestImplCopyWith<$Res> {
  __$$UpdateEcoRequestImplCopyWithImpl(_$UpdateEcoRequestImpl _value,
      $Res Function(_$UpdateEcoRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? priority = freezed,
    Object? reason = freezed,
    Object? targetImplementationDate = freezed,
    Object? estimatedCost = freezed,
    Object? estimatedHours = freezed,
    Object? affectedBomIds = freezed,
    Object? affectedItemIds = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$UpdateEcoRequestImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      targetImplementationDate: freezed == targetImplementationDate
          ? _value.targetImplementationDate
          : targetImplementationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estimatedCost: freezed == estimatedCost
          ? _value.estimatedCost
          : estimatedCost // ignore: cast_nullable_to_non_nullable
              as double?,
      estimatedHours: freezed == estimatedHours
          ? _value.estimatedHours
          : estimatedHours // ignore: cast_nullable_to_non_nullable
              as int?,
      affectedBomIds: freezed == affectedBomIds
          ? _value._affectedBomIds
          : affectedBomIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      affectedItemIds: freezed == affectedItemIds
          ? _value._affectedItemIds
          : affectedItemIds // ignore: cast_nullable_to_non_nullable
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
class _$UpdateEcoRequestImpl implements _UpdateEcoRequest {
  const _$UpdateEcoRequestImpl(
      {this.title,
      this.description,
      this.type,
      this.priority,
      this.reason,
      this.targetImplementationDate,
      this.estimatedCost,
      this.estimatedHours,
      final List<String>? affectedBomIds,
      final List<String>? affectedItemIds,
      final Map<String, dynamic>? metadata})
      : _affectedBomIds = affectedBomIds,
        _affectedItemIds = affectedItemIds,
        _metadata = metadata;

  factory _$UpdateEcoRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateEcoRequestImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? type;
  @override
  final String? priority;
  @override
  final String? reason;
  @override
  final DateTime? targetImplementationDate;
  @override
  final double? estimatedCost;
  @override
  final int? estimatedHours;
  final List<String>? _affectedBomIds;
  @override
  List<String>? get affectedBomIds {
    final value = _affectedBomIds;
    if (value == null) return null;
    if (_affectedBomIds is EqualUnmodifiableListView) return _affectedBomIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _affectedItemIds;
  @override
  List<String>? get affectedItemIds {
    final value = _affectedItemIds;
    if (value == null) return null;
    if (_affectedItemIds is EqualUnmodifiableListView) return _affectedItemIds;
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
    return 'UpdateEcoRequest(title: $title, description: $description, type: $type, priority: $priority, reason: $reason, targetImplementationDate: $targetImplementationDate, estimatedCost: $estimatedCost, estimatedHours: $estimatedHours, affectedBomIds: $affectedBomIds, affectedItemIds: $affectedItemIds, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEcoRequestImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(
                    other.targetImplementationDate, targetImplementationDate) ||
                other.targetImplementationDate == targetImplementationDate) &&
            (identical(other.estimatedCost, estimatedCost) ||
                other.estimatedCost == estimatedCost) &&
            (identical(other.estimatedHours, estimatedHours) ||
                other.estimatedHours == estimatedHours) &&
            const DeepCollectionEquality()
                .equals(other._affectedBomIds, _affectedBomIds) &&
            const DeepCollectionEquality()
                .equals(other._affectedItemIds, _affectedItemIds) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      type,
      priority,
      reason,
      targetImplementationDate,
      estimatedCost,
      estimatedHours,
      const DeepCollectionEquality().hash(_affectedBomIds),
      const DeepCollectionEquality().hash(_affectedItemIds),
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateEcoRequestImplCopyWith<_$UpdateEcoRequestImpl> get copyWith =>
      __$$UpdateEcoRequestImplCopyWithImpl<_$UpdateEcoRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateEcoRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateEcoRequest implements UpdateEcoRequest {
  const factory _UpdateEcoRequest(
      {final String? title,
      final String? description,
      final String? type,
      final String? priority,
      final String? reason,
      final DateTime? targetImplementationDate,
      final double? estimatedCost,
      final int? estimatedHours,
      final List<String>? affectedBomIds,
      final List<String>? affectedItemIds,
      final Map<String, dynamic>? metadata}) = _$UpdateEcoRequestImpl;

  factory _UpdateEcoRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateEcoRequestImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get type;
  @override
  String? get priority;
  @override
  String? get reason;
  @override
  DateTime? get targetImplementationDate;
  @override
  double? get estimatedCost;
  @override
  int? get estimatedHours;
  @override
  List<String>? get affectedBomIds;
  @override
  List<String>? get affectedItemIds;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$UpdateEcoRequestImplCopyWith<_$UpdateEcoRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApproveEcoRequest _$ApproveEcoRequestFromJson(Map<String, dynamic> json) {
  return _ApproveEcoRequest.fromJson(json);
}

/// @nodoc
mixin _$ApproveEcoRequest {
  String? get notes => throw _privateConstructorUsedError;
  DateTime? get targetImplementationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApproveEcoRequestCopyWith<ApproveEcoRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApproveEcoRequestCopyWith<$Res> {
  factory $ApproveEcoRequestCopyWith(
          ApproveEcoRequest value, $Res Function(ApproveEcoRequest) then) =
      _$ApproveEcoRequestCopyWithImpl<$Res, ApproveEcoRequest>;
  @useResult
  $Res call({String? notes, DateTime? targetImplementationDate});
}

/// @nodoc
class _$ApproveEcoRequestCopyWithImpl<$Res, $Val extends ApproveEcoRequest>
    implements $ApproveEcoRequestCopyWith<$Res> {
  _$ApproveEcoRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = freezed,
    Object? targetImplementationDate = freezed,
  }) {
    return _then(_value.copyWith(
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      targetImplementationDate: freezed == targetImplementationDate
          ? _value.targetImplementationDate
          : targetImplementationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApproveEcoRequestImplCopyWith<$Res>
    implements $ApproveEcoRequestCopyWith<$Res> {
  factory _$$ApproveEcoRequestImplCopyWith(_$ApproveEcoRequestImpl value,
          $Res Function(_$ApproveEcoRequestImpl) then) =
      __$$ApproveEcoRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? notes, DateTime? targetImplementationDate});
}

/// @nodoc
class __$$ApproveEcoRequestImplCopyWithImpl<$Res>
    extends _$ApproveEcoRequestCopyWithImpl<$Res, _$ApproveEcoRequestImpl>
    implements _$$ApproveEcoRequestImplCopyWith<$Res> {
  __$$ApproveEcoRequestImplCopyWithImpl(_$ApproveEcoRequestImpl _value,
      $Res Function(_$ApproveEcoRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = freezed,
    Object? targetImplementationDate = freezed,
  }) {
    return _then(_$ApproveEcoRequestImpl(
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      targetImplementationDate: freezed == targetImplementationDate
          ? _value.targetImplementationDate
          : targetImplementationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApproveEcoRequestImpl implements _ApproveEcoRequest {
  const _$ApproveEcoRequestImpl({this.notes, this.targetImplementationDate});

  factory _$ApproveEcoRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApproveEcoRequestImplFromJson(json);

  @override
  final String? notes;
  @override
  final DateTime? targetImplementationDate;

  @override
  String toString() {
    return 'ApproveEcoRequest(notes: $notes, targetImplementationDate: $targetImplementationDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApproveEcoRequestImpl &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(
                    other.targetImplementationDate, targetImplementationDate) ||
                other.targetImplementationDate == targetImplementationDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, notes, targetImplementationDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApproveEcoRequestImplCopyWith<_$ApproveEcoRequestImpl> get copyWith =>
      __$$ApproveEcoRequestImplCopyWithImpl<_$ApproveEcoRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApproveEcoRequestImplToJson(
      this,
    );
  }
}

abstract class _ApproveEcoRequest implements ApproveEcoRequest {
  const factory _ApproveEcoRequest(
      {final String? notes,
      final DateTime? targetImplementationDate}) = _$ApproveEcoRequestImpl;

  factory _ApproveEcoRequest.fromJson(Map<String, dynamic> json) =
      _$ApproveEcoRequestImpl.fromJson;

  @override
  String? get notes;
  @override
  DateTime? get targetImplementationDate;
  @override
  @JsonKey(ignore: true)
  _$$ApproveEcoRequestImplCopyWith<_$ApproveEcoRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RejectEcoRequest _$RejectEcoRequestFromJson(Map<String, dynamic> json) {
  return _RejectEcoRequest.fromJson(json);
}

/// @nodoc
mixin _$RejectEcoRequest {
  String get reason => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RejectEcoRequestCopyWith<RejectEcoRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RejectEcoRequestCopyWith<$Res> {
  factory $RejectEcoRequestCopyWith(
          RejectEcoRequest value, $Res Function(RejectEcoRequest) then) =
      _$RejectEcoRequestCopyWithImpl<$Res, RejectEcoRequest>;
  @useResult
  $Res call({String reason, String? notes});
}

/// @nodoc
class _$RejectEcoRequestCopyWithImpl<$Res, $Val extends RejectEcoRequest>
    implements $RejectEcoRequestCopyWith<$Res> {
  _$RejectEcoRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$RejectEcoRequestImplCopyWith<$Res>
    implements $RejectEcoRequestCopyWith<$Res> {
  factory _$$RejectEcoRequestImplCopyWith(_$RejectEcoRequestImpl value,
          $Res Function(_$RejectEcoRequestImpl) then) =
      __$$RejectEcoRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String reason, String? notes});
}

/// @nodoc
class __$$RejectEcoRequestImplCopyWithImpl<$Res>
    extends _$RejectEcoRequestCopyWithImpl<$Res, _$RejectEcoRequestImpl>
    implements _$$RejectEcoRequestImplCopyWith<$Res> {
  __$$RejectEcoRequestImplCopyWithImpl(_$RejectEcoRequestImpl _value,
      $Res Function(_$RejectEcoRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
    Object? notes = freezed,
  }) {
    return _then(_$RejectEcoRequestImpl(
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
class _$RejectEcoRequestImpl implements _RejectEcoRequest {
  const _$RejectEcoRequestImpl({required this.reason, this.notes});

  factory _$RejectEcoRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RejectEcoRequestImplFromJson(json);

  @override
  final String reason;
  @override
  final String? notes;

  @override
  String toString() {
    return 'RejectEcoRequest(reason: $reason, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RejectEcoRequestImpl &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reason, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RejectEcoRequestImplCopyWith<_$RejectEcoRequestImpl> get copyWith =>
      __$$RejectEcoRequestImplCopyWithImpl<_$RejectEcoRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RejectEcoRequestImplToJson(
      this,
    );
  }
}

abstract class _RejectEcoRequest implements RejectEcoRequest {
  const factory _RejectEcoRequest(
      {required final String reason,
      final String? notes}) = _$RejectEcoRequestImpl;

  factory _RejectEcoRequest.fromJson(Map<String, dynamic> json) =
      _$RejectEcoRequestImpl.fromJson;

  @override
  String get reason;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$RejectEcoRequestImplCopyWith<_$RejectEcoRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EcoFilters _$EcoFiltersFromJson(Map<String, dynamic> json) {
  return _EcoFilters.fromJson(json);
}

/// @nodoc
mixin _$EcoFilters {
  String? get type => throw _privateConstructorUsedError;
  String? get priority => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get requestedBy => throw _privateConstructorUsedError;
  String? get reviewedBy => throw _privateConstructorUsedError;
  DateTime? get createdAfter => throw _privateConstructorUsedError;
  DateTime? get createdBefore => throw _privateConstructorUsedError;
  DateTime? get targetImplementationAfter => throw _privateConstructorUsedError;
  DateTime? get targetImplementationBefore =>
      throw _privateConstructorUsedError;
  List<String>? get affectedBomIds => throw _privateConstructorUsedError;
  List<String>? get affectedItemIds => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String? get sortBy => throw _privateConstructorUsedError;
  String? get sortOrder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EcoFiltersCopyWith<EcoFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EcoFiltersCopyWith<$Res> {
  factory $EcoFiltersCopyWith(
          EcoFilters value, $Res Function(EcoFilters) then) =
      _$EcoFiltersCopyWithImpl<$Res, EcoFilters>;
  @useResult
  $Res call(
      {String? type,
      String? priority,
      String? status,
      String? requestedBy,
      String? reviewedBy,
      DateTime? createdAfter,
      DateTime? createdBefore,
      DateTime? targetImplementationAfter,
      DateTime? targetImplementationBefore,
      List<String>? affectedBomIds,
      List<String>? affectedItemIds,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class _$EcoFiltersCopyWithImpl<$Res, $Val extends EcoFilters>
    implements $EcoFiltersCopyWith<$Res> {
  _$EcoFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? priority = freezed,
    Object? status = freezed,
    Object? requestedBy = freezed,
    Object? reviewedBy = freezed,
    Object? createdAfter = freezed,
    Object? createdBefore = freezed,
    Object? targetImplementationAfter = freezed,
    Object? targetImplementationBefore = freezed,
    Object? affectedBomIds = freezed,
    Object? affectedItemIds = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedBy: freezed == requestedBy
          ? _value.requestedBy
          : requestedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewedBy: freezed == reviewedBy
          ? _value.reviewedBy
          : reviewedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAfter: freezed == createdAfter
          ? _value.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _value.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      targetImplementationAfter: freezed == targetImplementationAfter
          ? _value.targetImplementationAfter
          : targetImplementationAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      targetImplementationBefore: freezed == targetImplementationBefore
          ? _value.targetImplementationBefore
          : targetImplementationBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      affectedBomIds: freezed == affectedBomIds
          ? _value.affectedBomIds
          : affectedBomIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      affectedItemIds: freezed == affectedItemIds
          ? _value.affectedItemIds
          : affectedItemIds // ignore: cast_nullable_to_non_nullable
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
abstract class _$$EcoFiltersImplCopyWith<$Res>
    implements $EcoFiltersCopyWith<$Res> {
  factory _$$EcoFiltersImplCopyWith(
          _$EcoFiltersImpl value, $Res Function(_$EcoFiltersImpl) then) =
      __$$EcoFiltersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? type,
      String? priority,
      String? status,
      String? requestedBy,
      String? reviewedBy,
      DateTime? createdAfter,
      DateTime? createdBefore,
      DateTime? targetImplementationAfter,
      DateTime? targetImplementationBefore,
      List<String>? affectedBomIds,
      List<String>? affectedItemIds,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class __$$EcoFiltersImplCopyWithImpl<$Res>
    extends _$EcoFiltersCopyWithImpl<$Res, _$EcoFiltersImpl>
    implements _$$EcoFiltersImplCopyWith<$Res> {
  __$$EcoFiltersImplCopyWithImpl(
      _$EcoFiltersImpl _value, $Res Function(_$EcoFiltersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? priority = freezed,
    Object? status = freezed,
    Object? requestedBy = freezed,
    Object? reviewedBy = freezed,
    Object? createdAfter = freezed,
    Object? createdBefore = freezed,
    Object? targetImplementationAfter = freezed,
    Object? targetImplementationBefore = freezed,
    Object? affectedBomIds = freezed,
    Object? affectedItemIds = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_$EcoFiltersImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedBy: freezed == requestedBy
          ? _value.requestedBy
          : requestedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewedBy: freezed == reviewedBy
          ? _value.reviewedBy
          : reviewedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAfter: freezed == createdAfter
          ? _value.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _value.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      targetImplementationAfter: freezed == targetImplementationAfter
          ? _value.targetImplementationAfter
          : targetImplementationAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      targetImplementationBefore: freezed == targetImplementationBefore
          ? _value.targetImplementationBefore
          : targetImplementationBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      affectedBomIds: freezed == affectedBomIds
          ? _value._affectedBomIds
          : affectedBomIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      affectedItemIds: freezed == affectedItemIds
          ? _value._affectedItemIds
          : affectedItemIds // ignore: cast_nullable_to_non_nullable
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
class _$EcoFiltersImpl extends _EcoFilters {
  const _$EcoFiltersImpl(
      {this.type,
      this.priority,
      this.status,
      this.requestedBy,
      this.reviewedBy,
      this.createdAfter,
      this.createdBefore,
      this.targetImplementationAfter,
      this.targetImplementationBefore,
      final List<String>? affectedBomIds,
      final List<String>? affectedItemIds,
      this.page,
      this.limit,
      this.sortBy,
      this.sortOrder})
      : _affectedBomIds = affectedBomIds,
        _affectedItemIds = affectedItemIds,
        super._();

  factory _$EcoFiltersImpl.fromJson(Map<String, dynamic> json) =>
      _$$EcoFiltersImplFromJson(json);

  @override
  final String? type;
  @override
  final String? priority;
  @override
  final String? status;
  @override
  final String? requestedBy;
  @override
  final String? reviewedBy;
  @override
  final DateTime? createdAfter;
  @override
  final DateTime? createdBefore;
  @override
  final DateTime? targetImplementationAfter;
  @override
  final DateTime? targetImplementationBefore;
  final List<String>? _affectedBomIds;
  @override
  List<String>? get affectedBomIds {
    final value = _affectedBomIds;
    if (value == null) return null;
    if (_affectedBomIds is EqualUnmodifiableListView) return _affectedBomIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _affectedItemIds;
  @override
  List<String>? get affectedItemIds {
    final value = _affectedItemIds;
    if (value == null) return null;
    if (_affectedItemIds is EqualUnmodifiableListView) return _affectedItemIds;
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
    return 'EcoFilters(type: $type, priority: $priority, status: $status, requestedBy: $requestedBy, reviewedBy: $reviewedBy, createdAfter: $createdAfter, createdBefore: $createdBefore, targetImplementationAfter: $targetImplementationAfter, targetImplementationBefore: $targetImplementationBefore, affectedBomIds: $affectedBomIds, affectedItemIds: $affectedItemIds, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EcoFiltersImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.requestedBy, requestedBy) ||
                other.requestedBy == requestedBy) &&
            (identical(other.reviewedBy, reviewedBy) ||
                other.reviewedBy == reviewedBy) &&
            (identical(other.createdAfter, createdAfter) ||
                other.createdAfter == createdAfter) &&
            (identical(other.createdBefore, createdBefore) ||
                other.createdBefore == createdBefore) &&
            (identical(other.targetImplementationAfter,
                    targetImplementationAfter) ||
                other.targetImplementationAfter == targetImplementationAfter) &&
            (identical(other.targetImplementationBefore,
                    targetImplementationBefore) ||
                other.targetImplementationBefore ==
                    targetImplementationBefore) &&
            const DeepCollectionEquality()
                .equals(other._affectedBomIds, _affectedBomIds) &&
            const DeepCollectionEquality()
                .equals(other._affectedItemIds, _affectedItemIds) &&
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
      type,
      priority,
      status,
      requestedBy,
      reviewedBy,
      createdAfter,
      createdBefore,
      targetImplementationAfter,
      targetImplementationBefore,
      const DeepCollectionEquality().hash(_affectedBomIds),
      const DeepCollectionEquality().hash(_affectedItemIds),
      page,
      limit,
      sortBy,
      sortOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EcoFiltersImplCopyWith<_$EcoFiltersImpl> get copyWith =>
      __$$EcoFiltersImplCopyWithImpl<_$EcoFiltersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EcoFiltersImplToJson(
      this,
    );
  }
}

abstract class _EcoFilters extends EcoFilters {
  const factory _EcoFilters(
      {final String? type,
      final String? priority,
      final String? status,
      final String? requestedBy,
      final String? reviewedBy,
      final DateTime? createdAfter,
      final DateTime? createdBefore,
      final DateTime? targetImplementationAfter,
      final DateTime? targetImplementationBefore,
      final List<String>? affectedBomIds,
      final List<String>? affectedItemIds,
      final int? page,
      final int? limit,
      final String? sortBy,
      final String? sortOrder}) = _$EcoFiltersImpl;
  const _EcoFilters._() : super._();

  factory _EcoFilters.fromJson(Map<String, dynamic> json) =
      _$EcoFiltersImpl.fromJson;

  @override
  String? get type;
  @override
  String? get priority;
  @override
  String? get status;
  @override
  String? get requestedBy;
  @override
  String? get reviewedBy;
  @override
  DateTime? get createdAfter;
  @override
  DateTime? get createdBefore;
  @override
  DateTime? get targetImplementationAfter;
  @override
  DateTime? get targetImplementationBefore;
  @override
  List<String>? get affectedBomIds;
  @override
  List<String>? get affectedItemIds;
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
  _$$EcoFiltersImplCopyWith<_$EcoFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
