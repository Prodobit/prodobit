import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prodobit_flutter_sdk/models/common/common_models.dart';

part 'party_models.freezed.dart';
part 'party_models.g.dart';

/// Party creation request
@freezed
class CreatePartyRequest with _$CreatePartyRequest {
  const factory CreatePartyRequest({
    required String name,
    required String type,
    String? code,
    String? email,
    String? phone,
    String? taxId,
    Address? address,
    ContactInfo? contactInfo,
    Map<String, dynamic>? metadata,
  }) = _CreatePartyRequest;

  factory CreatePartyRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePartyRequestFromJson(json);
}

/// Party (customer/supplier) model
@freezed
class Party with _$Party {
  const factory Party({
    required String id,
    required String name,
    required String type,
    required DateTime createdAt,
    String? code,
    String? email,
    String? phone,
    String? taxId,
    Address? address,
    ContactInfo? contactInfo,
    String? organizationId,
    bool? isActive,
    DateTime? updatedAt,
    Map<String, dynamic>? metadata,
  }) = _Party;

  factory Party.fromJson(Map<String, dynamic> json) => _$PartyFromJson(json);
}

/// Update party request
@freezed
class UpdatePartyRequest with _$UpdatePartyRequest {
  const factory UpdatePartyRequest({
    String? name,
    String? description,
    bool? isActive,
    Map<String, dynamic>? attributes,
    Map<String, dynamic>? metadata,
  }) = _UpdatePartyRequest;

  factory UpdatePartyRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdatePartyRequestFromJson(json);
}
