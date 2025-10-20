// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TenantImpl _$$TenantImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$TenantImpl',
      json,
      ($checkedConvert) {
        final val = _$TenantImpl(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          slug: $checkedConvert('slug', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          createdAt:
              $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
          description: $checkedConvert('description', (v) => v as String?),
          domain: $checkedConvert('domain', (v) => v as String?),
          logoUrl: $checkedConvert('logoUrl', (v) => v as String?),
          contactEmail: $checkedConvert('contactEmail', (v) => v as String?),
          contactPhone: $checkedConvert('contactPhone', (v) => v as String?),
          address: $checkedConvert('address', (v) => v as String?),
          timezone: $checkedConvert('timezone', (v) => v as String?),
          currency: $checkedConvert('currency', (v) => v as String?),
          language: $checkedConvert('language', (v) => v as String?),
          settings:
              $checkedConvert('settings', (v) => v as Map<String, dynamic>?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$TenantImplToJson(_$TenantImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'description': instance.description,
      'domain': instance.domain,
      'logoUrl': instance.logoUrl,
      'contactEmail': instance.contactEmail,
      'contactPhone': instance.contactPhone,
      'address': instance.address,
      'timezone': instance.timezone,
      'currency': instance.currency,
      'language': instance.language,
      'settings': instance.settings,
      'metadata': instance.metadata,
    };

_$TenantMemberImpl _$$TenantMemberImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$TenantMemberImpl',
      json,
      ($checkedConvert) {
        final val = _$TenantMemberImpl(
          id: $checkedConvert('id', (v) => v as String),
          tenantId: $checkedConvert('tenantId', (v) => v as String),
          userId: $checkedConvert('userId', (v) => v as String),
          role: $checkedConvert('role', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          createdAt:
              $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
          invitedAt: $checkedConvert('invitedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          joinedAt: $checkedConvert('joinedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          suspendedAt: $checkedConvert('suspendedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          invitedBy: $checkedConvert('invitedBy', (v) => v as String?),
          invitationToken:
              $checkedConvert('invitationToken', (v) => v as String?),
          invitationExpiresAt: $checkedConvert('invitationExpiresAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          permissions: $checkedConvert('permissions',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$TenantMemberImplToJson(_$TenantMemberImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tenantId': instance.tenantId,
      'userId': instance.userId,
      'role': instance.role,
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'invitedAt': instance.invitedAt?.toIso8601String(),
      'joinedAt': instance.joinedAt?.toIso8601String(),
      'suspendedAt': instance.suspendedAt?.toIso8601String(),
      'invitedBy': instance.invitedBy,
      'invitationToken': instance.invitationToken,
      'invitationExpiresAt': instance.invitationExpiresAt?.toIso8601String(),
      'permissions': instance.permissions,
      'metadata': instance.metadata,
    };

_$TenantRoleImpl _$$TenantRoleImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$TenantRoleImpl',
      json,
      ($checkedConvert) {
        final val = _$TenantRoleImpl(
          id: $checkedConvert('id', (v) => v as String),
          tenantId: $checkedConvert('tenantId', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          displayName: $checkedConvert('displayName', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          permissions: $checkedConvert('permissions',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          isDefault: $checkedConvert('isDefault', (v) => v as bool),
          createdAt:
              $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$TenantRoleImplToJson(_$TenantRoleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tenantId': instance.tenantId,
      'name': instance.name,
      'displayName': instance.displayName,
      'description': instance.description,
      'permissions': instance.permissions,
      'isDefault': instance.isDefault,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'metadata': instance.metadata,
    };

_$TenantInvitationImpl _$$TenantInvitationImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$TenantInvitationImpl',
      json,
      ($checkedConvert) {
        final val = _$TenantInvitationImpl(
          id: $checkedConvert('id', (v) => v as String),
          tenantId: $checkedConvert('tenantId', (v) => v as String),
          email: $checkedConvert('email', (v) => v as String),
          role: $checkedConvert('role', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          token: $checkedConvert('token', (v) => v as String),
          expiresAt:
              $checkedConvert('expiresAt', (v) => DateTime.parse(v as String)),
          createdAt:
              $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
          invitedBy: $checkedConvert('invitedBy', (v) => v as String?),
          firstName: $checkedConvert('firstName', (v) => v as String?),
          lastName: $checkedConvert('lastName', (v) => v as String?),
          acceptedAt: $checkedConvert('acceptedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          rejectedAt: $checkedConvert('rejectedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          rejectionReason:
              $checkedConvert('rejectionReason', (v) => v as String?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$TenantInvitationImplToJson(
        _$TenantInvitationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tenantId': instance.tenantId,
      'email': instance.email,
      'role': instance.role,
      'status': instance.status,
      'token': instance.token,
      'expiresAt': instance.expiresAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'invitedBy': instance.invitedBy,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'acceptedAt': instance.acceptedAt?.toIso8601String(),
      'rejectedAt': instance.rejectedAt?.toIso8601String(),
      'rejectionReason': instance.rejectionReason,
      'metadata': instance.metadata,
    };

_$CreateTenantRequestImpl _$$CreateTenantRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CreateTenantRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$CreateTenantRequestImpl(
          name: $checkedConvert('name', (v) => v as String),
          slug: $checkedConvert('slug', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          domain: $checkedConvert('domain', (v) => v as String?),
          contactEmail: $checkedConvert('contactEmail', (v) => v as String?),
          contactPhone: $checkedConvert('contactPhone', (v) => v as String?),
          address: $checkedConvert('address', (v) => v as String?),
          timezone: $checkedConvert('timezone', (v) => v as String?),
          currency: $checkedConvert('currency', (v) => v as String?),
          language: $checkedConvert('language', (v) => v as String?),
          settings:
              $checkedConvert('settings', (v) => v as Map<String, dynamic>?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CreateTenantRequestImplToJson(
        _$CreateTenantRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'domain': instance.domain,
      'contactEmail': instance.contactEmail,
      'contactPhone': instance.contactPhone,
      'address': instance.address,
      'timezone': instance.timezone,
      'currency': instance.currency,
      'language': instance.language,
      'settings': instance.settings,
      'metadata': instance.metadata,
    };

_$UpdateTenantRequestImpl _$$UpdateTenantRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$UpdateTenantRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$UpdateTenantRequestImpl(
          name: $checkedConvert('name', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          domain: $checkedConvert('domain', (v) => v as String?),
          contactEmail: $checkedConvert('contactEmail', (v) => v as String?),
          contactPhone: $checkedConvert('contactPhone', (v) => v as String?),
          address: $checkedConvert('address', (v) => v as String?),
          timezone: $checkedConvert('timezone', (v) => v as String?),
          currency: $checkedConvert('currency', (v) => v as String?),
          language: $checkedConvert('language', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
          settings:
              $checkedConvert('settings', (v) => v as Map<String, dynamic>?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$UpdateTenantRequestImplToJson(
        _$UpdateTenantRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'domain': instance.domain,
      'contactEmail': instance.contactEmail,
      'contactPhone': instance.contactPhone,
      'address': instance.address,
      'timezone': instance.timezone,
      'currency': instance.currency,
      'language': instance.language,
      'status': instance.status,
      'settings': instance.settings,
      'metadata': instance.metadata,
    };

_$CreateInvitationRequestImpl _$$CreateInvitationRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CreateInvitationRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$CreateInvitationRequestImpl(
          email: $checkedConvert('email', (v) => v as String),
          role: $checkedConvert('role', (v) => v as String),
          firstName: $checkedConvert('firstName', (v) => v as String?),
          lastName: $checkedConvert('lastName', (v) => v as String?),
          expiresAt: $checkedConvert('expiresAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CreateInvitationRequestImplToJson(
        _$CreateInvitationRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'role': instance.role,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'metadata': instance.metadata,
    };

_$UpdateMembershipRequestImpl _$$UpdateMembershipRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$UpdateMembershipRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$UpdateMembershipRequestImpl(
          role: $checkedConvert('role', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
          permissions: $checkedConvert('permissions',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$UpdateMembershipRequestImplToJson(
        _$UpdateMembershipRequestImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'status': instance.status,
      'permissions': instance.permissions,
      'metadata': instance.metadata,
    };

_$TenantFiltersImpl _$$TenantFiltersImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$TenantFiltersImpl',
      json,
      ($checkedConvert) {
        final val = _$TenantFiltersImpl(
          status: $checkedConvert('status', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          domain: $checkedConvert('domain', (v) => v as String?),
          createdAfter: $checkedConvert('createdAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          createdBefore: $checkedConvert('createdBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          page: $checkedConvert('page', (v) => (v as num?)?.toInt()),
          limit: $checkedConvert('limit', (v) => (v as num?)?.toInt()),
          sortBy: $checkedConvert('sortBy', (v) => v as String?),
          sortOrder: $checkedConvert('sortOrder', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$TenantFiltersImplToJson(_$TenantFiltersImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'name': instance.name,
      'domain': instance.domain,
      'createdAfter': instance.createdAfter?.toIso8601String(),
      'createdBefore': instance.createdBefore?.toIso8601String(),
      'page': instance.page,
      'limit': instance.limit,
      'sortBy': instance.sortBy,
      'sortOrder': instance.sortOrder,
    };

_$TenantMemberFiltersImpl _$$TenantMemberFiltersImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$TenantMemberFiltersImpl',
      json,
      ($checkedConvert) {
        final val = _$TenantMemberFiltersImpl(
          role: $checkedConvert('role', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
          userId: $checkedConvert('userId', (v) => v as String?),
          joinedAfter: $checkedConvert('joinedAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          joinedBefore: $checkedConvert('joinedBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          page: $checkedConvert('page', (v) => (v as num?)?.toInt()),
          limit: $checkedConvert('limit', (v) => (v as num?)?.toInt()),
          sortBy: $checkedConvert('sortBy', (v) => v as String?),
          sortOrder: $checkedConvert('sortOrder', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$TenantMemberFiltersImplToJson(
        _$TenantMemberFiltersImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'status': instance.status,
      'userId': instance.userId,
      'joinedAfter': instance.joinedAfter?.toIso8601String(),
      'joinedBefore': instance.joinedBefore?.toIso8601String(),
      'page': instance.page,
      'limit': instance.limit,
      'sortBy': instance.sortBy,
      'sortOrder': instance.sortOrder,
    };

_$TenantInvitationFiltersImpl _$$TenantInvitationFiltersImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$TenantInvitationFiltersImpl',
      json,
      ($checkedConvert) {
        final val = _$TenantInvitationFiltersImpl(
          status: $checkedConvert('status', (v) => v as String?),
          role: $checkedConvert('role', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
          invitedBy: $checkedConvert('invitedBy', (v) => v as String?),
          createdAfter: $checkedConvert('createdAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          createdBefore: $checkedConvert('createdBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          expiresAfter: $checkedConvert('expiresAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          expiresBefore: $checkedConvert('expiresBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          page: $checkedConvert('page', (v) => (v as num?)?.toInt()),
          limit: $checkedConvert('limit', (v) => (v as num?)?.toInt()),
          sortBy: $checkedConvert('sortBy', (v) => v as String?),
          sortOrder: $checkedConvert('sortOrder', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$TenantInvitationFiltersImplToJson(
        _$TenantInvitationFiltersImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'role': instance.role,
      'email': instance.email,
      'invitedBy': instance.invitedBy,
      'createdAfter': instance.createdAfter?.toIso8601String(),
      'createdBefore': instance.createdBefore?.toIso8601String(),
      'expiresAfter': instance.expiresAfter?.toIso8601String(),
      'expiresBefore': instance.expiresBefore?.toIso8601String(),
      'page': instance.page,
      'limit': instance.limit,
      'sortBy': instance.sortBy,
      'sortOrder': instance.sortOrder,
    };
