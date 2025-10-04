// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoctorProfileImpl _$$DoctorProfileImplFromJson(Map<String, dynamic> json) =>
    _$DoctorProfileImpl(
      uid: json['uid'] as String,
      fullName: json['fullName'] as String,
      specialty: json['specialty'] as String,
      yearsOfExperience: (json['yearsOfExperience'] as num).toInt(),
      clinic: ClinicInfo.fromJson(json['clinic'] as Map<String, dynamic>),
      acceptedInsurance: (json['acceptedInsurance'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      bio: json['bio'] as String?,
      profilePictureUrl: json['profilePictureUrl'] as String?,
      averageRating: (json['averageRating'] as num?)?.toDouble(),
      reviewCount: (json['reviewCount'] as num?)?.toInt(),
      updatedAt: const TimestampDateTimeConverter().fromJson(json['updatedAt']),
    );

Map<String, dynamic> _$$DoctorProfileImplToJson(
  _$DoctorProfileImpl instance,
) => <String, dynamic>{
  'uid': instance.uid,
  'fullName': instance.fullName,
  'specialty': instance.specialty,
  'yearsOfExperience': instance.yearsOfExperience,
  'clinic': instance.clinic,
  'acceptedInsurance': instance.acceptedInsurance,
  'bio': instance.bio,
  'profilePictureUrl': instance.profilePictureUrl,
  'averageRating': instance.averageRating,
  'reviewCount': instance.reviewCount,
  'updatedAt': const TimestampDateTimeConverter().toJson(instance.updatedAt),
};

_$ClinicInfoImpl _$$ClinicInfoImplFromJson(Map<String, dynamic> json) =>
    _$ClinicInfoImpl(
      name: json['name'] as String,
      address: json['address'] as String,
      location: const GeoPointConverter().fromJson(json['location']),
      phone: json['phone'] as String?,
      website: json['website'] as String?,
    );

Map<String, dynamic> _$$ClinicInfoImplToJson(_$ClinicInfoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'location': const GeoPointConverter().toJson(instance.location),
      'phone': instance.phone,
      'website': instance.website,
    };
