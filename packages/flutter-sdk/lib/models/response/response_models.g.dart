// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthResponseImpl _$$AuthResponseImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$AuthResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$AuthResponseImpl(
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

Map<String, dynamic> _$$AuthResponseImplToJson(_$AuthResponseImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'tokenType': instance.tokenType,
      'expiresIn': instance.expiresIn,
      'organizationId': instance.organizationId,
      'organizationName': instance.organizationName,
    };

_$PasswordResetResponseImpl _$$PasswordResetResponseImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PasswordResetResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$PasswordResetResponseImpl(
          message: $checkedConvert('message', (v) => v as String),
          success: $checkedConvert('success', (v) => v as bool),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PasswordResetResponseImplToJson(
        _$PasswordResetResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'success': instance.success,
    };

_$SuccessResponseImpl _$$SuccessResponseImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SuccessResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$SuccessResponseImpl(
          message: $checkedConvert('message', (v) => v as String),
          success: $checkedConvert('success', (v) => v as bool),
          data: $checkedConvert('data', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SuccessResponseImplToJson(
        _$SuccessResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'success': instance.success,
      'data': instance.data,
    };
