// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_requisition_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PurchaseRequisition {
  String get id;
  String get requisitionNumber;
  String get requestedBy;
  String
      get status; // 'draft', 'submitted', 'approved', 'rejected', 'converted', 'closed', 'cancelled'
  DateTime get requestDate;
  DateTime get requiredDate;
  String get priority; // 'low', 'medium', 'high', 'urgent'
  DateTime get createdAt;
  DateTime get updatedAt;
  DateTime? get submittedAt;
  DateTime? get approvedAt;
  DateTime? get rejectedAt;
  DateTime? get convertedAt;
  DateTime? get closedAt;
  DateTime? get cancelledAt;
  String? get approvedBy;
  String? get rejectedBy;
  String? get convertedBy;
  String? get department;
  String? get costCenter;
  String? get project;
  String? get justification;
  String? get notes;
  String? get rejectionReason;
  String? get approvalNotes;
  Map<String, dynamic>? get metadata;

  /// Create a copy of PurchaseRequisition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PurchaseRequisitionCopyWith<PurchaseRequisition> get copyWith =>
      _$PurchaseRequisitionCopyWithImpl<PurchaseRequisition>(
          this as PurchaseRequisition, _$identity);

  /// Serializes this PurchaseRequisition to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PurchaseRequisition &&
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
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
        const DeepCollectionEquality().hash(metadata)
      ]);

  @override
  String toString() {
    return 'PurchaseRequisition(id: $id, requisitionNumber: $requisitionNumber, requestedBy: $requestedBy, status: $status, requestDate: $requestDate, requiredDate: $requiredDate, priority: $priority, createdAt: $createdAt, updatedAt: $updatedAt, submittedAt: $submittedAt, approvedAt: $approvedAt, rejectedAt: $rejectedAt, convertedAt: $convertedAt, closedAt: $closedAt, cancelledAt: $cancelledAt, approvedBy: $approvedBy, rejectedBy: $rejectedBy, convertedBy: $convertedBy, department: $department, costCenter: $costCenter, project: $project, justification: $justification, notes: $notes, rejectionReason: $rejectionReason, approvalNotes: $approvalNotes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $PurchaseRequisitionCopyWith<$Res> {
  factory $PurchaseRequisitionCopyWith(
          PurchaseRequisition value, $Res Function(PurchaseRequisition) _then) =
      _$PurchaseRequisitionCopyWithImpl;
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
class _$PurchaseRequisitionCopyWithImpl<$Res>
    implements $PurchaseRequisitionCopyWith<$Res> {
  _$PurchaseRequisitionCopyWithImpl(this._self, this._then);

  final PurchaseRequisition _self;
  final $Res Function(PurchaseRequisition) _then;

  /// Create a copy of PurchaseRequisition
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      requisitionNumber: null == requisitionNumber
          ? _self.requisitionNumber
          : requisitionNumber // ignore: cast_nullable_to_non_nullable
              as String,
      requestedBy: null == requestedBy
          ? _self.requestedBy
          : requestedBy // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      requestDate: null == requestDate
          ? _self.requestDate
          : requestDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requiredDate: null == requiredDate
          ? _self.requiredDate
          : requiredDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      priority: null == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      submittedAt: freezed == submittedAt
          ? _self.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAt: freezed == approvedAt
          ? _self.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _self.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      convertedAt: freezed == convertedAt
          ? _self.convertedAt
          : convertedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      closedAt: freezed == closedAt
          ? _self.closedAt
          : closedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelledAt: freezed == cancelledAt
          ? _self.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedBy: freezed == approvedBy
          ? _self.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectedBy: freezed == rejectedBy
          ? _self.rejectedBy
          : rejectedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      convertedBy: freezed == convertedBy
          ? _self.convertedBy
          : convertedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      costCenter: freezed == costCenter
          ? _self.costCenter
          : costCenter // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _self.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      justification: freezed == justification
          ? _self.justification
          : justification // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectionReason: freezed == rejectionReason
          ? _self.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalNotes: freezed == approvalNotes
          ? _self.approvalNotes
          : approvalNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PurchaseRequisition].
extension PurchaseRequisitionPatterns on PurchaseRequisition {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PurchaseRequisition value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PurchaseRequisition() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PurchaseRequisition value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseRequisition():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PurchaseRequisition value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseRequisition() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
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
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PurchaseRequisition() when $default != null:
        return $default(
            _that.id,
            _that.requisitionNumber,
            _that.requestedBy,
            _that.status,
            _that.requestDate,
            _that.requiredDate,
            _that.priority,
            _that.createdAt,
            _that.updatedAt,
            _that.submittedAt,
            _that.approvedAt,
            _that.rejectedAt,
            _that.convertedAt,
            _that.closedAt,
            _that.cancelledAt,
            _that.approvedBy,
            _that.rejectedBy,
            _that.convertedBy,
            _that.department,
            _that.costCenter,
            _that.project,
            _that.justification,
            _that.notes,
            _that.rejectionReason,
            _that.approvalNotes,
            _that.metadata);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
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
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseRequisition():
        return $default(
            _that.id,
            _that.requisitionNumber,
            _that.requestedBy,
            _that.status,
            _that.requestDate,
            _that.requiredDate,
            _that.priority,
            _that.createdAt,
            _that.updatedAt,
            _that.submittedAt,
            _that.approvedAt,
            _that.rejectedAt,
            _that.convertedAt,
            _that.closedAt,
            _that.cancelledAt,
            _that.approvedBy,
            _that.rejectedBy,
            _that.convertedBy,
            _that.department,
            _that.costCenter,
            _that.project,
            _that.justification,
            _that.notes,
            _that.rejectionReason,
            _that.approvalNotes,
            _that.metadata);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
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
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseRequisition() when $default != null:
        return $default(
            _that.id,
            _that.requisitionNumber,
            _that.requestedBy,
            _that.status,
            _that.requestDate,
            _that.requiredDate,
            _that.priority,
            _that.createdAt,
            _that.updatedAt,
            _that.submittedAt,
            _that.approvedAt,
            _that.rejectedAt,
            _that.convertedAt,
            _that.closedAt,
            _that.cancelledAt,
            _that.approvedBy,
            _that.rejectedBy,
            _that.convertedBy,
            _that.department,
            _that.costCenter,
            _that.project,
            _that.justification,
            _that.notes,
            _that.rejectionReason,
            _that.approvalNotes,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PurchaseRequisition implements PurchaseRequisition {
  const _PurchaseRequisition(
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
  factory _PurchaseRequisition.fromJson(Map<String, dynamic> json) =>
      _$PurchaseRequisitionFromJson(json);

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

  /// Create a copy of PurchaseRequisition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PurchaseRequisitionCopyWith<_PurchaseRequisition> get copyWith =>
      __$PurchaseRequisitionCopyWithImpl<_PurchaseRequisition>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PurchaseRequisitionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PurchaseRequisition &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'PurchaseRequisition(id: $id, requisitionNumber: $requisitionNumber, requestedBy: $requestedBy, status: $status, requestDate: $requestDate, requiredDate: $requiredDate, priority: $priority, createdAt: $createdAt, updatedAt: $updatedAt, submittedAt: $submittedAt, approvedAt: $approvedAt, rejectedAt: $rejectedAt, convertedAt: $convertedAt, closedAt: $closedAt, cancelledAt: $cancelledAt, approvedBy: $approvedBy, rejectedBy: $rejectedBy, convertedBy: $convertedBy, department: $department, costCenter: $costCenter, project: $project, justification: $justification, notes: $notes, rejectionReason: $rejectionReason, approvalNotes: $approvalNotes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$PurchaseRequisitionCopyWith<$Res>
    implements $PurchaseRequisitionCopyWith<$Res> {
  factory _$PurchaseRequisitionCopyWith(_PurchaseRequisition value,
          $Res Function(_PurchaseRequisition) _then) =
      __$PurchaseRequisitionCopyWithImpl;
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
class __$PurchaseRequisitionCopyWithImpl<$Res>
    implements _$PurchaseRequisitionCopyWith<$Res> {
  __$PurchaseRequisitionCopyWithImpl(this._self, this._then);

  final _PurchaseRequisition _self;
  final $Res Function(_PurchaseRequisition) _then;

  /// Create a copy of PurchaseRequisition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_PurchaseRequisition(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      requisitionNumber: null == requisitionNumber
          ? _self.requisitionNumber
          : requisitionNumber // ignore: cast_nullable_to_non_nullable
              as String,
      requestedBy: null == requestedBy
          ? _self.requestedBy
          : requestedBy // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      requestDate: null == requestDate
          ? _self.requestDate
          : requestDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requiredDate: null == requiredDate
          ? _self.requiredDate
          : requiredDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      priority: null == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      submittedAt: freezed == submittedAt
          ? _self.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAt: freezed == approvedAt
          ? _self.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _self.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      convertedAt: freezed == convertedAt
          ? _self.convertedAt
          : convertedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      closedAt: freezed == closedAt
          ? _self.closedAt
          : closedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelledAt: freezed == cancelledAt
          ? _self.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedBy: freezed == approvedBy
          ? _self.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectedBy: freezed == rejectedBy
          ? _self.rejectedBy
          : rejectedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      convertedBy: freezed == convertedBy
          ? _self.convertedBy
          : convertedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      costCenter: freezed == costCenter
          ? _self.costCenter
          : costCenter // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _self.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      justification: freezed == justification
          ? _self.justification
          : justification // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectionReason: freezed == rejectionReason
          ? _self.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalNotes: freezed == approvalNotes
          ? _self.approvalNotes
          : approvalNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$PurchaseRequisitionLineItem {
  String get id;
  String get purchaseRequisitionId;
  String get itemId;
  double get quantity;
  String get unit;
  DateTime get requiredDate;
  String get status; // 'pending', 'approved', 'rejected', 'converted'
  double? get estimatedPrice;
  double? get budgetAmount;
  int? get sequence;
  String? get justification;
  String? get notes;
  String? get specification;
  String? get preferredSupplier;
  String? get convertedPurchaseOrderId;
  Map<String, dynamic>? get attributes;
  Map<String, dynamic>? get metadata;

  /// Create a copy of PurchaseRequisitionLineItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PurchaseRequisitionLineItemCopyWith<PurchaseRequisitionLineItem>
      get copyWith => _$PurchaseRequisitionLineItemCopyWithImpl<
              PurchaseRequisitionLineItem>(
          this as PurchaseRequisitionLineItem, _$identity);

  /// Serializes this PurchaseRequisitionLineItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PurchaseRequisitionLineItem &&
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
                .equals(other.attributes, attributes) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(attributes),
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'PurchaseRequisitionLineItem(id: $id, purchaseRequisitionId: $purchaseRequisitionId, itemId: $itemId, quantity: $quantity, unit: $unit, requiredDate: $requiredDate, status: $status, estimatedPrice: $estimatedPrice, budgetAmount: $budgetAmount, sequence: $sequence, justification: $justification, notes: $notes, specification: $specification, preferredSupplier: $preferredSupplier, convertedPurchaseOrderId: $convertedPurchaseOrderId, attributes: $attributes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $PurchaseRequisitionLineItemCopyWith<$Res> {
  factory $PurchaseRequisitionLineItemCopyWith(
          PurchaseRequisitionLineItem value,
          $Res Function(PurchaseRequisitionLineItem) _then) =
      _$PurchaseRequisitionLineItemCopyWithImpl;
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
class _$PurchaseRequisitionLineItemCopyWithImpl<$Res>
    implements $PurchaseRequisitionLineItemCopyWith<$Res> {
  _$PurchaseRequisitionLineItemCopyWithImpl(this._self, this._then);

  final PurchaseRequisitionLineItem _self;
  final $Res Function(PurchaseRequisitionLineItem) _then;

  /// Create a copy of PurchaseRequisitionLineItem
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseRequisitionId: null == purchaseRequisitionId
          ? _self.purchaseRequisitionId
          : purchaseRequisitionId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      requiredDate: null == requiredDate
          ? _self.requiredDate
          : requiredDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedPrice: freezed == estimatedPrice
          ? _self.estimatedPrice
          : estimatedPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      budgetAmount: freezed == budgetAmount
          ? _self.budgetAmount
          : budgetAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      justification: freezed == justification
          ? _self.justification
          : justification // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _self.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      preferredSupplier: freezed == preferredSupplier
          ? _self.preferredSupplier
          : preferredSupplier // ignore: cast_nullable_to_non_nullable
              as String?,
      convertedPurchaseOrderId: freezed == convertedPurchaseOrderId
          ? _self.convertedPurchaseOrderId
          : convertedPurchaseOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PurchaseRequisitionLineItem].
extension PurchaseRequisitionLineItemPatterns on PurchaseRequisitionLineItem {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PurchaseRequisitionLineItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PurchaseRequisitionLineItem() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PurchaseRequisitionLineItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseRequisitionLineItem():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PurchaseRequisitionLineItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseRequisitionLineItem() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
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
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PurchaseRequisitionLineItem() when $default != null:
        return $default(
            _that.id,
            _that.purchaseRequisitionId,
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.requiredDate,
            _that.status,
            _that.estimatedPrice,
            _that.budgetAmount,
            _that.sequence,
            _that.justification,
            _that.notes,
            _that.specification,
            _that.preferredSupplier,
            _that.convertedPurchaseOrderId,
            _that.attributes,
            _that.metadata);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
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
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseRequisitionLineItem():
        return $default(
            _that.id,
            _that.purchaseRequisitionId,
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.requiredDate,
            _that.status,
            _that.estimatedPrice,
            _that.budgetAmount,
            _that.sequence,
            _that.justification,
            _that.notes,
            _that.specification,
            _that.preferredSupplier,
            _that.convertedPurchaseOrderId,
            _that.attributes,
            _that.metadata);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
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
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseRequisitionLineItem() when $default != null:
        return $default(
            _that.id,
            _that.purchaseRequisitionId,
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.requiredDate,
            _that.status,
            _that.estimatedPrice,
            _that.budgetAmount,
            _that.sequence,
            _that.justification,
            _that.notes,
            _that.specification,
            _that.preferredSupplier,
            _that.convertedPurchaseOrderId,
            _that.attributes,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PurchaseRequisitionLineItem implements PurchaseRequisitionLineItem {
  const _PurchaseRequisitionLineItem(
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
  factory _PurchaseRequisitionLineItem.fromJson(Map<String, dynamic> json) =>
      _$PurchaseRequisitionLineItemFromJson(json);

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

  /// Create a copy of PurchaseRequisitionLineItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PurchaseRequisitionLineItemCopyWith<_PurchaseRequisitionLineItem>
      get copyWith => __$PurchaseRequisitionLineItemCopyWithImpl<
          _PurchaseRequisitionLineItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PurchaseRequisitionLineItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PurchaseRequisitionLineItem &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'PurchaseRequisitionLineItem(id: $id, purchaseRequisitionId: $purchaseRequisitionId, itemId: $itemId, quantity: $quantity, unit: $unit, requiredDate: $requiredDate, status: $status, estimatedPrice: $estimatedPrice, budgetAmount: $budgetAmount, sequence: $sequence, justification: $justification, notes: $notes, specification: $specification, preferredSupplier: $preferredSupplier, convertedPurchaseOrderId: $convertedPurchaseOrderId, attributes: $attributes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$PurchaseRequisitionLineItemCopyWith<$Res>
    implements $PurchaseRequisitionLineItemCopyWith<$Res> {
  factory _$PurchaseRequisitionLineItemCopyWith(
          _PurchaseRequisitionLineItem value,
          $Res Function(_PurchaseRequisitionLineItem) _then) =
      __$PurchaseRequisitionLineItemCopyWithImpl;
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
class __$PurchaseRequisitionLineItemCopyWithImpl<$Res>
    implements _$PurchaseRequisitionLineItemCopyWith<$Res> {
  __$PurchaseRequisitionLineItemCopyWithImpl(this._self, this._then);

  final _PurchaseRequisitionLineItem _self;
  final $Res Function(_PurchaseRequisitionLineItem) _then;

  /// Create a copy of PurchaseRequisitionLineItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_PurchaseRequisitionLineItem(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseRequisitionId: null == purchaseRequisitionId
          ? _self.purchaseRequisitionId
          : purchaseRequisitionId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      requiredDate: null == requiredDate
          ? _self.requiredDate
          : requiredDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedPrice: freezed == estimatedPrice
          ? _self.estimatedPrice
          : estimatedPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      budgetAmount: freezed == budgetAmount
          ? _self.budgetAmount
          : budgetAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      justification: freezed == justification
          ? _self.justification
          : justification // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _self.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      preferredSupplier: freezed == preferredSupplier
          ? _self.preferredSupplier
          : preferredSupplier // ignore: cast_nullable_to_non_nullable
              as String?,
      convertedPurchaseOrderId: freezed == convertedPurchaseOrderId
          ? _self.convertedPurchaseOrderId
          : convertedPurchaseOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$CreatePurchaseRequisitionRequest {
  DateTime get requiredDate;
  String get priority;
  String? get department;
  String? get costCenter;
  String? get project;
  String? get justification;
  String? get notes;
  List<CreatePurchaseRequisitionLineItemRequest>? get lineItems;
  Map<String, dynamic>? get metadata;

  /// Create a copy of CreatePurchaseRequisitionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreatePurchaseRequisitionRequestCopyWith<CreatePurchaseRequisitionRequest>
      get copyWith => _$CreatePurchaseRequisitionRequestCopyWithImpl<
              CreatePurchaseRequisitionRequest>(
          this as CreatePurchaseRequisitionRequest, _$identity);

  /// Serializes this CreatePurchaseRequisitionRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreatePurchaseRequisitionRequest &&
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
            const DeepCollectionEquality().equals(other.lineItems, lineItems) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(lineItems),
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'CreatePurchaseRequisitionRequest(requiredDate: $requiredDate, priority: $priority, department: $department, costCenter: $costCenter, project: $project, justification: $justification, notes: $notes, lineItems: $lineItems, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $CreatePurchaseRequisitionRequestCopyWith<$Res> {
  factory $CreatePurchaseRequisitionRequestCopyWith(
          CreatePurchaseRequisitionRequest value,
          $Res Function(CreatePurchaseRequisitionRequest) _then) =
      _$CreatePurchaseRequisitionRequestCopyWithImpl;
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
class _$CreatePurchaseRequisitionRequestCopyWithImpl<$Res>
    implements $CreatePurchaseRequisitionRequestCopyWith<$Res> {
  _$CreatePurchaseRequisitionRequestCopyWithImpl(this._self, this._then);

  final CreatePurchaseRequisitionRequest _self;
  final $Res Function(CreatePurchaseRequisitionRequest) _then;

  /// Create a copy of CreatePurchaseRequisitionRequest
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      requiredDate: null == requiredDate
          ? _self.requiredDate
          : requiredDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      priority: null == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      department: freezed == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      costCenter: freezed == costCenter
          ? _self.costCenter
          : costCenter // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _self.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      justification: freezed == justification
          ? _self.justification
          : justification // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      lineItems: freezed == lineItems
          ? _self.lineItems
          : lineItems // ignore: cast_nullable_to_non_nullable
              as List<CreatePurchaseRequisitionLineItemRequest>?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreatePurchaseRequisitionRequest].
extension CreatePurchaseRequisitionRequestPatterns
    on CreatePurchaseRequisitionRequest {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CreatePurchaseRequisitionRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatePurchaseRequisitionRequest() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CreatePurchaseRequisitionRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePurchaseRequisitionRequest():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CreatePurchaseRequisitionRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePurchaseRequisitionRequest() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            DateTime requiredDate,
            String priority,
            String? department,
            String? costCenter,
            String? project,
            String? justification,
            String? notes,
            List<CreatePurchaseRequisitionLineItemRequest>? lineItems,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatePurchaseRequisitionRequest() when $default != null:
        return $default(
            _that.requiredDate,
            _that.priority,
            _that.department,
            _that.costCenter,
            _that.project,
            _that.justification,
            _that.notes,
            _that.lineItems,
            _that.metadata);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            DateTime requiredDate,
            String priority,
            String? department,
            String? costCenter,
            String? project,
            String? justification,
            String? notes,
            List<CreatePurchaseRequisitionLineItemRequest>? lineItems,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePurchaseRequisitionRequest():
        return $default(
            _that.requiredDate,
            _that.priority,
            _that.department,
            _that.costCenter,
            _that.project,
            _that.justification,
            _that.notes,
            _that.lineItems,
            _that.metadata);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            DateTime requiredDate,
            String priority,
            String? department,
            String? costCenter,
            String? project,
            String? justification,
            String? notes,
            List<CreatePurchaseRequisitionLineItemRequest>? lineItems,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePurchaseRequisitionRequest() when $default != null:
        return $default(
            _that.requiredDate,
            _that.priority,
            _that.department,
            _that.costCenter,
            _that.project,
            _that.justification,
            _that.notes,
            _that.lineItems,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreatePurchaseRequisitionRequest
    implements CreatePurchaseRequisitionRequest {
  const _CreatePurchaseRequisitionRequest(
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
  factory _CreatePurchaseRequisitionRequest.fromJson(
          Map<String, dynamic> json) =>
      _$CreatePurchaseRequisitionRequestFromJson(json);

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

  /// Create a copy of CreatePurchaseRequisitionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreatePurchaseRequisitionRequestCopyWith<_CreatePurchaseRequisitionRequest>
      get copyWith => __$CreatePurchaseRequisitionRequestCopyWithImpl<
          _CreatePurchaseRequisitionRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreatePurchaseRequisitionRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreatePurchaseRequisitionRequest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'CreatePurchaseRequisitionRequest(requiredDate: $requiredDate, priority: $priority, department: $department, costCenter: $costCenter, project: $project, justification: $justification, notes: $notes, lineItems: $lineItems, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$CreatePurchaseRequisitionRequestCopyWith<$Res>
    implements $CreatePurchaseRequisitionRequestCopyWith<$Res> {
  factory _$CreatePurchaseRequisitionRequestCopyWith(
          _CreatePurchaseRequisitionRequest value,
          $Res Function(_CreatePurchaseRequisitionRequest) _then) =
      __$CreatePurchaseRequisitionRequestCopyWithImpl;
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
class __$CreatePurchaseRequisitionRequestCopyWithImpl<$Res>
    implements _$CreatePurchaseRequisitionRequestCopyWith<$Res> {
  __$CreatePurchaseRequisitionRequestCopyWithImpl(this._self, this._then);

  final _CreatePurchaseRequisitionRequest _self;
  final $Res Function(_CreatePurchaseRequisitionRequest) _then;

  /// Create a copy of CreatePurchaseRequisitionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_CreatePurchaseRequisitionRequest(
      requiredDate: null == requiredDate
          ? _self.requiredDate
          : requiredDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      priority: null == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      department: freezed == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      costCenter: freezed == costCenter
          ? _self.costCenter
          : costCenter // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _self.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      justification: freezed == justification
          ? _self.justification
          : justification // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      lineItems: freezed == lineItems
          ? _self._lineItems
          : lineItems // ignore: cast_nullable_to_non_nullable
              as List<CreatePurchaseRequisitionLineItemRequest>?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$CreatePurchaseRequisitionLineItemRequest {
  String get itemId;
  double get quantity;
  String get unit;
  DateTime get requiredDate;
  double? get estimatedPrice;
  double? get budgetAmount;
  int? get sequence;
  String? get justification;
  String? get notes;
  String? get specification;
  String? get preferredSupplier;
  Map<String, dynamic>? get attributes;

  /// Create a copy of CreatePurchaseRequisitionLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreatePurchaseRequisitionLineItemRequestCopyWith<
          CreatePurchaseRequisitionLineItemRequest>
      get copyWith => _$CreatePurchaseRequisitionLineItemRequestCopyWithImpl<
              CreatePurchaseRequisitionLineItemRequest>(
          this as CreatePurchaseRequisitionLineItemRequest, _$identity);

  /// Serializes this CreatePurchaseRequisitionLineItemRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreatePurchaseRequisitionLineItemRequest &&
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
                .equals(other.attributes, attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(attributes));

  @override
  String toString() {
    return 'CreatePurchaseRequisitionLineItemRequest(itemId: $itemId, quantity: $quantity, unit: $unit, requiredDate: $requiredDate, estimatedPrice: $estimatedPrice, budgetAmount: $budgetAmount, sequence: $sequence, justification: $justification, notes: $notes, specification: $specification, preferredSupplier: $preferredSupplier, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class $CreatePurchaseRequisitionLineItemRequestCopyWith<$Res> {
  factory $CreatePurchaseRequisitionLineItemRequestCopyWith(
          CreatePurchaseRequisitionLineItemRequest value,
          $Res Function(CreatePurchaseRequisitionLineItemRequest) _then) =
      _$CreatePurchaseRequisitionLineItemRequestCopyWithImpl;
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
class _$CreatePurchaseRequisitionLineItemRequestCopyWithImpl<$Res>
    implements $CreatePurchaseRequisitionLineItemRequestCopyWith<$Res> {
  _$CreatePurchaseRequisitionLineItemRequestCopyWithImpl(
      this._self, this._then);

  final CreatePurchaseRequisitionLineItemRequest _self;
  final $Res Function(CreatePurchaseRequisitionLineItemRequest) _then;

  /// Create a copy of CreatePurchaseRequisitionLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      requiredDate: null == requiredDate
          ? _self.requiredDate
          : requiredDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      estimatedPrice: freezed == estimatedPrice
          ? _self.estimatedPrice
          : estimatedPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      budgetAmount: freezed == budgetAmount
          ? _self.budgetAmount
          : budgetAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      justification: freezed == justification
          ? _self.justification
          : justification // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _self.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      preferredSupplier: freezed == preferredSupplier
          ? _self.preferredSupplier
          : preferredSupplier // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreatePurchaseRequisitionLineItemRequest].
extension CreatePurchaseRequisitionLineItemRequestPatterns
    on CreatePurchaseRequisitionLineItemRequest {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CreatePurchaseRequisitionLineItemRequest value)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatePurchaseRequisitionLineItemRequest() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CreatePurchaseRequisitionLineItemRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePurchaseRequisitionLineItemRequest():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CreatePurchaseRequisitionLineItemRequest value)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePurchaseRequisitionLineItemRequest() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String itemId,
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
            Map<String, dynamic>? attributes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatePurchaseRequisitionLineItemRequest() when $default != null:
        return $default(
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.requiredDate,
            _that.estimatedPrice,
            _that.budgetAmount,
            _that.sequence,
            _that.justification,
            _that.notes,
            _that.specification,
            _that.preferredSupplier,
            _that.attributes);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String itemId,
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
            Map<String, dynamic>? attributes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePurchaseRequisitionLineItemRequest():
        return $default(
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.requiredDate,
            _that.estimatedPrice,
            _that.budgetAmount,
            _that.sequence,
            _that.justification,
            _that.notes,
            _that.specification,
            _that.preferredSupplier,
            _that.attributes);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String itemId,
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
            Map<String, dynamic>? attributes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePurchaseRequisitionLineItemRequest() when $default != null:
        return $default(
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.requiredDate,
            _that.estimatedPrice,
            _that.budgetAmount,
            _that.sequence,
            _that.justification,
            _that.notes,
            _that.specification,
            _that.preferredSupplier,
            _that.attributes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreatePurchaseRequisitionLineItemRequest
    implements CreatePurchaseRequisitionLineItemRequest {
  const _CreatePurchaseRequisitionLineItemRequest(
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
  factory _CreatePurchaseRequisitionLineItemRequest.fromJson(
          Map<String, dynamic> json) =>
      _$CreatePurchaseRequisitionLineItemRequestFromJson(json);

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

  /// Create a copy of CreatePurchaseRequisitionLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreatePurchaseRequisitionLineItemRequestCopyWith<
          _CreatePurchaseRequisitionLineItemRequest>
      get copyWith => __$CreatePurchaseRequisitionLineItemRequestCopyWithImpl<
          _CreatePurchaseRequisitionLineItemRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreatePurchaseRequisitionLineItemRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreatePurchaseRequisitionLineItemRequest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'CreatePurchaseRequisitionLineItemRequest(itemId: $itemId, quantity: $quantity, unit: $unit, requiredDate: $requiredDate, estimatedPrice: $estimatedPrice, budgetAmount: $budgetAmount, sequence: $sequence, justification: $justification, notes: $notes, specification: $specification, preferredSupplier: $preferredSupplier, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class _$CreatePurchaseRequisitionLineItemRequestCopyWith<$Res>
    implements $CreatePurchaseRequisitionLineItemRequestCopyWith<$Res> {
  factory _$CreatePurchaseRequisitionLineItemRequestCopyWith(
          _CreatePurchaseRequisitionLineItemRequest value,
          $Res Function(_CreatePurchaseRequisitionLineItemRequest) _then) =
      __$CreatePurchaseRequisitionLineItemRequestCopyWithImpl;
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
class __$CreatePurchaseRequisitionLineItemRequestCopyWithImpl<$Res>
    implements _$CreatePurchaseRequisitionLineItemRequestCopyWith<$Res> {
  __$CreatePurchaseRequisitionLineItemRequestCopyWithImpl(
      this._self, this._then);

  final _CreatePurchaseRequisitionLineItemRequest _self;
  final $Res Function(_CreatePurchaseRequisitionLineItemRequest) _then;

  /// Create a copy of CreatePurchaseRequisitionLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_CreatePurchaseRequisitionLineItemRequest(
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      requiredDate: null == requiredDate
          ? _self.requiredDate
          : requiredDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      estimatedPrice: freezed == estimatedPrice
          ? _self.estimatedPrice
          : estimatedPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      budgetAmount: freezed == budgetAmount
          ? _self.budgetAmount
          : budgetAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      justification: freezed == justification
          ? _self.justification
          : justification // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _self.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      preferredSupplier: freezed == preferredSupplier
          ? _self.preferredSupplier
          : preferredSupplier // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$UpdatePurchaseRequisitionRequest {
  DateTime? get requiredDate;
  String? get priority;
  String? get department;
  String? get costCenter;
  String? get project;
  String? get justification;
  String? get notes;
  Map<String, dynamic>? get metadata;

  /// Create a copy of UpdatePurchaseRequisitionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdatePurchaseRequisitionRequestCopyWith<UpdatePurchaseRequisitionRequest>
      get copyWith => _$UpdatePurchaseRequisitionRequestCopyWithImpl<
              UpdatePurchaseRequisitionRequest>(
          this as UpdatePurchaseRequisitionRequest, _$identity);

  /// Serializes this UpdatePurchaseRequisitionRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdatePurchaseRequisitionRequest &&
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
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'UpdatePurchaseRequisitionRequest(requiredDate: $requiredDate, priority: $priority, department: $department, costCenter: $costCenter, project: $project, justification: $justification, notes: $notes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $UpdatePurchaseRequisitionRequestCopyWith<$Res> {
  factory $UpdatePurchaseRequisitionRequestCopyWith(
          UpdatePurchaseRequisitionRequest value,
          $Res Function(UpdatePurchaseRequisitionRequest) _then) =
      _$UpdatePurchaseRequisitionRequestCopyWithImpl;
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
class _$UpdatePurchaseRequisitionRequestCopyWithImpl<$Res>
    implements $UpdatePurchaseRequisitionRequestCopyWith<$Res> {
  _$UpdatePurchaseRequisitionRequestCopyWithImpl(this._self, this._then);

  final UpdatePurchaseRequisitionRequest _self;
  final $Res Function(UpdatePurchaseRequisitionRequest) _then;

  /// Create a copy of UpdatePurchaseRequisitionRequest
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      requiredDate: freezed == requiredDate
          ? _self.requiredDate
          : requiredDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      priority: freezed == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      costCenter: freezed == costCenter
          ? _self.costCenter
          : costCenter // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _self.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      justification: freezed == justification
          ? _self.justification
          : justification // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdatePurchaseRequisitionRequest].
extension UpdatePurchaseRequisitionRequestPatterns
    on UpdatePurchaseRequisitionRequest {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UpdatePurchaseRequisitionRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdatePurchaseRequisitionRequest() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UpdatePurchaseRequisitionRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePurchaseRequisitionRequest():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UpdatePurchaseRequisitionRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePurchaseRequisitionRequest() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            DateTime? requiredDate,
            String? priority,
            String? department,
            String? costCenter,
            String? project,
            String? justification,
            String? notes,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdatePurchaseRequisitionRequest() when $default != null:
        return $default(
            _that.requiredDate,
            _that.priority,
            _that.department,
            _that.costCenter,
            _that.project,
            _that.justification,
            _that.notes,
            _that.metadata);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            DateTime? requiredDate,
            String? priority,
            String? department,
            String? costCenter,
            String? project,
            String? justification,
            String? notes,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePurchaseRequisitionRequest():
        return $default(
            _that.requiredDate,
            _that.priority,
            _that.department,
            _that.costCenter,
            _that.project,
            _that.justification,
            _that.notes,
            _that.metadata);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            DateTime? requiredDate,
            String? priority,
            String? department,
            String? costCenter,
            String? project,
            String? justification,
            String? notes,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePurchaseRequisitionRequest() when $default != null:
        return $default(
            _that.requiredDate,
            _that.priority,
            _that.department,
            _that.costCenter,
            _that.project,
            _that.justification,
            _that.notes,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdatePurchaseRequisitionRequest
    implements UpdatePurchaseRequisitionRequest {
  const _UpdatePurchaseRequisitionRequest(
      {this.requiredDate,
      this.priority,
      this.department,
      this.costCenter,
      this.project,
      this.justification,
      this.notes,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _UpdatePurchaseRequisitionRequest.fromJson(
          Map<String, dynamic> json) =>
      _$UpdatePurchaseRequisitionRequestFromJson(json);

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

  /// Create a copy of UpdatePurchaseRequisitionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdatePurchaseRequisitionRequestCopyWith<_UpdatePurchaseRequisitionRequest>
      get copyWith => __$UpdatePurchaseRequisitionRequestCopyWithImpl<
          _UpdatePurchaseRequisitionRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdatePurchaseRequisitionRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdatePurchaseRequisitionRequest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'UpdatePurchaseRequisitionRequest(requiredDate: $requiredDate, priority: $priority, department: $department, costCenter: $costCenter, project: $project, justification: $justification, notes: $notes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$UpdatePurchaseRequisitionRequestCopyWith<$Res>
    implements $UpdatePurchaseRequisitionRequestCopyWith<$Res> {
  factory _$UpdatePurchaseRequisitionRequestCopyWith(
          _UpdatePurchaseRequisitionRequest value,
          $Res Function(_UpdatePurchaseRequisitionRequest) _then) =
      __$UpdatePurchaseRequisitionRequestCopyWithImpl;
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
class __$UpdatePurchaseRequisitionRequestCopyWithImpl<$Res>
    implements _$UpdatePurchaseRequisitionRequestCopyWith<$Res> {
  __$UpdatePurchaseRequisitionRequestCopyWithImpl(this._self, this._then);

  final _UpdatePurchaseRequisitionRequest _self;
  final $Res Function(_UpdatePurchaseRequisitionRequest) _then;

  /// Create a copy of UpdatePurchaseRequisitionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_UpdatePurchaseRequisitionRequest(
      requiredDate: freezed == requiredDate
          ? _self.requiredDate
          : requiredDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      priority: freezed == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      costCenter: freezed == costCenter
          ? _self.costCenter
          : costCenter // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _self.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      justification: freezed == justification
          ? _self.justification
          : justification // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$UpdatePurchaseRequisitionLineItemRequest {
  double? get quantity;
  String? get unit;
  DateTime? get requiredDate;
  double? get estimatedPrice;
  double? get budgetAmount;
  int? get sequence;
  String? get justification;
  String? get notes;
  String? get specification;
  String? get preferredSupplier;
  Map<String, dynamic>? get attributes;

  /// Create a copy of UpdatePurchaseRequisitionLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdatePurchaseRequisitionLineItemRequestCopyWith<
          UpdatePurchaseRequisitionLineItemRequest>
      get copyWith => _$UpdatePurchaseRequisitionLineItemRequestCopyWithImpl<
              UpdatePurchaseRequisitionLineItemRequest>(
          this as UpdatePurchaseRequisitionLineItemRequest, _$identity);

  /// Serializes this UpdatePurchaseRequisitionLineItemRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdatePurchaseRequisitionLineItemRequest &&
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
                .equals(other.attributes, attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(attributes));

  @override
  String toString() {
    return 'UpdatePurchaseRequisitionLineItemRequest(quantity: $quantity, unit: $unit, requiredDate: $requiredDate, estimatedPrice: $estimatedPrice, budgetAmount: $budgetAmount, sequence: $sequence, justification: $justification, notes: $notes, specification: $specification, preferredSupplier: $preferredSupplier, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class $UpdatePurchaseRequisitionLineItemRequestCopyWith<$Res> {
  factory $UpdatePurchaseRequisitionLineItemRequestCopyWith(
          UpdatePurchaseRequisitionLineItemRequest value,
          $Res Function(UpdatePurchaseRequisitionLineItemRequest) _then) =
      _$UpdatePurchaseRequisitionLineItemRequestCopyWithImpl;
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
class _$UpdatePurchaseRequisitionLineItemRequestCopyWithImpl<$Res>
    implements $UpdatePurchaseRequisitionLineItemRequestCopyWith<$Res> {
  _$UpdatePurchaseRequisitionLineItemRequestCopyWithImpl(
      this._self, this._then);

  final UpdatePurchaseRequisitionLineItemRequest _self;
  final $Res Function(UpdatePurchaseRequisitionLineItemRequest) _then;

  /// Create a copy of UpdatePurchaseRequisitionLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      quantity: freezed == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      unit: freezed == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      requiredDate: freezed == requiredDate
          ? _self.requiredDate
          : requiredDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estimatedPrice: freezed == estimatedPrice
          ? _self.estimatedPrice
          : estimatedPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      budgetAmount: freezed == budgetAmount
          ? _self.budgetAmount
          : budgetAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      justification: freezed == justification
          ? _self.justification
          : justification // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _self.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      preferredSupplier: freezed == preferredSupplier
          ? _self.preferredSupplier
          : preferredSupplier // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdatePurchaseRequisitionLineItemRequest].
extension UpdatePurchaseRequisitionLineItemRequestPatterns
    on UpdatePurchaseRequisitionLineItemRequest {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UpdatePurchaseRequisitionLineItemRequest value)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdatePurchaseRequisitionLineItemRequest() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UpdatePurchaseRequisitionLineItemRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePurchaseRequisitionLineItemRequest():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UpdatePurchaseRequisitionLineItemRequest value)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePurchaseRequisitionLineItemRequest() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            double? quantity,
            String? unit,
            DateTime? requiredDate,
            double? estimatedPrice,
            double? budgetAmount,
            int? sequence,
            String? justification,
            String? notes,
            String? specification,
            String? preferredSupplier,
            Map<String, dynamic>? attributes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdatePurchaseRequisitionLineItemRequest() when $default != null:
        return $default(
            _that.quantity,
            _that.unit,
            _that.requiredDate,
            _that.estimatedPrice,
            _that.budgetAmount,
            _that.sequence,
            _that.justification,
            _that.notes,
            _that.specification,
            _that.preferredSupplier,
            _that.attributes);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            double? quantity,
            String? unit,
            DateTime? requiredDate,
            double? estimatedPrice,
            double? budgetAmount,
            int? sequence,
            String? justification,
            String? notes,
            String? specification,
            String? preferredSupplier,
            Map<String, dynamic>? attributes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePurchaseRequisitionLineItemRequest():
        return $default(
            _that.quantity,
            _that.unit,
            _that.requiredDate,
            _that.estimatedPrice,
            _that.budgetAmount,
            _that.sequence,
            _that.justification,
            _that.notes,
            _that.specification,
            _that.preferredSupplier,
            _that.attributes);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            double? quantity,
            String? unit,
            DateTime? requiredDate,
            double? estimatedPrice,
            double? budgetAmount,
            int? sequence,
            String? justification,
            String? notes,
            String? specification,
            String? preferredSupplier,
            Map<String, dynamic>? attributes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePurchaseRequisitionLineItemRequest() when $default != null:
        return $default(
            _that.quantity,
            _that.unit,
            _that.requiredDate,
            _that.estimatedPrice,
            _that.budgetAmount,
            _that.sequence,
            _that.justification,
            _that.notes,
            _that.specification,
            _that.preferredSupplier,
            _that.attributes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdatePurchaseRequisitionLineItemRequest
    implements UpdatePurchaseRequisitionLineItemRequest {
  const _UpdatePurchaseRequisitionLineItemRequest(
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
  factory _UpdatePurchaseRequisitionLineItemRequest.fromJson(
          Map<String, dynamic> json) =>
      _$UpdatePurchaseRequisitionLineItemRequestFromJson(json);

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

  /// Create a copy of UpdatePurchaseRequisitionLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdatePurchaseRequisitionLineItemRequestCopyWith<
          _UpdatePurchaseRequisitionLineItemRequest>
      get copyWith => __$UpdatePurchaseRequisitionLineItemRequestCopyWithImpl<
          _UpdatePurchaseRequisitionLineItemRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdatePurchaseRequisitionLineItemRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdatePurchaseRequisitionLineItemRequest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'UpdatePurchaseRequisitionLineItemRequest(quantity: $quantity, unit: $unit, requiredDate: $requiredDate, estimatedPrice: $estimatedPrice, budgetAmount: $budgetAmount, sequence: $sequence, justification: $justification, notes: $notes, specification: $specification, preferredSupplier: $preferredSupplier, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class _$UpdatePurchaseRequisitionLineItemRequestCopyWith<$Res>
    implements $UpdatePurchaseRequisitionLineItemRequestCopyWith<$Res> {
  factory _$UpdatePurchaseRequisitionLineItemRequestCopyWith(
          _UpdatePurchaseRequisitionLineItemRequest value,
          $Res Function(_UpdatePurchaseRequisitionLineItemRequest) _then) =
      __$UpdatePurchaseRequisitionLineItemRequestCopyWithImpl;
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
class __$UpdatePurchaseRequisitionLineItemRequestCopyWithImpl<$Res>
    implements _$UpdatePurchaseRequisitionLineItemRequestCopyWith<$Res> {
  __$UpdatePurchaseRequisitionLineItemRequestCopyWithImpl(
      this._self, this._then);

  final _UpdatePurchaseRequisitionLineItemRequest _self;
  final $Res Function(_UpdatePurchaseRequisitionLineItemRequest) _then;

  /// Create a copy of UpdatePurchaseRequisitionLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_UpdatePurchaseRequisitionLineItemRequest(
      quantity: freezed == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      unit: freezed == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      requiredDate: freezed == requiredDate
          ? _self.requiredDate
          : requiredDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estimatedPrice: freezed == estimatedPrice
          ? _self.estimatedPrice
          : estimatedPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      budgetAmount: freezed == budgetAmount
          ? _self.budgetAmount
          : budgetAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      justification: freezed == justification
          ? _self.justification
          : justification // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _self.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      preferredSupplier: freezed == preferredSupplier
          ? _self.preferredSupplier
          : preferredSupplier // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$PurchaseRequisitionFilters {
  String? get requestedBy;
  String? get status;
  String? get priority;
  String? get department;
  String? get costCenter;
  String? get project;
  DateTime? get requestDateAfter;
  DateTime? get requestDateBefore;
  DateTime? get requiredDateAfter;
  DateTime? get requiredDateBefore;
  List<String>? get itemIds;
  int? get page;
  int? get limit;
  String? get sortBy;
  String? get sortOrder;

  /// Create a copy of PurchaseRequisitionFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PurchaseRequisitionFiltersCopyWith<PurchaseRequisitionFilters>
      get copyWith =>
          _$PurchaseRequisitionFiltersCopyWithImpl<PurchaseRequisitionFilters>(
              this as PurchaseRequisitionFilters, _$identity);

  /// Serializes this PurchaseRequisitionFilters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PurchaseRequisitionFilters &&
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
            const DeepCollectionEquality().equals(other.itemIds, itemIds) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(itemIds),
      page,
      limit,
      sortBy,
      sortOrder);

  @override
  String toString() {
    return 'PurchaseRequisitionFilters(requestedBy: $requestedBy, status: $status, priority: $priority, department: $department, costCenter: $costCenter, project: $project, requestDateAfter: $requestDateAfter, requestDateBefore: $requestDateBefore, requiredDateAfter: $requiredDateAfter, requiredDateBefore: $requiredDateBefore, itemIds: $itemIds, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class $PurchaseRequisitionFiltersCopyWith<$Res> {
  factory $PurchaseRequisitionFiltersCopyWith(PurchaseRequisitionFilters value,
          $Res Function(PurchaseRequisitionFilters) _then) =
      _$PurchaseRequisitionFiltersCopyWithImpl;
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
class _$PurchaseRequisitionFiltersCopyWithImpl<$Res>
    implements $PurchaseRequisitionFiltersCopyWith<$Res> {
  _$PurchaseRequisitionFiltersCopyWithImpl(this._self, this._then);

  final PurchaseRequisitionFilters _self;
  final $Res Function(PurchaseRequisitionFilters) _then;

  /// Create a copy of PurchaseRequisitionFilters
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      requestedBy: freezed == requestedBy
          ? _self.requestedBy
          : requestedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      costCenter: freezed == costCenter
          ? _self.costCenter
          : costCenter // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _self.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      requestDateAfter: freezed == requestDateAfter
          ? _self.requestDateAfter
          : requestDateAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requestDateBefore: freezed == requestDateBefore
          ? _self.requestDateBefore
          : requestDateBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requiredDateAfter: freezed == requiredDateAfter
          ? _self.requiredDateAfter
          : requiredDateAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requiredDateBefore: freezed == requiredDateBefore
          ? _self.requiredDateBefore
          : requiredDateBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      itemIds: freezed == itemIds
          ? _self.itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _self.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _self.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PurchaseRequisitionFilters].
extension PurchaseRequisitionFiltersPatterns on PurchaseRequisitionFilters {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PurchaseRequisitionFilters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PurchaseRequisitionFilters() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PurchaseRequisitionFilters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseRequisitionFilters():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PurchaseRequisitionFilters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseRequisitionFilters() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? requestedBy,
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
            String? sortOrder)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PurchaseRequisitionFilters() when $default != null:
        return $default(
            _that.requestedBy,
            _that.status,
            _that.priority,
            _that.department,
            _that.costCenter,
            _that.project,
            _that.requestDateAfter,
            _that.requestDateBefore,
            _that.requiredDateAfter,
            _that.requiredDateBefore,
            _that.itemIds,
            _that.page,
            _that.limit,
            _that.sortBy,
            _that.sortOrder);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? requestedBy,
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
            String? sortOrder)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseRequisitionFilters():
        return $default(
            _that.requestedBy,
            _that.status,
            _that.priority,
            _that.department,
            _that.costCenter,
            _that.project,
            _that.requestDateAfter,
            _that.requestDateBefore,
            _that.requiredDateAfter,
            _that.requiredDateBefore,
            _that.itemIds,
            _that.page,
            _that.limit,
            _that.sortBy,
            _that.sortOrder);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String? requestedBy,
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
            String? sortOrder)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseRequisitionFilters() when $default != null:
        return $default(
            _that.requestedBy,
            _that.status,
            _that.priority,
            _that.department,
            _that.costCenter,
            _that.project,
            _that.requestDateAfter,
            _that.requestDateBefore,
            _that.requiredDateAfter,
            _that.requiredDateBefore,
            _that.itemIds,
            _that.page,
            _that.limit,
            _that.sortBy,
            _that.sortOrder);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PurchaseRequisitionFilters extends PurchaseRequisitionFilters {
  const _PurchaseRequisitionFilters(
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
  factory _PurchaseRequisitionFilters.fromJson(Map<String, dynamic> json) =>
      _$PurchaseRequisitionFiltersFromJson(json);

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

  /// Create a copy of PurchaseRequisitionFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PurchaseRequisitionFiltersCopyWith<_PurchaseRequisitionFilters>
      get copyWith => __$PurchaseRequisitionFiltersCopyWithImpl<
          _PurchaseRequisitionFilters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PurchaseRequisitionFiltersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PurchaseRequisitionFilters &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'PurchaseRequisitionFilters(requestedBy: $requestedBy, status: $status, priority: $priority, department: $department, costCenter: $costCenter, project: $project, requestDateAfter: $requestDateAfter, requestDateBefore: $requestDateBefore, requiredDateAfter: $requiredDateAfter, requiredDateBefore: $requiredDateBefore, itemIds: $itemIds, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class _$PurchaseRequisitionFiltersCopyWith<$Res>
    implements $PurchaseRequisitionFiltersCopyWith<$Res> {
  factory _$PurchaseRequisitionFiltersCopyWith(
          _PurchaseRequisitionFilters value,
          $Res Function(_PurchaseRequisitionFilters) _then) =
      __$PurchaseRequisitionFiltersCopyWithImpl;
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
class __$PurchaseRequisitionFiltersCopyWithImpl<$Res>
    implements _$PurchaseRequisitionFiltersCopyWith<$Res> {
  __$PurchaseRequisitionFiltersCopyWithImpl(this._self, this._then);

  final _PurchaseRequisitionFilters _self;
  final $Res Function(_PurchaseRequisitionFilters) _then;

  /// Create a copy of PurchaseRequisitionFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_PurchaseRequisitionFilters(
      requestedBy: freezed == requestedBy
          ? _self.requestedBy
          : requestedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      costCenter: freezed == costCenter
          ? _self.costCenter
          : costCenter // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _self.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      requestDateAfter: freezed == requestDateAfter
          ? _self.requestDateAfter
          : requestDateAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requestDateBefore: freezed == requestDateBefore
          ? _self.requestDateBefore
          : requestDateBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requiredDateAfter: freezed == requiredDateAfter
          ? _self.requiredDateAfter
          : requiredDateAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requiredDateBefore: freezed == requiredDateBefore
          ? _self.requiredDateBefore
          : requiredDateBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      itemIds: freezed == itemIds
          ? _self._itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _self.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _self.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$ApprovePurchaseRequisitionRequest {
  String? get notes;

  /// Create a copy of ApprovePurchaseRequisitionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApprovePurchaseRequisitionRequestCopyWith<ApprovePurchaseRequisitionRequest>
      get copyWith => _$ApprovePurchaseRequisitionRequestCopyWithImpl<
              ApprovePurchaseRequisitionRequest>(
          this as ApprovePurchaseRequisitionRequest, _$identity);

  /// Serializes this ApprovePurchaseRequisitionRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApprovePurchaseRequisitionRequest &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, notes);

  @override
  String toString() {
    return 'ApprovePurchaseRequisitionRequest(notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $ApprovePurchaseRequisitionRequestCopyWith<$Res> {
  factory $ApprovePurchaseRequisitionRequestCopyWith(
          ApprovePurchaseRequisitionRequest value,
          $Res Function(ApprovePurchaseRequisitionRequest) _then) =
      _$ApprovePurchaseRequisitionRequestCopyWithImpl;
  @useResult
  $Res call({String? notes});
}

/// @nodoc
class _$ApprovePurchaseRequisitionRequestCopyWithImpl<$Res>
    implements $ApprovePurchaseRequisitionRequestCopyWith<$Res> {
  _$ApprovePurchaseRequisitionRequestCopyWithImpl(this._self, this._then);

  final ApprovePurchaseRequisitionRequest _self;
  final $Res Function(ApprovePurchaseRequisitionRequest) _then;

  /// Create a copy of ApprovePurchaseRequisitionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = freezed,
  }) {
    return _then(_self.copyWith(
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ApprovePurchaseRequisitionRequest].
extension ApprovePurchaseRequisitionRequestPatterns
    on ApprovePurchaseRequisitionRequest {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ApprovePurchaseRequisitionRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ApprovePurchaseRequisitionRequest() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ApprovePurchaseRequisitionRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApprovePurchaseRequisitionRequest():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ApprovePurchaseRequisitionRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApprovePurchaseRequisitionRequest() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? notes)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ApprovePurchaseRequisitionRequest() when $default != null:
        return $default(_that.notes);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? notes) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApprovePurchaseRequisitionRequest():
        return $default(_that.notes);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? notes)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApprovePurchaseRequisitionRequest() when $default != null:
        return $default(_that.notes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ApprovePurchaseRequisitionRequest
    implements ApprovePurchaseRequisitionRequest {
  const _ApprovePurchaseRequisitionRequest({this.notes});
  factory _ApprovePurchaseRequisitionRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ApprovePurchaseRequisitionRequestFromJson(json);

  @override
  final String? notes;

  /// Create a copy of ApprovePurchaseRequisitionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ApprovePurchaseRequisitionRequestCopyWith<
          _ApprovePurchaseRequisitionRequest>
      get copyWith => __$ApprovePurchaseRequisitionRequestCopyWithImpl<
          _ApprovePurchaseRequisitionRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ApprovePurchaseRequisitionRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApprovePurchaseRequisitionRequest &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, notes);

  @override
  String toString() {
    return 'ApprovePurchaseRequisitionRequest(notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$ApprovePurchaseRequisitionRequestCopyWith<$Res>
    implements $ApprovePurchaseRequisitionRequestCopyWith<$Res> {
  factory _$ApprovePurchaseRequisitionRequestCopyWith(
          _ApprovePurchaseRequisitionRequest value,
          $Res Function(_ApprovePurchaseRequisitionRequest) _then) =
      __$ApprovePurchaseRequisitionRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String? notes});
}

/// @nodoc
class __$ApprovePurchaseRequisitionRequestCopyWithImpl<$Res>
    implements _$ApprovePurchaseRequisitionRequestCopyWith<$Res> {
  __$ApprovePurchaseRequisitionRequestCopyWithImpl(this._self, this._then);

  final _ApprovePurchaseRequisitionRequest _self;
  final $Res Function(_ApprovePurchaseRequisitionRequest) _then;

  /// Create a copy of ApprovePurchaseRequisitionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? notes = freezed,
  }) {
    return _then(_ApprovePurchaseRequisitionRequest(
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$RejectPurchaseRequisitionRequest {
  String get reason;
  String? get notes;

  /// Create a copy of RejectPurchaseRequisitionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RejectPurchaseRequisitionRequestCopyWith<RejectPurchaseRequisitionRequest>
      get copyWith => _$RejectPurchaseRequisitionRequestCopyWithImpl<
              RejectPurchaseRequisitionRequest>(
          this as RejectPurchaseRequisitionRequest, _$identity);

  /// Serializes this RejectPurchaseRequisitionRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RejectPurchaseRequisitionRequest &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason, notes);

  @override
  String toString() {
    return 'RejectPurchaseRequisitionRequest(reason: $reason, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $RejectPurchaseRequisitionRequestCopyWith<$Res> {
  factory $RejectPurchaseRequisitionRequestCopyWith(
          RejectPurchaseRequisitionRequest value,
          $Res Function(RejectPurchaseRequisitionRequest) _then) =
      _$RejectPurchaseRequisitionRequestCopyWithImpl;
  @useResult
  $Res call({String reason, String? notes});
}

/// @nodoc
class _$RejectPurchaseRequisitionRequestCopyWithImpl<$Res>
    implements $RejectPurchaseRequisitionRequestCopyWith<$Res> {
  _$RejectPurchaseRequisitionRequestCopyWithImpl(this._self, this._then);

  final RejectPurchaseRequisitionRequest _self;
  final $Res Function(RejectPurchaseRequisitionRequest) _then;

  /// Create a copy of RejectPurchaseRequisitionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
    Object? notes = freezed,
  }) {
    return _then(_self.copyWith(
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [RejectPurchaseRequisitionRequest].
extension RejectPurchaseRequisitionRequestPatterns
    on RejectPurchaseRequisitionRequest {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RejectPurchaseRequisitionRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RejectPurchaseRequisitionRequest() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RejectPurchaseRequisitionRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RejectPurchaseRequisitionRequest():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_RejectPurchaseRequisitionRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RejectPurchaseRequisitionRequest() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String reason, String? notes)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RejectPurchaseRequisitionRequest() when $default != null:
        return $default(_that.reason, _that.notes);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String reason, String? notes) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RejectPurchaseRequisitionRequest():
        return $default(_that.reason, _that.notes);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String reason, String? notes)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RejectPurchaseRequisitionRequest() when $default != null:
        return $default(_that.reason, _that.notes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RejectPurchaseRequisitionRequest
    implements RejectPurchaseRequisitionRequest {
  const _RejectPurchaseRequisitionRequest({required this.reason, this.notes});
  factory _RejectPurchaseRequisitionRequest.fromJson(
          Map<String, dynamic> json) =>
      _$RejectPurchaseRequisitionRequestFromJson(json);

  @override
  final String reason;
  @override
  final String? notes;

  /// Create a copy of RejectPurchaseRequisitionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RejectPurchaseRequisitionRequestCopyWith<_RejectPurchaseRequisitionRequest>
      get copyWith => __$RejectPurchaseRequisitionRequestCopyWithImpl<
          _RejectPurchaseRequisitionRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RejectPurchaseRequisitionRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RejectPurchaseRequisitionRequest &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason, notes);

  @override
  String toString() {
    return 'RejectPurchaseRequisitionRequest(reason: $reason, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$RejectPurchaseRequisitionRequestCopyWith<$Res>
    implements $RejectPurchaseRequisitionRequestCopyWith<$Res> {
  factory _$RejectPurchaseRequisitionRequestCopyWith(
          _RejectPurchaseRequisitionRequest value,
          $Res Function(_RejectPurchaseRequisitionRequest) _then) =
      __$RejectPurchaseRequisitionRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String reason, String? notes});
}

/// @nodoc
class __$RejectPurchaseRequisitionRequestCopyWithImpl<$Res>
    implements _$RejectPurchaseRequisitionRequestCopyWith<$Res> {
  __$RejectPurchaseRequisitionRequestCopyWithImpl(this._self, this._then);

  final _RejectPurchaseRequisitionRequest _self;
  final $Res Function(_RejectPurchaseRequisitionRequest) _then;

  /// Create a copy of RejectPurchaseRequisitionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reason = null,
    Object? notes = freezed,
  }) {
    return _then(_RejectPurchaseRequisitionRequest(
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
