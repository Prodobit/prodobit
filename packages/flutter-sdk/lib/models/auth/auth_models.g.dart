// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginOTPResponse _$LoginOTPResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_LoginOTPResponse',
      json,
      ($checkedConvert) {
        final val = _LoginOTPResponse(
          success: $checkedConvert('success', (v) => v as bool),
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : LoginResponseData.fromJson(v as Map<String, dynamic>)),
          message: $checkedConvert('message', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$LoginOTPResponseToJson(_LoginOTPResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data?.toJson(),
      'message': instance.message,
    };

_LoginResponseData _$LoginResponseDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_LoginResponseData',
      json,
      ($checkedConvert) {
        final val = _LoginResponseData(
          user: $checkedConvert(
              'user', (v) => UserData.fromJson(v as Map<String, dynamic>)),
          session: $checkedConvert('session',
              (v) => SessionData.fromJson(v as Map<String, dynamic>)),
          authMethod: $checkedConvert('authMethod',
              (v) => AuthMethodData.fromJson(v as Map<String, dynamic>)),
          isNewUser: $checkedConvert('isNewUser', (v) => v as bool),
          refreshToken: $checkedConvert('refreshToken', (v) => v as String?),
          tenantMemberships: $checkedConvert(
              'tenantMemberships',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      TenantMembership.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$LoginResponseDataToJson(_LoginResponseData instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'session': instance.session.toJson(),
      'authMethod': instance.authMethod.toJson(),
      'isNewUser': instance.isNewUser,
      'refreshToken': instance.refreshToken,
      'tenantMemberships':
          instance.tenantMemberships?.map((e) => e.toJson()).toList(),
    };

_AuthMethodData _$AuthMethodDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_AuthMethodData',
      json,
      ($checkedConvert) {
        final val = _AuthMethodData(
          id: $checkedConvert('id', (v) => v as String),
          provider: $checkedConvert('provider', (v) => v as String),
          providerId: $checkedConvert('providerId', (v) => v as String),
          verified: $checkedConvert('verified', (v) => v as bool),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$AuthMethodDataToJson(_AuthMethodData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'provider': instance.provider,
      'providerId': instance.providerId,
      'verified': instance.verified,
      'metadata': instance.metadata,
    };

_OrganizationInfo _$OrganizationInfoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_OrganizationInfo',
      json,
      ($checkedConvert) {
        final val = _OrganizationInfo(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          plan: $checkedConvert('plan', (v) => v as String),
          isActive: $checkedConvert('isActive', (v) => v as bool),
          logo: $checkedConvert('logo', (v) => v as String?),
          domain: $checkedConvert('domain', (v) => v as String?),
          settings:
              $checkedConvert('settings', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$OrganizationInfoToJson(_OrganizationInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'plan': instance.plan,
      'isActive': instance.isActive,
      'logo': instance.logo,
      'domain': instance.domain,
      'settings': instance.settings,
    };

_OTPRequest _$OTPRequestFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_OTPRequest',
      json,
      ($checkedConvert) {
        final val = _OTPRequest(
          email: $checkedConvert('email', (v) => v as String),
          tenantId: $checkedConvert('tenantId', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$OTPRequestToJson(_OTPRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'tenantId': instance.tenantId,
    };

_OTPResponse _$OTPResponseFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_OTPResponse',
      json,
      ($checkedConvert) {
        final val = _OTPResponse(
          success: $checkedConvert('success', (v) => v as bool),
          message: $checkedConvert('message', (v) => v as String),
          expiresAt: $checkedConvert('expiresAt', (v) => v as String?),
          requiresTenantSelection:
              $checkedConvert('requiresTenantSelection', (v) => v as bool?),
          isNewUser: $checkedConvert('isNewUser', (v) => v as bool?),
          defaultTenantId:
              $checkedConvert('defaultTenantId', (v) => v as String?),
          defaultTenantName:
              $checkedConvert('defaultTenantName', (v) => v as String?),
          selectedTenantId:
              $checkedConvert('selectedTenantId', (v) => v as String?),
          selectedTenantName:
              $checkedConvert('selectedTenantName', (v) => v as String?),
          tenants: $checkedConvert(
              'tenants',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => TenantInfo.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$OTPResponseToJson(_OTPResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'expiresAt': instance.expiresAt,
      'requiresTenantSelection': instance.requiresTenantSelection,
      'isNewUser': instance.isNewUser,
      'defaultTenantId': instance.defaultTenantId,
      'defaultTenantName': instance.defaultTenantName,
      'selectedTenantId': instance.selectedTenantId,
      'selectedTenantName': instance.selectedTenantName,
      'tenants': instance.tenants?.map((e) => e.toJson()).toList(),
    };

_RefreshTokenRequest _$RefreshTokenRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_RefreshTokenRequest',
      json,
      ($checkedConvert) {
        final val = _RefreshTokenRequest(
          refreshToken: $checkedConvert('refreshToken', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$RefreshTokenRequestToJson(
        _RefreshTokenRequest instance) =>
    <String, dynamic>{
      'refreshToken': instance.refreshToken,
    };

_SessionData _$SessionDataFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_SessionData',
      json,
      ($checkedConvert) {
        final val = _SessionData(
          accessToken: $checkedConvert('accessToken', (v) => v as String),
          expiresAt: $checkedConvert('expiresAt', (v) => v as String),
          csrfToken: $checkedConvert('csrfToken', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$SessionDataToJson(_SessionData instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'expiresAt': instance.expiresAt,
      'csrfToken': instance.csrfToken,
    };

_TenantInfo _$TenantInfoFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_TenantInfo',
      json,
      ($checkedConvert) {
        final val = _TenantInfo(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          role: $checkedConvert('role', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$TenantInfoToJson(_TenantInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'role': instance.role,
    };

_TenantMembership _$TenantMembershipFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_TenantMembership',
      json,
      ($checkedConvert) {
        final val = _TenantMembership(
          id: $checkedConvert('id', (v) => v as String),
          userId: $checkedConvert('userId', (v) => v as String),
          tenantId: $checkedConvert('tenantId', (v) => v as String),
          roleId: $checkedConvert('roleId', (v) => v as String),
          roleName: $checkedConvert('roleName', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          permissions:
              $checkedConvert('permissions', (v) => v as Map<String, dynamic>),
          accessLevel: $checkedConvert('accessLevel', (v) => v as String),
          resourceRestrictions: $checkedConvert(
              'resourceRestrictions', (v) => v as Map<String, dynamic>),
          insertedAt: $checkedConvert('insertedAt', (v) => v as String),
          updatedAt: $checkedConvert('updatedAt', (v) => v as String),
          roleDescription:
              $checkedConvert('roleDescription', (v) => v as String?),
          roleColor: $checkedConvert('roleColor', (v) => v as String?),
          ipRestrictions: $checkedConvert(
              'ipRestrictions', (v) => v as Map<String, dynamic>?),
          timeRestrictions: $checkedConvert(
              'timeRestrictions', (v) => v as Map<String, dynamic>?),
          expiresAt: $checkedConvert('expiresAt', (v) => v as String?),
          invitedBy: $checkedConvert('invitedBy', (v) => v as String?),
          invitedAt: $checkedConvert('invitedAt', (v) => v as String?),
          joinedAt: $checkedConvert('joinedAt', (v) => v as String?),
          lastLoginAt: $checkedConvert('lastLoginAt', (v) => v as String?),
          deletedAt: $checkedConvert('deletedAt', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$TenantMembershipToJson(_TenantMembership instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'tenantId': instance.tenantId,
      'roleId': instance.roleId,
      'roleName': instance.roleName,
      'status': instance.status,
      'permissions': instance.permissions,
      'accessLevel': instance.accessLevel,
      'resourceRestrictions': instance.resourceRestrictions,
      'insertedAt': instance.insertedAt,
      'updatedAt': instance.updatedAt,
      'roleDescription': instance.roleDescription,
      'roleColor': instance.roleColor,
      'ipRestrictions': instance.ipRestrictions,
      'timeRestrictions': instance.timeRestrictions,
      'expiresAt': instance.expiresAt,
      'invitedBy': instance.invitedBy,
      'invitedAt': instance.invitedAt,
      'joinedAt': instance.joinedAt,
      'lastLoginAt': instance.lastLoginAt,
      'deletedAt': instance.deletedAt,
    };

_UserData _$UserDataFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_UserData',
      json,
      ($checkedConvert) {
        final val = _UserData(
          id: $checkedConvert('id', (v) => v as String),
          twoFactorEnabled:
              $checkedConvert('twoFactorEnabled', (v) => v as bool),
          status: $checkedConvert('status', (v) => v as String),
          insertedAt: $checkedConvert('insertedAt', (v) => v as String),
          updatedAt: $checkedConvert('updatedAt', (v) => v as String),
          displayName: $checkedConvert('displayName', (v) => v as String?),
          twoFactorSecret:
              $checkedConvert('twoFactorSecret', (v) => v as String?),
          deletedAt: $checkedConvert('deletedAt', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserDataToJson(_UserData instance) => <String, dynamic>{
      'id': instance.id,
      'twoFactorEnabled': instance.twoFactorEnabled,
      'status': instance.status,
      'insertedAt': instance.insertedAt,
      'updatedAt': instance.updatedAt,
      'displayName': instance.displayName,
      'twoFactorSecret': instance.twoFactorSecret,
      'deletedAt': instance.deletedAt,
    };

_UserProfile _$UserProfileFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_UserProfile',
      json,
      ($checkedConvert) {
        final val = _UserProfile(
          id: $checkedConvert('id', (v) => v as String),
          email: $checkedConvert('email', (v) => v as String),
          firstName: $checkedConvert('firstName', (v) => v as String),
          lastName: $checkedConvert('lastName', (v) => v as String),
          roles: $checkedConvert('roles',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          isActive: $checkedConvert('isActive', (v) => v as bool),
          createdAt:
              $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
          avatar: $checkedConvert('avatar', (v) => v as String?),
          updatedAt: $checkedConvert('updatedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserProfileToJson(_UserProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'roles': instance.roles,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt.toIso8601String(),
      'avatar': instance.avatar,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'metadata': instance.metadata,
    };

_VerifyOTPRequest _$VerifyOTPRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_VerifyOTPRequest',
      json,
      ($checkedConvert) {
        final val = _VerifyOTPRequest(
          email: $checkedConvert('email', (v) => v as String),
          code: $checkedConvert('code', (v) => v as String),
          tenantId: $checkedConvert('tenantId', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$VerifyOTPRequestToJson(_VerifyOTPRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'code': instance.code,
      'tenantId': instance.tenantId,
    };
