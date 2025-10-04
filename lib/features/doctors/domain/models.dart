import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/firestore_converters.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class DoctorProfile with _$DoctorProfile {
  // ignore: invalid_annotation_target
  const factory DoctorProfile({
    required String uid,
    required String fullName,
    required String specialty,
    required int yearsOfExperience,
    required ClinicInfo clinic,
    required List<String> acceptedInsurance,
    String? bio,
    String? profilePictureUrl,
    double? averageRating,
    int? reviewCount,
    @TimestampDateTimeConverter() DateTime? updatedAt,
  }) = _DoctorProfile;

  factory DoctorProfile.fromJson(Map<String, dynamic> json) =>
      _$DoctorProfileFromJson(json);
}

extension DoctorProfileX on DoctorProfile {
  String get displayName => fullName.startsWith('Dr.') ? fullName : 'Dr. $fullName';
}

@freezed
class ClinicInfo with _$ClinicInfo {
  const factory ClinicInfo({
    required String name,
    required String address,
    @GeoPointConverter() GeoPoint? location,
    String? phone,
    String? website,
  }) = _ClinicInfo;

  factory ClinicInfo.fromJson(Map<String, dynamic> json) =>
      _$ClinicInfoFromJson(json);
}
