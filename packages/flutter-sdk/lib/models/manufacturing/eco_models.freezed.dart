// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'eco_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Eco {
  String get id;
  String get ecoNumber;
  String get title;
  String get description;
  String
      get type; // 'bom_change', 'item_change', 'process_change', 'routing_change'
  String get priority; // 'low', 'medium', 'high', 'critical'
  String
      get status; // 'draft', 'pending_review', 'approved', 'rejected', 'implemented', 'cancelled'
  String get reason;
  DateTime get createdAt;
  DateTime get updatedAt;
  String? get requestedBy;
  String? get reviewedBy;
  String? get approvedBy;
  String? get implementedBy;
  DateTime? get targetImplementationDate;
  DateTime? get actualImplementationDate;
  DateTime? get approvedAt;
  DateTime? get rejectedAt;
  DateTime? get implementedAt;
  String? get rejectionReason;
  String? get implementationNotes;
  double? get estimatedCost;
  double? get actualCost;
  int? get estimatedHours;
  int? get actualHours;
  List<String>? get affectedBomIds;
  List<String>? get affectedItemIds;
  Map<String, dynamic>? get metadata;

  /// Create a copy of Eco
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EcoCopyWith<Eco> get copyWith =>
      _$EcoCopyWithImpl<Eco>(this as Eco, _$identity);

  /// Serializes this Eco to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Eco &&
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
                .equals(other.affectedBomIds, affectedBomIds) &&
            const DeepCollectionEquality()
                .equals(other.affectedItemIds, affectedItemIds) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
        const DeepCollectionEquality().hash(affectedBomIds),
        const DeepCollectionEquality().hash(affectedItemIds),
        const DeepCollectionEquality().hash(metadata)
      ]);

  @override
  String toString() {
    return 'Eco(id: $id, ecoNumber: $ecoNumber, title: $title, description: $description, type: $type, priority: $priority, status: $status, reason: $reason, createdAt: $createdAt, updatedAt: $updatedAt, requestedBy: $requestedBy, reviewedBy: $reviewedBy, approvedBy: $approvedBy, implementedBy: $implementedBy, targetImplementationDate: $targetImplementationDate, actualImplementationDate: $actualImplementationDate, approvedAt: $approvedAt, rejectedAt: $rejectedAt, implementedAt: $implementedAt, rejectionReason: $rejectionReason, implementationNotes: $implementationNotes, estimatedCost: $estimatedCost, actualCost: $actualCost, estimatedHours: $estimatedHours, actualHours: $actualHours, affectedBomIds: $affectedBomIds, affectedItemIds: $affectedItemIds, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $EcoCopyWith<$Res> {
  factory $EcoCopyWith(Eco value, $Res Function(Eco) _then) = _$EcoCopyWithImpl;
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
class _$EcoCopyWithImpl<$Res> implements $EcoCopyWith<$Res> {
  _$EcoCopyWithImpl(this._self, this._then);

  final Eco _self;
  final $Res Function(Eco) _then;

  /// Create a copy of Eco
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ecoNumber: null == ecoNumber
          ? _self.ecoNumber
          : ecoNumber // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requestedBy: freezed == requestedBy
          ? _self.requestedBy
          : requestedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewedBy: freezed == reviewedBy
          ? _self.reviewedBy
          : reviewedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedBy: freezed == approvedBy
          ? _self.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      implementedBy: freezed == implementedBy
          ? _self.implementedBy
          : implementedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      targetImplementationDate: freezed == targetImplementationDate
          ? _self.targetImplementationDate
          : targetImplementationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualImplementationDate: freezed == actualImplementationDate
          ? _self.actualImplementationDate
          : actualImplementationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAt: freezed == approvedAt
          ? _self.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _self.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      implementedAt: freezed == implementedAt
          ? _self.implementedAt
          : implementedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectionReason: freezed == rejectionReason
          ? _self.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      implementationNotes: freezed == implementationNotes
          ? _self.implementationNotes
          : implementationNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      estimatedCost: freezed == estimatedCost
          ? _self.estimatedCost
          : estimatedCost // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _self.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      estimatedHours: freezed == estimatedHours
          ? _self.estimatedHours
          : estimatedHours // ignore: cast_nullable_to_non_nullable
              as int?,
      actualHours: freezed == actualHours
          ? _self.actualHours
          : actualHours // ignore: cast_nullable_to_non_nullable
              as int?,
      affectedBomIds: freezed == affectedBomIds
          ? _self.affectedBomIds
          : affectedBomIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      affectedItemIds: freezed == affectedItemIds
          ? _self.affectedItemIds
          : affectedItemIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Eco].
extension EcoPatterns on Eco {
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
    TResult Function(_Eco value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Eco() when $default != null:
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
    TResult Function(_Eco value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Eco():
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
    TResult? Function(_Eco value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Eco() when $default != null:
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
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Eco() when $default != null:
        return $default(
            _that.id,
            _that.ecoNumber,
            _that.title,
            _that.description,
            _that.type,
            _that.priority,
            _that.status,
            _that.reason,
            _that.createdAt,
            _that.updatedAt,
            _that.requestedBy,
            _that.reviewedBy,
            _that.approvedBy,
            _that.implementedBy,
            _that.targetImplementationDate,
            _that.actualImplementationDate,
            _that.approvedAt,
            _that.rejectedAt,
            _that.implementedAt,
            _that.rejectionReason,
            _that.implementationNotes,
            _that.estimatedCost,
            _that.actualCost,
            _that.estimatedHours,
            _that.actualHours,
            _that.affectedBomIds,
            _that.affectedItemIds,
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
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Eco():
        return $default(
            _that.id,
            _that.ecoNumber,
            _that.title,
            _that.description,
            _that.type,
            _that.priority,
            _that.status,
            _that.reason,
            _that.createdAt,
            _that.updatedAt,
            _that.requestedBy,
            _that.reviewedBy,
            _that.approvedBy,
            _that.implementedBy,
            _that.targetImplementationDate,
            _that.actualImplementationDate,
            _that.approvedAt,
            _that.rejectedAt,
            _that.implementedAt,
            _that.rejectionReason,
            _that.implementationNotes,
            _that.estimatedCost,
            _that.actualCost,
            _that.estimatedHours,
            _that.actualHours,
            _that.affectedBomIds,
            _that.affectedItemIds,
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
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Eco() when $default != null:
        return $default(
            _that.id,
            _that.ecoNumber,
            _that.title,
            _that.description,
            _that.type,
            _that.priority,
            _that.status,
            _that.reason,
            _that.createdAt,
            _that.updatedAt,
            _that.requestedBy,
            _that.reviewedBy,
            _that.approvedBy,
            _that.implementedBy,
            _that.targetImplementationDate,
            _that.actualImplementationDate,
            _that.approvedAt,
            _that.rejectedAt,
            _that.implementedAt,
            _that.rejectionReason,
            _that.implementationNotes,
            _that.estimatedCost,
            _that.actualCost,
            _that.estimatedHours,
            _that.actualHours,
            _that.affectedBomIds,
            _that.affectedItemIds,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Eco implements Eco {
  const _Eco(
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
  factory _Eco.fromJson(Map<String, dynamic> json) => _$EcoFromJson(json);

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

  /// Create a copy of Eco
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EcoCopyWith<_Eco> get copyWith =>
      __$EcoCopyWithImpl<_Eco>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EcoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Eco &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'Eco(id: $id, ecoNumber: $ecoNumber, title: $title, description: $description, type: $type, priority: $priority, status: $status, reason: $reason, createdAt: $createdAt, updatedAt: $updatedAt, requestedBy: $requestedBy, reviewedBy: $reviewedBy, approvedBy: $approvedBy, implementedBy: $implementedBy, targetImplementationDate: $targetImplementationDate, actualImplementationDate: $actualImplementationDate, approvedAt: $approvedAt, rejectedAt: $rejectedAt, implementedAt: $implementedAt, rejectionReason: $rejectionReason, implementationNotes: $implementationNotes, estimatedCost: $estimatedCost, actualCost: $actualCost, estimatedHours: $estimatedHours, actualHours: $actualHours, affectedBomIds: $affectedBomIds, affectedItemIds: $affectedItemIds, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$EcoCopyWith<$Res> implements $EcoCopyWith<$Res> {
  factory _$EcoCopyWith(_Eco value, $Res Function(_Eco) _then) =
      __$EcoCopyWithImpl;
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
class __$EcoCopyWithImpl<$Res> implements _$EcoCopyWith<$Res> {
  __$EcoCopyWithImpl(this._self, this._then);

  final _Eco _self;
  final $Res Function(_Eco) _then;

  /// Create a copy of Eco
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_Eco(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ecoNumber: null == ecoNumber
          ? _self.ecoNumber
          : ecoNumber // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requestedBy: freezed == requestedBy
          ? _self.requestedBy
          : requestedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewedBy: freezed == reviewedBy
          ? _self.reviewedBy
          : reviewedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedBy: freezed == approvedBy
          ? _self.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      implementedBy: freezed == implementedBy
          ? _self.implementedBy
          : implementedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      targetImplementationDate: freezed == targetImplementationDate
          ? _self.targetImplementationDate
          : targetImplementationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualImplementationDate: freezed == actualImplementationDate
          ? _self.actualImplementationDate
          : actualImplementationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAt: freezed == approvedAt
          ? _self.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _self.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      implementedAt: freezed == implementedAt
          ? _self.implementedAt
          : implementedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectionReason: freezed == rejectionReason
          ? _self.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      implementationNotes: freezed == implementationNotes
          ? _self.implementationNotes
          : implementationNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      estimatedCost: freezed == estimatedCost
          ? _self.estimatedCost
          : estimatedCost // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _self.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      estimatedHours: freezed == estimatedHours
          ? _self.estimatedHours
          : estimatedHours // ignore: cast_nullable_to_non_nullable
              as int?,
      actualHours: freezed == actualHours
          ? _self.actualHours
          : actualHours // ignore: cast_nullable_to_non_nullable
              as int?,
      affectedBomIds: freezed == affectedBomIds
          ? _self._affectedBomIds
          : affectedBomIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      affectedItemIds: freezed == affectedItemIds
          ? _self._affectedItemIds
          : affectedItemIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$CreateEcoRequest {
  String get ecoNumber;
  String get title;
  String get description;
  String get type;
  String get priority;
  String get reason;
  DateTime? get targetImplementationDate;
  double? get estimatedCost;
  int? get estimatedHours;
  List<String>? get affectedBomIds;
  List<String>? get affectedItemIds;
  Map<String, dynamic>? get metadata;

  /// Create a copy of CreateEcoRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateEcoRequestCopyWith<CreateEcoRequest> get copyWith =>
      _$CreateEcoRequestCopyWithImpl<CreateEcoRequest>(
          this as CreateEcoRequest, _$identity);

  /// Serializes this CreateEcoRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateEcoRequest &&
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
                .equals(other.affectedBomIds, affectedBomIds) &&
            const DeepCollectionEquality()
                .equals(other.affectedItemIds, affectedItemIds) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(affectedBomIds),
      const DeepCollectionEquality().hash(affectedItemIds),
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'CreateEcoRequest(ecoNumber: $ecoNumber, title: $title, description: $description, type: $type, priority: $priority, reason: $reason, targetImplementationDate: $targetImplementationDate, estimatedCost: $estimatedCost, estimatedHours: $estimatedHours, affectedBomIds: $affectedBomIds, affectedItemIds: $affectedItemIds, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $CreateEcoRequestCopyWith<$Res> {
  factory $CreateEcoRequestCopyWith(
          CreateEcoRequest value, $Res Function(CreateEcoRequest) _then) =
      _$CreateEcoRequestCopyWithImpl;
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
class _$CreateEcoRequestCopyWithImpl<$Res>
    implements $CreateEcoRequestCopyWith<$Res> {
  _$CreateEcoRequestCopyWithImpl(this._self, this._then);

  final CreateEcoRequest _self;
  final $Res Function(CreateEcoRequest) _then;

  /// Create a copy of CreateEcoRequest
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      ecoNumber: null == ecoNumber
          ? _self.ecoNumber
          : ecoNumber // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      targetImplementationDate: freezed == targetImplementationDate
          ? _self.targetImplementationDate
          : targetImplementationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estimatedCost: freezed == estimatedCost
          ? _self.estimatedCost
          : estimatedCost // ignore: cast_nullable_to_non_nullable
              as double?,
      estimatedHours: freezed == estimatedHours
          ? _self.estimatedHours
          : estimatedHours // ignore: cast_nullable_to_non_nullable
              as int?,
      affectedBomIds: freezed == affectedBomIds
          ? _self.affectedBomIds
          : affectedBomIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      affectedItemIds: freezed == affectedItemIds
          ? _self.affectedItemIds
          : affectedItemIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateEcoRequest].
extension CreateEcoRequestPatterns on CreateEcoRequest {
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
    TResult Function(_CreateEcoRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateEcoRequest() when $default != null:
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
    TResult Function(_CreateEcoRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateEcoRequest():
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
    TResult? Function(_CreateEcoRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateEcoRequest() when $default != null:
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
            String ecoNumber,
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
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateEcoRequest() when $default != null:
        return $default(
            _that.ecoNumber,
            _that.title,
            _that.description,
            _that.type,
            _that.priority,
            _that.reason,
            _that.targetImplementationDate,
            _that.estimatedCost,
            _that.estimatedHours,
            _that.affectedBomIds,
            _that.affectedItemIds,
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
            String ecoNumber,
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
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateEcoRequest():
        return $default(
            _that.ecoNumber,
            _that.title,
            _that.description,
            _that.type,
            _that.priority,
            _that.reason,
            _that.targetImplementationDate,
            _that.estimatedCost,
            _that.estimatedHours,
            _that.affectedBomIds,
            _that.affectedItemIds,
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
            String ecoNumber,
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
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateEcoRequest() when $default != null:
        return $default(
            _that.ecoNumber,
            _that.title,
            _that.description,
            _that.type,
            _that.priority,
            _that.reason,
            _that.targetImplementationDate,
            _that.estimatedCost,
            _that.estimatedHours,
            _that.affectedBomIds,
            _that.affectedItemIds,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateEcoRequest implements CreateEcoRequest {
  const _CreateEcoRequest(
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
  factory _CreateEcoRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateEcoRequestFromJson(json);

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

  /// Create a copy of CreateEcoRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateEcoRequestCopyWith<_CreateEcoRequest> get copyWith =>
      __$CreateEcoRequestCopyWithImpl<_CreateEcoRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateEcoRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateEcoRequest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'CreateEcoRequest(ecoNumber: $ecoNumber, title: $title, description: $description, type: $type, priority: $priority, reason: $reason, targetImplementationDate: $targetImplementationDate, estimatedCost: $estimatedCost, estimatedHours: $estimatedHours, affectedBomIds: $affectedBomIds, affectedItemIds: $affectedItemIds, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$CreateEcoRequestCopyWith<$Res>
    implements $CreateEcoRequestCopyWith<$Res> {
  factory _$CreateEcoRequestCopyWith(
          _CreateEcoRequest value, $Res Function(_CreateEcoRequest) _then) =
      __$CreateEcoRequestCopyWithImpl;
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
class __$CreateEcoRequestCopyWithImpl<$Res>
    implements _$CreateEcoRequestCopyWith<$Res> {
  __$CreateEcoRequestCopyWithImpl(this._self, this._then);

  final _CreateEcoRequest _self;
  final $Res Function(_CreateEcoRequest) _then;

  /// Create a copy of CreateEcoRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_CreateEcoRequest(
      ecoNumber: null == ecoNumber
          ? _self.ecoNumber
          : ecoNumber // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      targetImplementationDate: freezed == targetImplementationDate
          ? _self.targetImplementationDate
          : targetImplementationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estimatedCost: freezed == estimatedCost
          ? _self.estimatedCost
          : estimatedCost // ignore: cast_nullable_to_non_nullable
              as double?,
      estimatedHours: freezed == estimatedHours
          ? _self.estimatedHours
          : estimatedHours // ignore: cast_nullable_to_non_nullable
              as int?,
      affectedBomIds: freezed == affectedBomIds
          ? _self._affectedBomIds
          : affectedBomIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      affectedItemIds: freezed == affectedItemIds
          ? _self._affectedItemIds
          : affectedItemIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$UpdateEcoRequest {
  String? get title;
  String? get description;
  String? get type;
  String? get priority;
  String? get reason;
  DateTime? get targetImplementationDate;
  double? get estimatedCost;
  int? get estimatedHours;
  List<String>? get affectedBomIds;
  List<String>? get affectedItemIds;
  Map<String, dynamic>? get metadata;

  /// Create a copy of UpdateEcoRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateEcoRequestCopyWith<UpdateEcoRequest> get copyWith =>
      _$UpdateEcoRequestCopyWithImpl<UpdateEcoRequest>(
          this as UpdateEcoRequest, _$identity);

  /// Serializes this UpdateEcoRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateEcoRequest &&
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
                .equals(other.affectedBomIds, affectedBomIds) &&
            const DeepCollectionEquality()
                .equals(other.affectedItemIds, affectedItemIds) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(affectedBomIds),
      const DeepCollectionEquality().hash(affectedItemIds),
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'UpdateEcoRequest(title: $title, description: $description, type: $type, priority: $priority, reason: $reason, targetImplementationDate: $targetImplementationDate, estimatedCost: $estimatedCost, estimatedHours: $estimatedHours, affectedBomIds: $affectedBomIds, affectedItemIds: $affectedItemIds, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $UpdateEcoRequestCopyWith<$Res> {
  factory $UpdateEcoRequestCopyWith(
          UpdateEcoRequest value, $Res Function(UpdateEcoRequest) _then) =
      _$UpdateEcoRequestCopyWithImpl;
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
class _$UpdateEcoRequestCopyWithImpl<$Res>
    implements $UpdateEcoRequestCopyWith<$Res> {
  _$UpdateEcoRequestCopyWithImpl(this._self, this._then);

  final UpdateEcoRequest _self;
  final $Res Function(UpdateEcoRequest) _then;

  /// Create a copy of UpdateEcoRequest
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      targetImplementationDate: freezed == targetImplementationDate
          ? _self.targetImplementationDate
          : targetImplementationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estimatedCost: freezed == estimatedCost
          ? _self.estimatedCost
          : estimatedCost // ignore: cast_nullable_to_non_nullable
              as double?,
      estimatedHours: freezed == estimatedHours
          ? _self.estimatedHours
          : estimatedHours // ignore: cast_nullable_to_non_nullable
              as int?,
      affectedBomIds: freezed == affectedBomIds
          ? _self.affectedBomIds
          : affectedBomIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      affectedItemIds: freezed == affectedItemIds
          ? _self.affectedItemIds
          : affectedItemIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateEcoRequest].
extension UpdateEcoRequestPatterns on UpdateEcoRequest {
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
    TResult Function(_UpdateEcoRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateEcoRequest() when $default != null:
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
    TResult Function(_UpdateEcoRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateEcoRequest():
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
    TResult? Function(_UpdateEcoRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateEcoRequest() when $default != null:
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
            String? type,
            String? priority,
            String? reason,
            DateTime? targetImplementationDate,
            double? estimatedCost,
            int? estimatedHours,
            List<String>? affectedBomIds,
            List<String>? affectedItemIds,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateEcoRequest() when $default != null:
        return $default(
            _that.title,
            _that.description,
            _that.type,
            _that.priority,
            _that.reason,
            _that.targetImplementationDate,
            _that.estimatedCost,
            _that.estimatedHours,
            _that.affectedBomIds,
            _that.affectedItemIds,
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
            String? type,
            String? priority,
            String? reason,
            DateTime? targetImplementationDate,
            double? estimatedCost,
            int? estimatedHours,
            List<String>? affectedBomIds,
            List<String>? affectedItemIds,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateEcoRequest():
        return $default(
            _that.title,
            _that.description,
            _that.type,
            _that.priority,
            _that.reason,
            _that.targetImplementationDate,
            _that.estimatedCost,
            _that.estimatedHours,
            _that.affectedBomIds,
            _that.affectedItemIds,
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
            String? type,
            String? priority,
            String? reason,
            DateTime? targetImplementationDate,
            double? estimatedCost,
            int? estimatedHours,
            List<String>? affectedBomIds,
            List<String>? affectedItemIds,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateEcoRequest() when $default != null:
        return $default(
            _that.title,
            _that.description,
            _that.type,
            _that.priority,
            _that.reason,
            _that.targetImplementationDate,
            _that.estimatedCost,
            _that.estimatedHours,
            _that.affectedBomIds,
            _that.affectedItemIds,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateEcoRequest implements UpdateEcoRequest {
  const _UpdateEcoRequest(
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
  factory _UpdateEcoRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateEcoRequestFromJson(json);

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

  /// Create a copy of UpdateEcoRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateEcoRequestCopyWith<_UpdateEcoRequest> get copyWith =>
      __$UpdateEcoRequestCopyWithImpl<_UpdateEcoRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateEcoRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateEcoRequest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'UpdateEcoRequest(title: $title, description: $description, type: $type, priority: $priority, reason: $reason, targetImplementationDate: $targetImplementationDate, estimatedCost: $estimatedCost, estimatedHours: $estimatedHours, affectedBomIds: $affectedBomIds, affectedItemIds: $affectedItemIds, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$UpdateEcoRequestCopyWith<$Res>
    implements $UpdateEcoRequestCopyWith<$Res> {
  factory _$UpdateEcoRequestCopyWith(
          _UpdateEcoRequest value, $Res Function(_UpdateEcoRequest) _then) =
      __$UpdateEcoRequestCopyWithImpl;
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
class __$UpdateEcoRequestCopyWithImpl<$Res>
    implements _$UpdateEcoRequestCopyWith<$Res> {
  __$UpdateEcoRequestCopyWithImpl(this._self, this._then);

  final _UpdateEcoRequest _self;
  final $Res Function(_UpdateEcoRequest) _then;

  /// Create a copy of UpdateEcoRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_UpdateEcoRequest(
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      targetImplementationDate: freezed == targetImplementationDate
          ? _self.targetImplementationDate
          : targetImplementationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estimatedCost: freezed == estimatedCost
          ? _self.estimatedCost
          : estimatedCost // ignore: cast_nullable_to_non_nullable
              as double?,
      estimatedHours: freezed == estimatedHours
          ? _self.estimatedHours
          : estimatedHours // ignore: cast_nullable_to_non_nullable
              as int?,
      affectedBomIds: freezed == affectedBomIds
          ? _self._affectedBomIds
          : affectedBomIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      affectedItemIds: freezed == affectedItemIds
          ? _self._affectedItemIds
          : affectedItemIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$ApproveEcoRequest {
  String? get notes;
  DateTime? get targetImplementationDate;

  /// Create a copy of ApproveEcoRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApproveEcoRequestCopyWith<ApproveEcoRequest> get copyWith =>
      _$ApproveEcoRequestCopyWithImpl<ApproveEcoRequest>(
          this as ApproveEcoRequest, _$identity);

  /// Serializes this ApproveEcoRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApproveEcoRequest &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(
                    other.targetImplementationDate, targetImplementationDate) ||
                other.targetImplementationDate == targetImplementationDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, notes, targetImplementationDate);

  @override
  String toString() {
    return 'ApproveEcoRequest(notes: $notes, targetImplementationDate: $targetImplementationDate)';
  }
}

/// @nodoc
abstract mixin class $ApproveEcoRequestCopyWith<$Res> {
  factory $ApproveEcoRequestCopyWith(
          ApproveEcoRequest value, $Res Function(ApproveEcoRequest) _then) =
      _$ApproveEcoRequestCopyWithImpl;
  @useResult
  $Res call({String? notes, DateTime? targetImplementationDate});
}

/// @nodoc
class _$ApproveEcoRequestCopyWithImpl<$Res>
    implements $ApproveEcoRequestCopyWith<$Res> {
  _$ApproveEcoRequestCopyWithImpl(this._self, this._then);

  final ApproveEcoRequest _self;
  final $Res Function(ApproveEcoRequest) _then;

  /// Create a copy of ApproveEcoRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = freezed,
    Object? targetImplementationDate = freezed,
  }) {
    return _then(_self.copyWith(
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      targetImplementationDate: freezed == targetImplementationDate
          ? _self.targetImplementationDate
          : targetImplementationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ApproveEcoRequest].
extension ApproveEcoRequestPatterns on ApproveEcoRequest {
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
    TResult Function(_ApproveEcoRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ApproveEcoRequest() when $default != null:
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
    TResult Function(_ApproveEcoRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApproveEcoRequest():
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
    TResult? Function(_ApproveEcoRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApproveEcoRequest() when $default != null:
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
    TResult Function(String? notes, DateTime? targetImplementationDate)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ApproveEcoRequest() when $default != null:
        return $default(_that.notes, _that.targetImplementationDate);
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
    TResult Function(String? notes, DateTime? targetImplementationDate)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApproveEcoRequest():
        return $default(_that.notes, _that.targetImplementationDate);
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
    TResult? Function(String? notes, DateTime? targetImplementationDate)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApproveEcoRequest() when $default != null:
        return $default(_that.notes, _that.targetImplementationDate);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ApproveEcoRequest implements ApproveEcoRequest {
  const _ApproveEcoRequest({this.notes, this.targetImplementationDate});
  factory _ApproveEcoRequest.fromJson(Map<String, dynamic> json) =>
      _$ApproveEcoRequestFromJson(json);

  @override
  final String? notes;
  @override
  final DateTime? targetImplementationDate;

  /// Create a copy of ApproveEcoRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ApproveEcoRequestCopyWith<_ApproveEcoRequest> get copyWith =>
      __$ApproveEcoRequestCopyWithImpl<_ApproveEcoRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ApproveEcoRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApproveEcoRequest &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(
                    other.targetImplementationDate, targetImplementationDate) ||
                other.targetImplementationDate == targetImplementationDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, notes, targetImplementationDate);

  @override
  String toString() {
    return 'ApproveEcoRequest(notes: $notes, targetImplementationDate: $targetImplementationDate)';
  }
}

/// @nodoc
abstract mixin class _$ApproveEcoRequestCopyWith<$Res>
    implements $ApproveEcoRequestCopyWith<$Res> {
  factory _$ApproveEcoRequestCopyWith(
          _ApproveEcoRequest value, $Res Function(_ApproveEcoRequest) _then) =
      __$ApproveEcoRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String? notes, DateTime? targetImplementationDate});
}

/// @nodoc
class __$ApproveEcoRequestCopyWithImpl<$Res>
    implements _$ApproveEcoRequestCopyWith<$Res> {
  __$ApproveEcoRequestCopyWithImpl(this._self, this._then);

  final _ApproveEcoRequest _self;
  final $Res Function(_ApproveEcoRequest) _then;

  /// Create a copy of ApproveEcoRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? notes = freezed,
    Object? targetImplementationDate = freezed,
  }) {
    return _then(_ApproveEcoRequest(
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      targetImplementationDate: freezed == targetImplementationDate
          ? _self.targetImplementationDate
          : targetImplementationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
mixin _$RejectEcoRequest {
  String get reason;
  String? get notes;

  /// Create a copy of RejectEcoRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RejectEcoRequestCopyWith<RejectEcoRequest> get copyWith =>
      _$RejectEcoRequestCopyWithImpl<RejectEcoRequest>(
          this as RejectEcoRequest, _$identity);

  /// Serializes this RejectEcoRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RejectEcoRequest &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason, notes);

  @override
  String toString() {
    return 'RejectEcoRequest(reason: $reason, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $RejectEcoRequestCopyWith<$Res> {
  factory $RejectEcoRequestCopyWith(
          RejectEcoRequest value, $Res Function(RejectEcoRequest) _then) =
      _$RejectEcoRequestCopyWithImpl;
  @useResult
  $Res call({String reason, String? notes});
}

/// @nodoc
class _$RejectEcoRequestCopyWithImpl<$Res>
    implements $RejectEcoRequestCopyWith<$Res> {
  _$RejectEcoRequestCopyWithImpl(this._self, this._then);

  final RejectEcoRequest _self;
  final $Res Function(RejectEcoRequest) _then;

  /// Create a copy of RejectEcoRequest
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

/// Adds pattern-matching-related methods to [RejectEcoRequest].
extension RejectEcoRequestPatterns on RejectEcoRequest {
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
    TResult Function(_RejectEcoRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RejectEcoRequest() when $default != null:
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
    TResult Function(_RejectEcoRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RejectEcoRequest():
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
    TResult? Function(_RejectEcoRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RejectEcoRequest() when $default != null:
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
      case _RejectEcoRequest() when $default != null:
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
      case _RejectEcoRequest():
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
      case _RejectEcoRequest() when $default != null:
        return $default(_that.reason, _that.notes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RejectEcoRequest implements RejectEcoRequest {
  const _RejectEcoRequest({required this.reason, this.notes});
  factory _RejectEcoRequest.fromJson(Map<String, dynamic> json) =>
      _$RejectEcoRequestFromJson(json);

  @override
  final String reason;
  @override
  final String? notes;

  /// Create a copy of RejectEcoRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RejectEcoRequestCopyWith<_RejectEcoRequest> get copyWith =>
      __$RejectEcoRequestCopyWithImpl<_RejectEcoRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RejectEcoRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RejectEcoRequest &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason, notes);

  @override
  String toString() {
    return 'RejectEcoRequest(reason: $reason, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$RejectEcoRequestCopyWith<$Res>
    implements $RejectEcoRequestCopyWith<$Res> {
  factory _$RejectEcoRequestCopyWith(
          _RejectEcoRequest value, $Res Function(_RejectEcoRequest) _then) =
      __$RejectEcoRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String reason, String? notes});
}

/// @nodoc
class __$RejectEcoRequestCopyWithImpl<$Res>
    implements _$RejectEcoRequestCopyWith<$Res> {
  __$RejectEcoRequestCopyWithImpl(this._self, this._then);

  final _RejectEcoRequest _self;
  final $Res Function(_RejectEcoRequest) _then;

  /// Create a copy of RejectEcoRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reason = null,
    Object? notes = freezed,
  }) {
    return _then(_RejectEcoRequest(
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

/// @nodoc
mixin _$EcoFilters {
  String? get type;
  String? get priority;
  String? get status;
  String? get requestedBy;
  String? get reviewedBy;
  DateTime? get createdAfter;
  DateTime? get createdBefore;
  DateTime? get targetImplementationAfter;
  DateTime? get targetImplementationBefore;
  List<String>? get affectedBomIds;
  List<String>? get affectedItemIds;
  int? get page;
  int? get limit;
  String? get sortBy;
  String? get sortOrder;

  /// Create a copy of EcoFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EcoFiltersCopyWith<EcoFilters> get copyWith =>
      _$EcoFiltersCopyWithImpl<EcoFilters>(this as EcoFilters, _$identity);

  /// Serializes this EcoFilters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EcoFilters &&
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
                .equals(other.affectedBomIds, affectedBomIds) &&
            const DeepCollectionEquality()
                .equals(other.affectedItemIds, affectedItemIds) &&
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
      type,
      priority,
      status,
      requestedBy,
      reviewedBy,
      createdAfter,
      createdBefore,
      targetImplementationAfter,
      targetImplementationBefore,
      const DeepCollectionEquality().hash(affectedBomIds),
      const DeepCollectionEquality().hash(affectedItemIds),
      page,
      limit,
      sortBy,
      sortOrder);

  @override
  String toString() {
    return 'EcoFilters(type: $type, priority: $priority, status: $status, requestedBy: $requestedBy, reviewedBy: $reviewedBy, createdAfter: $createdAfter, createdBefore: $createdBefore, targetImplementationAfter: $targetImplementationAfter, targetImplementationBefore: $targetImplementationBefore, affectedBomIds: $affectedBomIds, affectedItemIds: $affectedItemIds, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class $EcoFiltersCopyWith<$Res> {
  factory $EcoFiltersCopyWith(
          EcoFilters value, $Res Function(EcoFilters) _then) =
      _$EcoFiltersCopyWithImpl;
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
class _$EcoFiltersCopyWithImpl<$Res> implements $EcoFiltersCopyWith<$Res> {
  _$EcoFiltersCopyWithImpl(this._self, this._then);

  final EcoFilters _self;
  final $Res Function(EcoFilters) _then;

  /// Create a copy of EcoFilters
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedBy: freezed == requestedBy
          ? _self.requestedBy
          : requestedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewedBy: freezed == reviewedBy
          ? _self.reviewedBy
          : reviewedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAfter: freezed == createdAfter
          ? _self.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _self.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      targetImplementationAfter: freezed == targetImplementationAfter
          ? _self.targetImplementationAfter
          : targetImplementationAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      targetImplementationBefore: freezed == targetImplementationBefore
          ? _self.targetImplementationBefore
          : targetImplementationBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      affectedBomIds: freezed == affectedBomIds
          ? _self.affectedBomIds
          : affectedBomIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      affectedItemIds: freezed == affectedItemIds
          ? _self.affectedItemIds
          : affectedItemIds // ignore: cast_nullable_to_non_nullable
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

/// Adds pattern-matching-related methods to [EcoFilters].
extension EcoFiltersPatterns on EcoFilters {
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
    TResult Function(_EcoFilters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EcoFilters() when $default != null:
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
    TResult Function(_EcoFilters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EcoFilters():
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
    TResult? Function(_EcoFilters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EcoFilters() when $default != null:
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
            String? type,
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
            String? sortOrder)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EcoFilters() when $default != null:
        return $default(
            _that.type,
            _that.priority,
            _that.status,
            _that.requestedBy,
            _that.reviewedBy,
            _that.createdAfter,
            _that.createdBefore,
            _that.targetImplementationAfter,
            _that.targetImplementationBefore,
            _that.affectedBomIds,
            _that.affectedItemIds,
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
            String? type,
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
            String? sortOrder)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EcoFilters():
        return $default(
            _that.type,
            _that.priority,
            _that.status,
            _that.requestedBy,
            _that.reviewedBy,
            _that.createdAfter,
            _that.createdBefore,
            _that.targetImplementationAfter,
            _that.targetImplementationBefore,
            _that.affectedBomIds,
            _that.affectedItemIds,
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
            String? type,
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
            String? sortOrder)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EcoFilters() when $default != null:
        return $default(
            _that.type,
            _that.priority,
            _that.status,
            _that.requestedBy,
            _that.reviewedBy,
            _that.createdAfter,
            _that.createdBefore,
            _that.targetImplementationAfter,
            _that.targetImplementationBefore,
            _that.affectedBomIds,
            _that.affectedItemIds,
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
class _EcoFilters extends EcoFilters {
  const _EcoFilters(
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
  factory _EcoFilters.fromJson(Map<String, dynamic> json) =>
      _$EcoFiltersFromJson(json);

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

  /// Create a copy of EcoFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EcoFiltersCopyWith<_EcoFilters> get copyWith =>
      __$EcoFiltersCopyWithImpl<_EcoFilters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EcoFiltersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EcoFilters &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'EcoFilters(type: $type, priority: $priority, status: $status, requestedBy: $requestedBy, reviewedBy: $reviewedBy, createdAfter: $createdAfter, createdBefore: $createdBefore, targetImplementationAfter: $targetImplementationAfter, targetImplementationBefore: $targetImplementationBefore, affectedBomIds: $affectedBomIds, affectedItemIds: $affectedItemIds, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class _$EcoFiltersCopyWith<$Res>
    implements $EcoFiltersCopyWith<$Res> {
  factory _$EcoFiltersCopyWith(
          _EcoFilters value, $Res Function(_EcoFilters) _then) =
      __$EcoFiltersCopyWithImpl;
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
class __$EcoFiltersCopyWithImpl<$Res> implements _$EcoFiltersCopyWith<$Res> {
  __$EcoFiltersCopyWithImpl(this._self, this._then);

  final _EcoFilters _self;
  final $Res Function(_EcoFilters) _then;

  /// Create a copy of EcoFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_EcoFilters(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedBy: freezed == requestedBy
          ? _self.requestedBy
          : requestedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewedBy: freezed == reviewedBy
          ? _self.reviewedBy
          : reviewedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAfter: freezed == createdAfter
          ? _self.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _self.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      targetImplementationAfter: freezed == targetImplementationAfter
          ? _self.targetImplementationAfter
          : targetImplementationAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      targetImplementationBefore: freezed == targetImplementationBefore
          ? _self.targetImplementationBefore
          : targetImplementationBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      affectedBomIds: freezed == affectedBomIds
          ? _self._affectedBomIds
          : affectedBomIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      affectedItemIds: freezed == affectedItemIds
          ? _self._affectedItemIds
          : affectedItemIds // ignore: cast_nullable_to_non_nullable
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

// dart format on
