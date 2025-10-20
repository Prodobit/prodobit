// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$UserImpl',
      json,
      ($checkedConvert) {
        final val = _$UserImpl(
          id: $checkedConvert('id', (v) => v as String),
          email: $checkedConvert('email', (v) => v as String),
          firstName: $checkedConvert('firstName', (v) => v as String),
          lastName: $checkedConvert('lastName', (v) => v as String),
          roles: $checkedConvert('roles',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          createdAt:
              $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
          updatedAt: $checkedConvert('updatedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          lastLoginAt: $checkedConvert('lastLoginAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          isActive: $checkedConvert('isActive', (v) => v as bool?),
          avatarUrl: $checkedConvert('avatarUrl', (v) => v as String?),
          phone: $checkedConvert('phone', (v) => v as String?),
          timezone: $checkedConvert('timezone', (v) => v as String?),
          language: $checkedConvert('language', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'roles': instance.roles,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'lastLoginAt': instance.lastLoginAt?.toIso8601String(),
      'isActive': instance.isActive,
      'avatarUrl': instance.avatarUrl,
      'phone': instance.phone,
      'timezone': instance.timezone,
      'language': instance.language,
    };

_$UserUpdateRequestImpl _$$UserUpdateRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$UserUpdateRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$UserUpdateRequestImpl(
          firstName: $checkedConvert('firstName', (v) => v as String?),
          lastName: $checkedConvert('lastName', (v) => v as String?),
          phone: $checkedConvert('phone', (v) => v as String?),
          timezone: $checkedConvert('timezone', (v) => v as String?),
          language: $checkedConvert('language', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$UserUpdateRequestImplToJson(
        _$UserUpdateRequestImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phone': instance.phone,
      'timezone': instance.timezone,
      'language': instance.language,
    };
