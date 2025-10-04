// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientProfileImpl _$$PatientProfileImplFromJson(Map<String, dynamic> json) =>
    _$PatientProfileImpl(
      uid: json['uid'] as String,
      fullName: json['fullName'] as String,
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      gender: json['gender'] as String,
      phone: json['phone'] as String,
      emergencyContact: EmergencyContact.fromJson(
        json['emergencyContact'] as Map<String, dynamic>,
      ),
      insuranceInfo: InsuranceInfo.fromJson(
        json['insuranceInfo'] as Map<String, dynamic>,
      ),
      address: json['address'] as String?,
      updatedAt: const TimestampDateTimeConverter().fromJson(json['updatedAt']),
    );

Map<String, dynamic> _$$PatientProfileImplToJson(
  _$PatientProfileImpl instance,
) => <String, dynamic>{
  'uid': instance.uid,
  'fullName': instance.fullName,
  'dateOfBirth': instance.dateOfBirth.toIso8601String(),
  'gender': instance.gender,
  'phone': instance.phone,
  'emergencyContact': instance.emergencyContact,
  'insuranceInfo': instance.insuranceInfo,
  'address': instance.address,
  'updatedAt': const TimestampDateTimeConverter().toJson(instance.updatedAt),
};

_$EmergencyContactImpl _$$EmergencyContactImplFromJson(
  Map<String, dynamic> json,
) => _$EmergencyContactImpl(
  name: json['name'] as String,
  relationship: json['relationship'] as String,
  phone: json['phone'] as String,
);

Map<String, dynamic> _$$EmergencyContactImplToJson(
  _$EmergencyContactImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'relationship': instance.relationship,
  'phone': instance.phone,
};

_$InsuranceInfoImpl _$$InsuranceInfoImplFromJson(Map<String, dynamic> json) =>
    _$InsuranceInfoImpl(
      provider: json['provider'] as String,
      policyNumber: json['policyNumber'] as String,
    );

Map<String, dynamic> _$$InsuranceInfoImplToJson(_$InsuranceInfoImpl instance) =>
    <String, dynamic>{
      'provider': instance.provider,
      'policyNumber': instance.policyNumber,
    };
