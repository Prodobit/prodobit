// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_AuthResponse',
      json,
      ($checkedConvert) {
        final val = _AuthResponse(
          accessToken: $checkedConvert('accessToken', (v) => v as String),
          refreshToken: $checkedConvert('refreshToken', (v) => v as String),
          tokenType: $checkedConvert('tokenType', (v) => v as String),
          expiresIn: $checkedConvert('expiresIn', (v) => (v as num).toInt()),
          organizationId:
              $checkedConvert('organizationId', (v) => v as String?),
          organizationName:
              $checkedConvert('organizationName', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$AuthResponseToJson(_AuthResponse instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'tokenType': instance.tokenType,
      'expiresIn': instance.expiresIn,
      'organizationId': instance.organizationId,
      'organizationName': instance.organizationName,
    };

_PasswordResetResponse _$PasswordResetResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_PasswordResetResponse',
      json,
      ($checkedConvert) {
        final val = _PasswordResetResponse(
          message: $checkedConvert('message', (v) => v as String),
          success: $checkedConvert('success', (v) => v as bool),
        );
        return val;
      },
    );

Map<String, dynamic> _$PasswordResetResponseToJson(
        _PasswordResetResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'success': instance.success,
    };

_SuccessResponse _$SuccessResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_SuccessResponse',
      json,
      ($checkedConvert) {
        final val = _SuccessResponse(
          message: $checkedConvert('message', (v) => v as String),
          success: $checkedConvert('success', (v) => v as bool),
          data: $checkedConvert('data', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$SuccessResponseToJson(_SuccessResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'success': instance.success,
      'data': instance.data,
    };
