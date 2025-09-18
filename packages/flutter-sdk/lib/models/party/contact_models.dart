import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_models.freezed.dart';
part 'contact_models.g.dart';

/// Contact mechanism model
@freezed
class ContactMechanism with _$ContactMechanism {
  const factory ContactMechanism({
    required String id,
    required String partyId,
    required String type, // 'email', 'phone', 'mobile', 'fax', 'website', 'social'
    required String value,
    required bool isPrimary,
    required bool isActive,
    String? label,
    String? extension,
    String? countryCode,
    String? notes,
    DateTime? validFrom,
    DateTime? validTo,
    Map<String, dynamic>? metadata,
  }) = _ContactMechanism;

  factory ContactMechanism.fromJson(Map<String, dynamic> json) =>
      _$ContactMechanismFromJson(json);
}

/// Party address model
@freezed
class PartyAddress with _$PartyAddress {
  const factory PartyAddress({
    required String id,
    required String partyId,
    required String type, // 'billing', 'shipping', 'home', 'work', 'warehouse', 'office'
    required String addressLine1,
    required bool isPrimary,
    required bool isActive,
    String? addressLine2,
    String? addressLine3,
    String? city,
    String? state,
    String? postalCode,
    String? country,
    String? region,
    String? label,
    String? notes,
    double? latitude,
    double? longitude,
    DateTime? validFrom,
    DateTime? validTo,
    Map<String, dynamic>? metadata,
  }) = _PartyAddress;

  factory PartyAddress.fromJson(Map<String, dynamic> json) =>
      _$PartyAddressFromJson(json);
}

/// Create contact mechanism request
@freezed
class CreateContactMechanismRequest with _$CreateContactMechanismRequest {
  const factory CreateContactMechanismRequest({
    required String type,
    required String value,
    bool? isPrimary,
    String? label,
    String? extension,
    String? countryCode,
    String? notes,
    DateTime? validFrom,
    DateTime? validTo,
  }) = _CreateContactMechanismRequest;

  factory CreateContactMechanismRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateContactMechanismRequestFromJson(json);
}

/// Update contact mechanism request
@freezed
class UpdateContactMechanismRequest with _$UpdateContactMechanismRequest {
  const factory UpdateContactMechanismRequest({
    String? value,
    bool? isPrimary,
    bool? isActive,
    String? label,
    String? extension,
    String? countryCode,
    String? notes,
    DateTime? validFrom,
    DateTime? validTo,
  }) = _UpdateContactMechanismRequest;

  factory UpdateContactMechanismRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateContactMechanismRequestFromJson(json);
}

/// Create address request
@freezed
class CreateAddressRequest with _$CreateAddressRequest {
  const factory CreateAddressRequest({
    required String type,
    required String addressLine1,
    String? addressLine2,
    String? addressLine3,
    String? city,
    String? state,
    String? postalCode,
    String? country,
    String? region,
    bool? isPrimary,
    String? label,
    String? notes,
    double? latitude,
    double? longitude,
    DateTime? validFrom,
    DateTime? validTo,
  }) = _CreateAddressRequest;

  factory CreateAddressRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateAddressRequestFromJson(json);
}

/// Update address request
@freezed
class UpdateAddressRequest with _$UpdateAddressRequest {
  const factory UpdateAddressRequest({
    String? addressLine1,
    String? addressLine2,
    String? addressLine3,
    String? city,
    String? state,
    String? postalCode,
    String? country,
    String? region,
    bool? isPrimary,
    bool? isActive,
    String? label,
    String? notes,
    double? latitude,
    double? longitude,
    DateTime? validFrom,
    DateTime? validTo,
  }) = _UpdateAddressRequest;

  factory UpdateAddressRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateAddressRequestFromJson(json);
}