import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/firestore_converters.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class PatientProfile with _$PatientProfile {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory PatientProfile({
    required String uid,
    required String fullName,
    required DateTime dateOfBirth,
    required String gender,
    required String phone,
    required EmergencyContact emergencyContact,
    required InsuranceInfo insuranceInfo,
    String? address,
    @TimestampDateTimeConverter() DateTime? updatedAt,
  }) = _PatientProfile;

  factory PatientProfile.fromJson(Map<String, dynamic> json) =>
      _$PatientProfileFromJson(json);
}

@freezed
class EmergencyContact with _$EmergencyContact {
  const factory EmergencyContact({
    required String name,
    required String relationship,
    required String phone,
  }) = _EmergencyContact;

  factory EmergencyContact.fromJson(Map<String, dynamic> json) =>
      _$EmergencyContactFromJson(json);
}

@freezed
class InsuranceInfo with _$InsuranceInfo {
  const factory InsuranceInfo({
    required String provider,
    required String policyNumber,
  }) = _InsuranceInfo;

  factory InsuranceInfo.fromJson(Map<String, dynamic> json) =>
      _$InsuranceInfoFromJson(json);
}
