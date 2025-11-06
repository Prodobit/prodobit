// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rfq_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RFQ {
  String get id;
  String get rfqNumber;
  String get title;
  String get description;
  String
      get status; // 'draft', 'sent', 'responses_received', 'evaluated', 'closed', 'cancelled'
  DateTime get rfqDate;
  DateTime get responseDeadline;
  DateTime get createdAt;
  DateTime get updatedAt;
  DateTime? get sentAt;
  DateTime? get closedAt;
  DateTime? get cancelledAt;
  String? get createdBy;
  String? get closedBy;
  String? get cancelledBy;
  String? get department;
  String? get project;
  String? get deliveryLocation;
  String? get paymentTerms;
  String? get evaluationCriteria;
  String? get notes;
  String? get termsAndConditions;
  List<String>? get supplierIds;
  Map<String, dynamic>? get metadata;

  /// Create a copy of RFQ
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RFQCopyWith<RFQ> get copyWith =>
      _$RFQCopyWithImpl<RFQ>(this as RFQ, _$identity);

  /// Serializes this RFQ to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RFQ &&
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
                .equals(other.supplierIds, supplierIds) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
        const DeepCollectionEquality().hash(supplierIds),
        const DeepCollectionEquality().hash(metadata)
      ]);

  @override
  String toString() {
    return 'RFQ(id: $id, rfqNumber: $rfqNumber, title: $title, description: $description, status: $status, rfqDate: $rfqDate, responseDeadline: $responseDeadline, createdAt: $createdAt, updatedAt: $updatedAt, sentAt: $sentAt, closedAt: $closedAt, cancelledAt: $cancelledAt, createdBy: $createdBy, closedBy: $closedBy, cancelledBy: $cancelledBy, department: $department, project: $project, deliveryLocation: $deliveryLocation, paymentTerms: $paymentTerms, evaluationCriteria: $evaluationCriteria, notes: $notes, termsAndConditions: $termsAndConditions, supplierIds: $supplierIds, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $RFQCopyWith<$Res> {
  factory $RFQCopyWith(RFQ value, $Res Function(RFQ) _then) = _$RFQCopyWithImpl;
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
class _$RFQCopyWithImpl<$Res> implements $RFQCopyWith<$Res> {
  _$RFQCopyWithImpl(this._self, this._then);

  final RFQ _self;
  final $Res Function(RFQ) _then;

  /// Create a copy of RFQ
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rfqNumber: null == rfqNumber
          ? _self.rfqNumber
          : rfqNumber // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      rfqDate: null == rfqDate
          ? _self.rfqDate
          : rfqDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      responseDeadline: null == responseDeadline
          ? _self.responseDeadline
          : responseDeadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sentAt: freezed == sentAt
          ? _self.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      closedAt: freezed == closedAt
          ? _self.closedAt
          : closedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelledAt: freezed == cancelledAt
          ? _self.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      closedBy: freezed == closedBy
          ? _self.closedBy
          : closedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelledBy: freezed == cancelledBy
          ? _self.cancelledBy
          : cancelledBy // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _self.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryLocation: freezed == deliveryLocation
          ? _self.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _self.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      evaluationCriteria: freezed == evaluationCriteria
          ? _self.evaluationCriteria
          : evaluationCriteria // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _self.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierIds: freezed == supplierIds
          ? _self.supplierIds
          : supplierIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [RFQ].
extension RFQPatterns on RFQ {
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
    TResult Function(_RFQ value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RFQ() when $default != null:
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
    TResult Function(_RFQ value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RFQ():
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
    TResult? Function(_RFQ value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RFQ() when $default != null:
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
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RFQ() when $default != null:
        return $default(
            _that.id,
            _that.rfqNumber,
            _that.title,
            _that.description,
            _that.status,
            _that.rfqDate,
            _that.responseDeadline,
            _that.createdAt,
            _that.updatedAt,
            _that.sentAt,
            _that.closedAt,
            _that.cancelledAt,
            _that.createdBy,
            _that.closedBy,
            _that.cancelledBy,
            _that.department,
            _that.project,
            _that.deliveryLocation,
            _that.paymentTerms,
            _that.evaluationCriteria,
            _that.notes,
            _that.termsAndConditions,
            _that.supplierIds,
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
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RFQ():
        return $default(
            _that.id,
            _that.rfqNumber,
            _that.title,
            _that.description,
            _that.status,
            _that.rfqDate,
            _that.responseDeadline,
            _that.createdAt,
            _that.updatedAt,
            _that.sentAt,
            _that.closedAt,
            _that.cancelledAt,
            _that.createdBy,
            _that.closedBy,
            _that.cancelledBy,
            _that.department,
            _that.project,
            _that.deliveryLocation,
            _that.paymentTerms,
            _that.evaluationCriteria,
            _that.notes,
            _that.termsAndConditions,
            _that.supplierIds,
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
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RFQ() when $default != null:
        return $default(
            _that.id,
            _that.rfqNumber,
            _that.title,
            _that.description,
            _that.status,
            _that.rfqDate,
            _that.responseDeadline,
            _that.createdAt,
            _that.updatedAt,
            _that.sentAt,
            _that.closedAt,
            _that.cancelledAt,
            _that.createdBy,
            _that.closedBy,
            _that.cancelledBy,
            _that.department,
            _that.project,
            _that.deliveryLocation,
            _that.paymentTerms,
            _that.evaluationCriteria,
            _that.notes,
            _that.termsAndConditions,
            _that.supplierIds,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RFQ implements RFQ {
  const _RFQ(
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
  factory _RFQ.fromJson(Map<String, dynamic> json) => _$RFQFromJson(json);

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

  /// Create a copy of RFQ
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RFQCopyWith<_RFQ> get copyWith =>
      __$RFQCopyWithImpl<_RFQ>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RFQToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RFQ &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'RFQ(id: $id, rfqNumber: $rfqNumber, title: $title, description: $description, status: $status, rfqDate: $rfqDate, responseDeadline: $responseDeadline, createdAt: $createdAt, updatedAt: $updatedAt, sentAt: $sentAt, closedAt: $closedAt, cancelledAt: $cancelledAt, createdBy: $createdBy, closedBy: $closedBy, cancelledBy: $cancelledBy, department: $department, project: $project, deliveryLocation: $deliveryLocation, paymentTerms: $paymentTerms, evaluationCriteria: $evaluationCriteria, notes: $notes, termsAndConditions: $termsAndConditions, supplierIds: $supplierIds, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$RFQCopyWith<$Res> implements $RFQCopyWith<$Res> {
  factory _$RFQCopyWith(_RFQ value, $Res Function(_RFQ) _then) =
      __$RFQCopyWithImpl;
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
class __$RFQCopyWithImpl<$Res> implements _$RFQCopyWith<$Res> {
  __$RFQCopyWithImpl(this._self, this._then);

  final _RFQ _self;
  final $Res Function(_RFQ) _then;

  /// Create a copy of RFQ
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_RFQ(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rfqNumber: null == rfqNumber
          ? _self.rfqNumber
          : rfqNumber // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      rfqDate: null == rfqDate
          ? _self.rfqDate
          : rfqDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      responseDeadline: null == responseDeadline
          ? _self.responseDeadline
          : responseDeadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sentAt: freezed == sentAt
          ? _self.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      closedAt: freezed == closedAt
          ? _self.closedAt
          : closedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelledAt: freezed == cancelledAt
          ? _self.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      closedBy: freezed == closedBy
          ? _self.closedBy
          : closedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelledBy: freezed == cancelledBy
          ? _self.cancelledBy
          : cancelledBy // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _self.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryLocation: freezed == deliveryLocation
          ? _self.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _self.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      evaluationCriteria: freezed == evaluationCriteria
          ? _self.evaluationCriteria
          : evaluationCriteria // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _self.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierIds: freezed == supplierIds
          ? _self._supplierIds
          : supplierIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$RFQLineItem {
  String get id;
  String get rfqId;
  String get itemId;
  double get quantity;
  String get unit;
  DateTime get requiredDate;
  int? get sequence;
  String? get specification;
  String? get brandPreference;
  String? get notes;
  double? get budgetPrice;
  double? get maxPrice;
  Map<String, dynamic>? get technicalRequirements;
  Map<String, dynamic>? get attributes;
  Map<String, dynamic>? get metadata;

  /// Create a copy of RFQLineItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RFQLineItemCopyWith<RFQLineItem> get copyWith =>
      _$RFQLineItemCopyWithImpl<RFQLineItem>(this as RFQLineItem, _$identity);

  /// Serializes this RFQLineItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RFQLineItem &&
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
                .equals(other.technicalRequirements, technicalRequirements) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(technicalRequirements),
      const DeepCollectionEquality().hash(attributes),
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'RFQLineItem(id: $id, rfqId: $rfqId, itemId: $itemId, quantity: $quantity, unit: $unit, requiredDate: $requiredDate, sequence: $sequence, specification: $specification, brandPreference: $brandPreference, notes: $notes, budgetPrice: $budgetPrice, maxPrice: $maxPrice, technicalRequirements: $technicalRequirements, attributes: $attributes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $RFQLineItemCopyWith<$Res> {
  factory $RFQLineItemCopyWith(
          RFQLineItem value, $Res Function(RFQLineItem) _then) =
      _$RFQLineItemCopyWithImpl;
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
class _$RFQLineItemCopyWithImpl<$Res> implements $RFQLineItemCopyWith<$Res> {
  _$RFQLineItemCopyWithImpl(this._self, this._then);

  final RFQLineItem _self;
  final $Res Function(RFQLineItem) _then;

  /// Create a copy of RFQLineItem
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rfqId: null == rfqId
          ? _self.rfqId
          : rfqId // ignore: cast_nullable_to_non_nullable
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
      sequence: freezed == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      specification: freezed == specification
          ? _self.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      brandPreference: freezed == brandPreference
          ? _self.brandPreference
          : brandPreference // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      budgetPrice: freezed == budgetPrice
          ? _self.budgetPrice
          : budgetPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      maxPrice: freezed == maxPrice
          ? _self.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      technicalRequirements: freezed == technicalRequirements
          ? _self.technicalRequirements
          : technicalRequirements // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
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

/// Adds pattern-matching-related methods to [RFQLineItem].
extension RFQLineItemPatterns on RFQLineItem {
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
    TResult Function(_RFQLineItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RFQLineItem() when $default != null:
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
    TResult Function(_RFQLineItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RFQLineItem():
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
    TResult? Function(_RFQLineItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RFQLineItem() when $default != null:
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
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RFQLineItem() when $default != null:
        return $default(
            _that.id,
            _that.rfqId,
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.requiredDate,
            _that.sequence,
            _that.specification,
            _that.brandPreference,
            _that.notes,
            _that.budgetPrice,
            _that.maxPrice,
            _that.technicalRequirements,
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
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RFQLineItem():
        return $default(
            _that.id,
            _that.rfqId,
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.requiredDate,
            _that.sequence,
            _that.specification,
            _that.brandPreference,
            _that.notes,
            _that.budgetPrice,
            _that.maxPrice,
            _that.technicalRequirements,
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
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RFQLineItem() when $default != null:
        return $default(
            _that.id,
            _that.rfqId,
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.requiredDate,
            _that.sequence,
            _that.specification,
            _that.brandPreference,
            _that.notes,
            _that.budgetPrice,
            _that.maxPrice,
            _that.technicalRequirements,
            _that.attributes,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RFQLineItem implements RFQLineItem {
  const _RFQLineItem(
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
  factory _RFQLineItem.fromJson(Map<String, dynamic> json) =>
      _$RFQLineItemFromJson(json);

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

  /// Create a copy of RFQLineItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RFQLineItemCopyWith<_RFQLineItem> get copyWith =>
      __$RFQLineItemCopyWithImpl<_RFQLineItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RFQLineItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RFQLineItem &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'RFQLineItem(id: $id, rfqId: $rfqId, itemId: $itemId, quantity: $quantity, unit: $unit, requiredDate: $requiredDate, sequence: $sequence, specification: $specification, brandPreference: $brandPreference, notes: $notes, budgetPrice: $budgetPrice, maxPrice: $maxPrice, technicalRequirements: $technicalRequirements, attributes: $attributes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$RFQLineItemCopyWith<$Res>
    implements $RFQLineItemCopyWith<$Res> {
  factory _$RFQLineItemCopyWith(
          _RFQLineItem value, $Res Function(_RFQLineItem) _then) =
      __$RFQLineItemCopyWithImpl;
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
class __$RFQLineItemCopyWithImpl<$Res> implements _$RFQLineItemCopyWith<$Res> {
  __$RFQLineItemCopyWithImpl(this._self, this._then);

  final _RFQLineItem _self;
  final $Res Function(_RFQLineItem) _then;

  /// Create a copy of RFQLineItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_RFQLineItem(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rfqId: null == rfqId
          ? _self.rfqId
          : rfqId // ignore: cast_nullable_to_non_nullable
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
      sequence: freezed == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      specification: freezed == specification
          ? _self.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      brandPreference: freezed == brandPreference
          ? _self.brandPreference
          : brandPreference // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      budgetPrice: freezed == budgetPrice
          ? _self.budgetPrice
          : budgetPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      maxPrice: freezed == maxPrice
          ? _self.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      technicalRequirements: freezed == technicalRequirements
          ? _self._technicalRequirements
          : technicalRequirements // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
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
mixin _$RFQSupplier {
  String get id;
  String get rfqId;
  String get supplierId;
  String get status; // 'invited', 'acknowledged', 'quoted', 'declined'
  DateTime get invitedAt;
  DateTime? get acknowledgedAt;
  DateTime? get quotedAt;
  DateTime? get declinedAt;
  String? get quotationId;
  String? get declineReason;
  String? get contactPerson;
  String? get contactEmail;
  String? get contactPhone;
  String? get notes;
  Map<String, dynamic>? get metadata;

  /// Create a copy of RFQSupplier
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RFQSupplierCopyWith<RFQSupplier> get copyWith =>
      _$RFQSupplierCopyWithImpl<RFQSupplier>(this as RFQSupplier, _$identity);

  /// Serializes this RFQSupplier to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RFQSupplier &&
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
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'RFQSupplier(id: $id, rfqId: $rfqId, supplierId: $supplierId, status: $status, invitedAt: $invitedAt, acknowledgedAt: $acknowledgedAt, quotedAt: $quotedAt, declinedAt: $declinedAt, quotationId: $quotationId, declineReason: $declineReason, contactPerson: $contactPerson, contactEmail: $contactEmail, contactPhone: $contactPhone, notes: $notes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $RFQSupplierCopyWith<$Res> {
  factory $RFQSupplierCopyWith(
          RFQSupplier value, $Res Function(RFQSupplier) _then) =
      _$RFQSupplierCopyWithImpl;
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
class _$RFQSupplierCopyWithImpl<$Res> implements $RFQSupplierCopyWith<$Res> {
  _$RFQSupplierCopyWithImpl(this._self, this._then);

  final RFQSupplier _self;
  final $Res Function(RFQSupplier) _then;

  /// Create a copy of RFQSupplier
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rfqId: null == rfqId
          ? _self.rfqId
          : rfqId // ignore: cast_nullable_to_non_nullable
              as String,
      supplierId: null == supplierId
          ? _self.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      invitedAt: null == invitedAt
          ? _self.invitedAt
          : invitedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      acknowledgedAt: freezed == acknowledgedAt
          ? _self.acknowledgedAt
          : acknowledgedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quotedAt: freezed == quotedAt
          ? _self.quotedAt
          : quotedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      declinedAt: freezed == declinedAt
          ? _self.declinedAt
          : declinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quotationId: freezed == quotationId
          ? _self.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String?,
      declineReason: freezed == declineReason
          ? _self.declineReason
          : declineReason // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPerson: freezed == contactPerson
          ? _self.contactPerson
          : contactPerson // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _self.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _self.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
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

/// Adds pattern-matching-related methods to [RFQSupplier].
extension RFQSupplierPatterns on RFQSupplier {
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
    TResult Function(_RFQSupplier value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RFQSupplier() when $default != null:
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
    TResult Function(_RFQSupplier value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RFQSupplier():
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
    TResult? Function(_RFQSupplier value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RFQSupplier() when $default != null:
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
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RFQSupplier() when $default != null:
        return $default(
            _that.id,
            _that.rfqId,
            _that.supplierId,
            _that.status,
            _that.invitedAt,
            _that.acknowledgedAt,
            _that.quotedAt,
            _that.declinedAt,
            _that.quotationId,
            _that.declineReason,
            _that.contactPerson,
            _that.contactEmail,
            _that.contactPhone,
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
            String id,
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
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RFQSupplier():
        return $default(
            _that.id,
            _that.rfqId,
            _that.supplierId,
            _that.status,
            _that.invitedAt,
            _that.acknowledgedAt,
            _that.quotedAt,
            _that.declinedAt,
            _that.quotationId,
            _that.declineReason,
            _that.contactPerson,
            _that.contactEmail,
            _that.contactPhone,
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
            String id,
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
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RFQSupplier() when $default != null:
        return $default(
            _that.id,
            _that.rfqId,
            _that.supplierId,
            _that.status,
            _that.invitedAt,
            _that.acknowledgedAt,
            _that.quotedAt,
            _that.declinedAt,
            _that.quotationId,
            _that.declineReason,
            _that.contactPerson,
            _that.contactEmail,
            _that.contactPhone,
            _that.notes,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RFQSupplier implements RFQSupplier {
  const _RFQSupplier(
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
  factory _RFQSupplier.fromJson(Map<String, dynamic> json) =>
      _$RFQSupplierFromJson(json);

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

  /// Create a copy of RFQSupplier
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RFQSupplierCopyWith<_RFQSupplier> get copyWith =>
      __$RFQSupplierCopyWithImpl<_RFQSupplier>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RFQSupplierToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RFQSupplier &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'RFQSupplier(id: $id, rfqId: $rfqId, supplierId: $supplierId, status: $status, invitedAt: $invitedAt, acknowledgedAt: $acknowledgedAt, quotedAt: $quotedAt, declinedAt: $declinedAt, quotationId: $quotationId, declineReason: $declineReason, contactPerson: $contactPerson, contactEmail: $contactEmail, contactPhone: $contactPhone, notes: $notes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$RFQSupplierCopyWith<$Res>
    implements $RFQSupplierCopyWith<$Res> {
  factory _$RFQSupplierCopyWith(
          _RFQSupplier value, $Res Function(_RFQSupplier) _then) =
      __$RFQSupplierCopyWithImpl;
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
class __$RFQSupplierCopyWithImpl<$Res> implements _$RFQSupplierCopyWith<$Res> {
  __$RFQSupplierCopyWithImpl(this._self, this._then);

  final _RFQSupplier _self;
  final $Res Function(_RFQSupplier) _then;

  /// Create a copy of RFQSupplier
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_RFQSupplier(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rfqId: null == rfqId
          ? _self.rfqId
          : rfqId // ignore: cast_nullable_to_non_nullable
              as String,
      supplierId: null == supplierId
          ? _self.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      invitedAt: null == invitedAt
          ? _self.invitedAt
          : invitedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      acknowledgedAt: freezed == acknowledgedAt
          ? _self.acknowledgedAt
          : acknowledgedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quotedAt: freezed == quotedAt
          ? _self.quotedAt
          : quotedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      declinedAt: freezed == declinedAt
          ? _self.declinedAt
          : declinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quotationId: freezed == quotationId
          ? _self.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String?,
      declineReason: freezed == declineReason
          ? _self.declineReason
          : declineReason // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPerson: freezed == contactPerson
          ? _self.contactPerson
          : contactPerson // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _self.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _self.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
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
mixin _$CreateRFQRequest {
  String get title;
  String get description;
  DateTime get responseDeadline;
  String? get department;
  String? get project;
  String? get deliveryLocation;
  String? get paymentTerms;
  String? get evaluationCriteria;
  String? get notes;
  String? get termsAndConditions;
  List<String>? get supplierIds;
  List<CreateRFQLineItemRequest>? get lineItems;
  Map<String, dynamic>? get metadata;

  /// Create a copy of CreateRFQRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateRFQRequestCopyWith<CreateRFQRequest> get copyWith =>
      _$CreateRFQRequestCopyWithImpl<CreateRFQRequest>(
          this as CreateRFQRequest, _$identity);

  /// Serializes this CreateRFQRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateRFQRequest &&
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
                .equals(other.supplierIds, supplierIds) &&
            const DeepCollectionEquality().equals(other.lineItems, lineItems) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(supplierIds),
      const DeepCollectionEquality().hash(lineItems),
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'CreateRFQRequest(title: $title, description: $description, responseDeadline: $responseDeadline, department: $department, project: $project, deliveryLocation: $deliveryLocation, paymentTerms: $paymentTerms, evaluationCriteria: $evaluationCriteria, notes: $notes, termsAndConditions: $termsAndConditions, supplierIds: $supplierIds, lineItems: $lineItems, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $CreateRFQRequestCopyWith<$Res> {
  factory $CreateRFQRequestCopyWith(
          CreateRFQRequest value, $Res Function(CreateRFQRequest) _then) =
      _$CreateRFQRequestCopyWithImpl;
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
class _$CreateRFQRequestCopyWithImpl<$Res>
    implements $CreateRFQRequestCopyWith<$Res> {
  _$CreateRFQRequestCopyWithImpl(this._self, this._then);

  final CreateRFQRequest _self;
  final $Res Function(CreateRFQRequest) _then;

  /// Create a copy of CreateRFQRequest
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      responseDeadline: null == responseDeadline
          ? _self.responseDeadline
          : responseDeadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      department: freezed == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _self.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryLocation: freezed == deliveryLocation
          ? _self.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _self.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      evaluationCriteria: freezed == evaluationCriteria
          ? _self.evaluationCriteria
          : evaluationCriteria // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _self.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierIds: freezed == supplierIds
          ? _self.supplierIds
          : supplierIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lineItems: freezed == lineItems
          ? _self.lineItems
          : lineItems // ignore: cast_nullable_to_non_nullable
              as List<CreateRFQLineItemRequest>?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateRFQRequest].
extension CreateRFQRequestPatterns on CreateRFQRequest {
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
    TResult Function(_CreateRFQRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateRFQRequest() when $default != null:
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
    TResult Function(_CreateRFQRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateRFQRequest():
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
    TResult? Function(_CreateRFQRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateRFQRequest() when $default != null:
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
            String title,
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
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateRFQRequest() when $default != null:
        return $default(
            _that.title,
            _that.description,
            _that.responseDeadline,
            _that.department,
            _that.project,
            _that.deliveryLocation,
            _that.paymentTerms,
            _that.evaluationCriteria,
            _that.notes,
            _that.termsAndConditions,
            _that.supplierIds,
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
            String title,
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
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateRFQRequest():
        return $default(
            _that.title,
            _that.description,
            _that.responseDeadline,
            _that.department,
            _that.project,
            _that.deliveryLocation,
            _that.paymentTerms,
            _that.evaluationCriteria,
            _that.notes,
            _that.termsAndConditions,
            _that.supplierIds,
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
            String title,
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
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateRFQRequest() when $default != null:
        return $default(
            _that.title,
            _that.description,
            _that.responseDeadline,
            _that.department,
            _that.project,
            _that.deliveryLocation,
            _that.paymentTerms,
            _that.evaluationCriteria,
            _that.notes,
            _that.termsAndConditions,
            _that.supplierIds,
            _that.lineItems,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateRFQRequest implements CreateRFQRequest {
  const _CreateRFQRequest(
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
  factory _CreateRFQRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateRFQRequestFromJson(json);

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

  /// Create a copy of CreateRFQRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateRFQRequestCopyWith<_CreateRFQRequest> get copyWith =>
      __$CreateRFQRequestCopyWithImpl<_CreateRFQRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateRFQRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateRFQRequest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'CreateRFQRequest(title: $title, description: $description, responseDeadline: $responseDeadline, department: $department, project: $project, deliveryLocation: $deliveryLocation, paymentTerms: $paymentTerms, evaluationCriteria: $evaluationCriteria, notes: $notes, termsAndConditions: $termsAndConditions, supplierIds: $supplierIds, lineItems: $lineItems, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$CreateRFQRequestCopyWith<$Res>
    implements $CreateRFQRequestCopyWith<$Res> {
  factory _$CreateRFQRequestCopyWith(
          _CreateRFQRequest value, $Res Function(_CreateRFQRequest) _then) =
      __$CreateRFQRequestCopyWithImpl;
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
class __$CreateRFQRequestCopyWithImpl<$Res>
    implements _$CreateRFQRequestCopyWith<$Res> {
  __$CreateRFQRequestCopyWithImpl(this._self, this._then);

  final _CreateRFQRequest _self;
  final $Res Function(_CreateRFQRequest) _then;

  /// Create a copy of CreateRFQRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_CreateRFQRequest(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      responseDeadline: null == responseDeadline
          ? _self.responseDeadline
          : responseDeadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      department: freezed == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _self.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryLocation: freezed == deliveryLocation
          ? _self.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _self.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      evaluationCriteria: freezed == evaluationCriteria
          ? _self.evaluationCriteria
          : evaluationCriteria // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _self.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierIds: freezed == supplierIds
          ? _self._supplierIds
          : supplierIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lineItems: freezed == lineItems
          ? _self._lineItems
          : lineItems // ignore: cast_nullable_to_non_nullable
              as List<CreateRFQLineItemRequest>?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$CreateRFQLineItemRequest {
  String get itemId;
  double get quantity;
  String get unit;
  DateTime get requiredDate;
  int? get sequence;
  String? get specification;
  String? get brandPreference;
  String? get notes;
  double? get budgetPrice;
  double? get maxPrice;
  Map<String, dynamic>? get technicalRequirements;
  Map<String, dynamic>? get attributes;

  /// Create a copy of CreateRFQLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateRFQLineItemRequestCopyWith<CreateRFQLineItemRequest> get copyWith =>
      _$CreateRFQLineItemRequestCopyWithImpl<CreateRFQLineItemRequest>(
          this as CreateRFQLineItemRequest, _$identity);

  /// Serializes this CreateRFQLineItemRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateRFQLineItemRequest &&
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
                .equals(other.technicalRequirements, technicalRequirements) &&
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
      sequence,
      specification,
      brandPreference,
      notes,
      budgetPrice,
      maxPrice,
      const DeepCollectionEquality().hash(technicalRequirements),
      const DeepCollectionEquality().hash(attributes));

  @override
  String toString() {
    return 'CreateRFQLineItemRequest(itemId: $itemId, quantity: $quantity, unit: $unit, requiredDate: $requiredDate, sequence: $sequence, specification: $specification, brandPreference: $brandPreference, notes: $notes, budgetPrice: $budgetPrice, maxPrice: $maxPrice, technicalRequirements: $technicalRequirements, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class $CreateRFQLineItemRequestCopyWith<$Res> {
  factory $CreateRFQLineItemRequestCopyWith(CreateRFQLineItemRequest value,
          $Res Function(CreateRFQLineItemRequest) _then) =
      _$CreateRFQLineItemRequestCopyWithImpl;
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
class _$CreateRFQLineItemRequestCopyWithImpl<$Res>
    implements $CreateRFQLineItemRequestCopyWith<$Res> {
  _$CreateRFQLineItemRequestCopyWithImpl(this._self, this._then);

  final CreateRFQLineItemRequest _self;
  final $Res Function(CreateRFQLineItemRequest) _then;

  /// Create a copy of CreateRFQLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
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
      sequence: freezed == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      specification: freezed == specification
          ? _self.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      brandPreference: freezed == brandPreference
          ? _self.brandPreference
          : brandPreference // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      budgetPrice: freezed == budgetPrice
          ? _self.budgetPrice
          : budgetPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      maxPrice: freezed == maxPrice
          ? _self.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      technicalRequirements: freezed == technicalRequirements
          ? _self.technicalRequirements
          : technicalRequirements // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      attributes: freezed == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateRFQLineItemRequest].
extension CreateRFQLineItemRequestPatterns on CreateRFQLineItemRequest {
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
    TResult Function(_CreateRFQLineItemRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateRFQLineItemRequest() when $default != null:
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
    TResult Function(_CreateRFQLineItemRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateRFQLineItemRequest():
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
    TResult? Function(_CreateRFQLineItemRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateRFQLineItemRequest() when $default != null:
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
            int? sequence,
            String? specification,
            String? brandPreference,
            String? notes,
            double? budgetPrice,
            double? maxPrice,
            Map<String, dynamic>? technicalRequirements,
            Map<String, dynamic>? attributes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateRFQLineItemRequest() when $default != null:
        return $default(
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.requiredDate,
            _that.sequence,
            _that.specification,
            _that.brandPreference,
            _that.notes,
            _that.budgetPrice,
            _that.maxPrice,
            _that.technicalRequirements,
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
            int? sequence,
            String? specification,
            String? brandPreference,
            String? notes,
            double? budgetPrice,
            double? maxPrice,
            Map<String, dynamic>? technicalRequirements,
            Map<String, dynamic>? attributes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateRFQLineItemRequest():
        return $default(
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.requiredDate,
            _that.sequence,
            _that.specification,
            _that.brandPreference,
            _that.notes,
            _that.budgetPrice,
            _that.maxPrice,
            _that.technicalRequirements,
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
            int? sequence,
            String? specification,
            String? brandPreference,
            String? notes,
            double? budgetPrice,
            double? maxPrice,
            Map<String, dynamic>? technicalRequirements,
            Map<String, dynamic>? attributes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateRFQLineItemRequest() when $default != null:
        return $default(
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.requiredDate,
            _that.sequence,
            _that.specification,
            _that.brandPreference,
            _that.notes,
            _that.budgetPrice,
            _that.maxPrice,
            _that.technicalRequirements,
            _that.attributes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateRFQLineItemRequest implements CreateRFQLineItemRequest {
  const _CreateRFQLineItemRequest(
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
  factory _CreateRFQLineItemRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateRFQLineItemRequestFromJson(json);

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

  /// Create a copy of CreateRFQLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateRFQLineItemRequestCopyWith<_CreateRFQLineItemRequest> get copyWith =>
      __$CreateRFQLineItemRequestCopyWithImpl<_CreateRFQLineItemRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateRFQLineItemRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateRFQLineItemRequest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'CreateRFQLineItemRequest(itemId: $itemId, quantity: $quantity, unit: $unit, requiredDate: $requiredDate, sequence: $sequence, specification: $specification, brandPreference: $brandPreference, notes: $notes, budgetPrice: $budgetPrice, maxPrice: $maxPrice, technicalRequirements: $technicalRequirements, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class _$CreateRFQLineItemRequestCopyWith<$Res>
    implements $CreateRFQLineItemRequestCopyWith<$Res> {
  factory _$CreateRFQLineItemRequestCopyWith(_CreateRFQLineItemRequest value,
          $Res Function(_CreateRFQLineItemRequest) _then) =
      __$CreateRFQLineItemRequestCopyWithImpl;
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
class __$CreateRFQLineItemRequestCopyWithImpl<$Res>
    implements _$CreateRFQLineItemRequestCopyWith<$Res> {
  __$CreateRFQLineItemRequestCopyWithImpl(this._self, this._then);

  final _CreateRFQLineItemRequest _self;
  final $Res Function(_CreateRFQLineItemRequest) _then;

  /// Create a copy of CreateRFQLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_CreateRFQLineItemRequest(
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
      sequence: freezed == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      specification: freezed == specification
          ? _self.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      brandPreference: freezed == brandPreference
          ? _self.brandPreference
          : brandPreference // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      budgetPrice: freezed == budgetPrice
          ? _self.budgetPrice
          : budgetPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      maxPrice: freezed == maxPrice
          ? _self.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      technicalRequirements: freezed == technicalRequirements
          ? _self._technicalRequirements
          : technicalRequirements // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      attributes: freezed == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$UpdateRFQRequest {
  String? get title;
  String? get description;
  DateTime? get responseDeadline;
  String? get department;
  String? get project;
  String? get deliveryLocation;
  String? get paymentTerms;
  String? get evaluationCriteria;
  String? get notes;
  String? get termsAndConditions;
  Map<String, dynamic>? get metadata;

  /// Create a copy of UpdateRFQRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateRFQRequestCopyWith<UpdateRFQRequest> get copyWith =>
      _$UpdateRFQRequestCopyWithImpl<UpdateRFQRequest>(
          this as UpdateRFQRequest, _$identity);

  /// Serializes this UpdateRFQRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateRFQRequest &&
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
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'UpdateRFQRequest(title: $title, description: $description, responseDeadline: $responseDeadline, department: $department, project: $project, deliveryLocation: $deliveryLocation, paymentTerms: $paymentTerms, evaluationCriteria: $evaluationCriteria, notes: $notes, termsAndConditions: $termsAndConditions, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $UpdateRFQRequestCopyWith<$Res> {
  factory $UpdateRFQRequestCopyWith(
          UpdateRFQRequest value, $Res Function(UpdateRFQRequest) _then) =
      _$UpdateRFQRequestCopyWithImpl;
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
class _$UpdateRFQRequestCopyWithImpl<$Res>
    implements $UpdateRFQRequestCopyWith<$Res> {
  _$UpdateRFQRequestCopyWithImpl(this._self, this._then);

  final UpdateRFQRequest _self;
  final $Res Function(UpdateRFQRequest) _then;

  /// Create a copy of UpdateRFQRequest
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      responseDeadline: freezed == responseDeadline
          ? _self.responseDeadline
          : responseDeadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      department: freezed == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _self.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryLocation: freezed == deliveryLocation
          ? _self.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _self.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      evaluationCriteria: freezed == evaluationCriteria
          ? _self.evaluationCriteria
          : evaluationCriteria // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _self.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateRFQRequest].
extension UpdateRFQRequestPatterns on UpdateRFQRequest {
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
    TResult Function(_UpdateRFQRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateRFQRequest() when $default != null:
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
    TResult Function(_UpdateRFQRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateRFQRequest():
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
    TResult? Function(_UpdateRFQRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateRFQRequest() when $default != null:
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
            String? title,
            String? description,
            DateTime? responseDeadline,
            String? department,
            String? project,
            String? deliveryLocation,
            String? paymentTerms,
            String? evaluationCriteria,
            String? notes,
            String? termsAndConditions,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateRFQRequest() when $default != null:
        return $default(
            _that.title,
            _that.description,
            _that.responseDeadline,
            _that.department,
            _that.project,
            _that.deliveryLocation,
            _that.paymentTerms,
            _that.evaluationCriteria,
            _that.notes,
            _that.termsAndConditions,
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
            String? title,
            String? description,
            DateTime? responseDeadline,
            String? department,
            String? project,
            String? deliveryLocation,
            String? paymentTerms,
            String? evaluationCriteria,
            String? notes,
            String? termsAndConditions,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateRFQRequest():
        return $default(
            _that.title,
            _that.description,
            _that.responseDeadline,
            _that.department,
            _that.project,
            _that.deliveryLocation,
            _that.paymentTerms,
            _that.evaluationCriteria,
            _that.notes,
            _that.termsAndConditions,
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
            String? title,
            String? description,
            DateTime? responseDeadline,
            String? department,
            String? project,
            String? deliveryLocation,
            String? paymentTerms,
            String? evaluationCriteria,
            String? notes,
            String? termsAndConditions,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateRFQRequest() when $default != null:
        return $default(
            _that.title,
            _that.description,
            _that.responseDeadline,
            _that.department,
            _that.project,
            _that.deliveryLocation,
            _that.paymentTerms,
            _that.evaluationCriteria,
            _that.notes,
            _that.termsAndConditions,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateRFQRequest implements UpdateRFQRequest {
  const _UpdateRFQRequest(
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
  factory _UpdateRFQRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateRFQRequestFromJson(json);

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

  /// Create a copy of UpdateRFQRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateRFQRequestCopyWith<_UpdateRFQRequest> get copyWith =>
      __$UpdateRFQRequestCopyWithImpl<_UpdateRFQRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateRFQRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateRFQRequest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'UpdateRFQRequest(title: $title, description: $description, responseDeadline: $responseDeadline, department: $department, project: $project, deliveryLocation: $deliveryLocation, paymentTerms: $paymentTerms, evaluationCriteria: $evaluationCriteria, notes: $notes, termsAndConditions: $termsAndConditions, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$UpdateRFQRequestCopyWith<$Res>
    implements $UpdateRFQRequestCopyWith<$Res> {
  factory _$UpdateRFQRequestCopyWith(
          _UpdateRFQRequest value, $Res Function(_UpdateRFQRequest) _then) =
      __$UpdateRFQRequestCopyWithImpl;
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
class __$UpdateRFQRequestCopyWithImpl<$Res>
    implements _$UpdateRFQRequestCopyWith<$Res> {
  __$UpdateRFQRequestCopyWithImpl(this._self, this._then);

  final _UpdateRFQRequest _self;
  final $Res Function(_UpdateRFQRequest) _then;

  /// Create a copy of UpdateRFQRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_UpdateRFQRequest(
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      responseDeadline: freezed == responseDeadline
          ? _self.responseDeadline
          : responseDeadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      department: freezed == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _self.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryLocation: freezed == deliveryLocation
          ? _self.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _self.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      evaluationCriteria: freezed == evaluationCriteria
          ? _self.evaluationCriteria
          : evaluationCriteria // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _self.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$RFQFilters {
  String? get status;
  String? get createdBy;
  String? get department;
  String? get project;
  DateTime? get rfqDateAfter;
  DateTime? get rfqDateBefore;
  DateTime? get responseDeadlineAfter;
  DateTime? get responseDeadlineBefore;
  List<String>? get supplierIds;
  List<String>? get itemIds;
  int? get page;
  int? get limit;
  String? get sortBy;
  String? get sortOrder;

  /// Create a copy of RFQFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RFQFiltersCopyWith<RFQFilters> get copyWith =>
      _$RFQFiltersCopyWithImpl<RFQFilters>(this as RFQFilters, _$identity);

  /// Serializes this RFQFilters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RFQFilters &&
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
                .equals(other.supplierIds, supplierIds) &&
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
      status,
      createdBy,
      department,
      project,
      rfqDateAfter,
      rfqDateBefore,
      responseDeadlineAfter,
      responseDeadlineBefore,
      const DeepCollectionEquality().hash(supplierIds),
      const DeepCollectionEquality().hash(itemIds),
      page,
      limit,
      sortBy,
      sortOrder);

  @override
  String toString() {
    return 'RFQFilters(status: $status, createdBy: $createdBy, department: $department, project: $project, rfqDateAfter: $rfqDateAfter, rfqDateBefore: $rfqDateBefore, responseDeadlineAfter: $responseDeadlineAfter, responseDeadlineBefore: $responseDeadlineBefore, supplierIds: $supplierIds, itemIds: $itemIds, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class $RFQFiltersCopyWith<$Res> {
  factory $RFQFiltersCopyWith(
          RFQFilters value, $Res Function(RFQFilters) _then) =
      _$RFQFiltersCopyWithImpl;
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
class _$RFQFiltersCopyWithImpl<$Res> implements $RFQFiltersCopyWith<$Res> {
  _$RFQFiltersCopyWithImpl(this._self, this._then);

  final RFQFilters _self;
  final $Res Function(RFQFilters) _then;

  /// Create a copy of RFQFilters
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _self.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      rfqDateAfter: freezed == rfqDateAfter
          ? _self.rfqDateAfter
          : rfqDateAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rfqDateBefore: freezed == rfqDateBefore
          ? _self.rfqDateBefore
          : rfqDateBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      responseDeadlineAfter: freezed == responseDeadlineAfter
          ? _self.responseDeadlineAfter
          : responseDeadlineAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      responseDeadlineBefore: freezed == responseDeadlineBefore
          ? _self.responseDeadlineBefore
          : responseDeadlineBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      supplierIds: freezed == supplierIds
          ? _self.supplierIds
          : supplierIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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

/// Adds pattern-matching-related methods to [RFQFilters].
extension RFQFiltersPatterns on RFQFilters {
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
    TResult Function(_RFQFilters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RFQFilters() when $default != null:
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
    TResult Function(_RFQFilters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RFQFilters():
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
    TResult? Function(_RFQFilters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RFQFilters() when $default != null:
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
            String? status,
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
            String? sortOrder)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RFQFilters() when $default != null:
        return $default(
            _that.status,
            _that.createdBy,
            _that.department,
            _that.project,
            _that.rfqDateAfter,
            _that.rfqDateBefore,
            _that.responseDeadlineAfter,
            _that.responseDeadlineBefore,
            _that.supplierIds,
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
            String? status,
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
            String? sortOrder)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RFQFilters():
        return $default(
            _that.status,
            _that.createdBy,
            _that.department,
            _that.project,
            _that.rfqDateAfter,
            _that.rfqDateBefore,
            _that.responseDeadlineAfter,
            _that.responseDeadlineBefore,
            _that.supplierIds,
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
            String? status,
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
            String? sortOrder)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RFQFilters() when $default != null:
        return $default(
            _that.status,
            _that.createdBy,
            _that.department,
            _that.project,
            _that.rfqDateAfter,
            _that.rfqDateBefore,
            _that.responseDeadlineAfter,
            _that.responseDeadlineBefore,
            _that.supplierIds,
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
class _RFQFilters extends RFQFilters {
  const _RFQFilters(
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
  factory _RFQFilters.fromJson(Map<String, dynamic> json) =>
      _$RFQFiltersFromJson(json);

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

  /// Create a copy of RFQFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RFQFiltersCopyWith<_RFQFilters> get copyWith =>
      __$RFQFiltersCopyWithImpl<_RFQFilters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RFQFiltersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RFQFilters &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'RFQFilters(status: $status, createdBy: $createdBy, department: $department, project: $project, rfqDateAfter: $rfqDateAfter, rfqDateBefore: $rfqDateBefore, responseDeadlineAfter: $responseDeadlineAfter, responseDeadlineBefore: $responseDeadlineBefore, supplierIds: $supplierIds, itemIds: $itemIds, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class _$RFQFiltersCopyWith<$Res>
    implements $RFQFiltersCopyWith<$Res> {
  factory _$RFQFiltersCopyWith(
          _RFQFilters value, $Res Function(_RFQFilters) _then) =
      __$RFQFiltersCopyWithImpl;
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
class __$RFQFiltersCopyWithImpl<$Res> implements _$RFQFiltersCopyWith<$Res> {
  __$RFQFiltersCopyWithImpl(this._self, this._then);

  final _RFQFilters _self;
  final $Res Function(_RFQFilters) _then;

  /// Create a copy of RFQFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_RFQFilters(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _self.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      rfqDateAfter: freezed == rfqDateAfter
          ? _self.rfqDateAfter
          : rfqDateAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rfqDateBefore: freezed == rfqDateBefore
          ? _self.rfqDateBefore
          : rfqDateBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      responseDeadlineAfter: freezed == responseDeadlineAfter
          ? _self.responseDeadlineAfter
          : responseDeadlineAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      responseDeadlineBefore: freezed == responseDeadlineBefore
          ? _self.responseDeadlineBefore
          : responseDeadlineBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      supplierIds: freezed == supplierIds
          ? _self._supplierIds
          : supplierIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
mixin _$AddRFQSupplierRequest {
  String get supplierId;
  String? get contactPerson;
  String? get contactEmail;
  String? get contactPhone;
  String? get notes;

  /// Create a copy of AddRFQSupplierRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddRFQSupplierRequestCopyWith<AddRFQSupplierRequest> get copyWith =>
      _$AddRFQSupplierRequestCopyWithImpl<AddRFQSupplierRequest>(
          this as AddRFQSupplierRequest, _$identity);

  /// Serializes this AddRFQSupplierRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddRFQSupplierRequest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, supplierId, contactPerson,
      contactEmail, contactPhone, notes);

  @override
  String toString() {
    return 'AddRFQSupplierRequest(supplierId: $supplierId, contactPerson: $contactPerson, contactEmail: $contactEmail, contactPhone: $contactPhone, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $AddRFQSupplierRequestCopyWith<$Res> {
  factory $AddRFQSupplierRequestCopyWith(AddRFQSupplierRequest value,
          $Res Function(AddRFQSupplierRequest) _then) =
      _$AddRFQSupplierRequestCopyWithImpl;
  @useResult
  $Res call(
      {String supplierId,
      String? contactPerson,
      String? contactEmail,
      String? contactPhone,
      String? notes});
}

/// @nodoc
class _$AddRFQSupplierRequestCopyWithImpl<$Res>
    implements $AddRFQSupplierRequestCopyWith<$Res> {
  _$AddRFQSupplierRequestCopyWithImpl(this._self, this._then);

  final AddRFQSupplierRequest _self;
  final $Res Function(AddRFQSupplierRequest) _then;

  /// Create a copy of AddRFQSupplierRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supplierId = null,
    Object? contactPerson = freezed,
    Object? contactEmail = freezed,
    Object? contactPhone = freezed,
    Object? notes = freezed,
  }) {
    return _then(_self.copyWith(
      supplierId: null == supplierId
          ? _self.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      contactPerson: freezed == contactPerson
          ? _self.contactPerson
          : contactPerson // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _self.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _self.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [AddRFQSupplierRequest].
extension AddRFQSupplierRequestPatterns on AddRFQSupplierRequest {
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
    TResult Function(_AddRFQSupplierRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AddRFQSupplierRequest() when $default != null:
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
    TResult Function(_AddRFQSupplierRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddRFQSupplierRequest():
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
    TResult? Function(_AddRFQSupplierRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddRFQSupplierRequest() when $default != null:
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
    TResult Function(String supplierId, String? contactPerson,
            String? contactEmail, String? contactPhone, String? notes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AddRFQSupplierRequest() when $default != null:
        return $default(_that.supplierId, _that.contactPerson,
            _that.contactEmail, _that.contactPhone, _that.notes);
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
    TResult Function(String supplierId, String? contactPerson,
            String? contactEmail, String? contactPhone, String? notes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddRFQSupplierRequest():
        return $default(_that.supplierId, _that.contactPerson,
            _that.contactEmail, _that.contactPhone, _that.notes);
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
    TResult? Function(String supplierId, String? contactPerson,
            String? contactEmail, String? contactPhone, String? notes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddRFQSupplierRequest() when $default != null:
        return $default(_that.supplierId, _that.contactPerson,
            _that.contactEmail, _that.contactPhone, _that.notes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AddRFQSupplierRequest implements AddRFQSupplierRequest {
  const _AddRFQSupplierRequest(
      {required this.supplierId,
      this.contactPerson,
      this.contactEmail,
      this.contactPhone,
      this.notes});
  factory _AddRFQSupplierRequest.fromJson(Map<String, dynamic> json) =>
      _$AddRFQSupplierRequestFromJson(json);

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

  /// Create a copy of AddRFQSupplierRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddRFQSupplierRequestCopyWith<_AddRFQSupplierRequest> get copyWith =>
      __$AddRFQSupplierRequestCopyWithImpl<_AddRFQSupplierRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AddRFQSupplierRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddRFQSupplierRequest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, supplierId, contactPerson,
      contactEmail, contactPhone, notes);

  @override
  String toString() {
    return 'AddRFQSupplierRequest(supplierId: $supplierId, contactPerson: $contactPerson, contactEmail: $contactEmail, contactPhone: $contactPhone, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$AddRFQSupplierRequestCopyWith<$Res>
    implements $AddRFQSupplierRequestCopyWith<$Res> {
  factory _$AddRFQSupplierRequestCopyWith(_AddRFQSupplierRequest value,
          $Res Function(_AddRFQSupplierRequest) _then) =
      __$AddRFQSupplierRequestCopyWithImpl;
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
class __$AddRFQSupplierRequestCopyWithImpl<$Res>
    implements _$AddRFQSupplierRequestCopyWith<$Res> {
  __$AddRFQSupplierRequestCopyWithImpl(this._self, this._then);

  final _AddRFQSupplierRequest _self;
  final $Res Function(_AddRFQSupplierRequest) _then;

  /// Create a copy of AddRFQSupplierRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? supplierId = null,
    Object? contactPerson = freezed,
    Object? contactEmail = freezed,
    Object? contactPhone = freezed,
    Object? notes = freezed,
  }) {
    return _then(_AddRFQSupplierRequest(
      supplierId: null == supplierId
          ? _self.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      contactPerson: freezed == contactPerson
          ? _self.contactPerson
          : contactPerson // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _self.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _self.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
