// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DoctorProfile _$DoctorProfileFromJson(Map<String, dynamic> json) {
  return _DoctorProfile.fromJson(json);
}

/// @nodoc
mixin _$DoctorProfile {
  String get uid => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get specialty => throw _privateConstructorUsedError;
  int get yearsOfExperience => throw _privateConstructorUsedError;
  ClinicInfo get clinic => throw _privateConstructorUsedError;
  List<String> get acceptedInsurance => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get profilePictureUrl => throw _privateConstructorUsedError;
  double? get averageRating => throw _privateConstructorUsedError;
  int? get reviewCount => throw _privateConstructorUsedError;
  @TimestampDateTimeConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this DoctorProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DoctorProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorProfileCopyWith<DoctorProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorProfileCopyWith<$Res> {
  factory $DoctorProfileCopyWith(
    DoctorProfile value,
    $Res Function(DoctorProfile) then,
  ) = _$DoctorProfileCopyWithImpl<$Res, DoctorProfile>;
  @useResult
  $Res call({
    String uid,
    String fullName,
    String specialty,
    int yearsOfExperience,
    ClinicInfo clinic,
    List<String> acceptedInsurance,
    String? bio,
    String? profilePictureUrl,
    double? averageRating,
    int? reviewCount,
    @TimestampDateTimeConverter() DateTime? updatedAt,
  });

  $ClinicInfoCopyWith<$Res> get clinic;
}

/// @nodoc
class _$DoctorProfileCopyWithImpl<$Res, $Val extends DoctorProfile>
    implements $DoctorProfileCopyWith<$Res> {
  _$DoctorProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? fullName = null,
    Object? specialty = null,
    Object? yearsOfExperience = null,
    Object? clinic = null,
    Object? acceptedInsurance = null,
    Object? bio = freezed,
    Object? profilePictureUrl = freezed,
    Object? averageRating = freezed,
    Object? reviewCount = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            uid: null == uid
                ? _value.uid
                : uid // ignore: cast_nullable_to_non_nullable
                      as String,
            fullName: null == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String,
            specialty: null == specialty
                ? _value.specialty
                : specialty // ignore: cast_nullable_to_non_nullable
                      as String,
            yearsOfExperience: null == yearsOfExperience
                ? _value.yearsOfExperience
                : yearsOfExperience // ignore: cast_nullable_to_non_nullable
                      as int,
            clinic: null == clinic
                ? _value.clinic
                : clinic // ignore: cast_nullable_to_non_nullable
                      as ClinicInfo,
            acceptedInsurance: null == acceptedInsurance
                ? _value.acceptedInsurance
                : acceptedInsurance // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            bio: freezed == bio
                ? _value.bio
                : bio // ignore: cast_nullable_to_non_nullable
                      as String?,
            profilePictureUrl: freezed == profilePictureUrl
                ? _value.profilePictureUrl
                : profilePictureUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            averageRating: freezed == averageRating
                ? _value.averageRating
                : averageRating // ignore: cast_nullable_to_non_nullable
                      as double?,
            reviewCount: freezed == reviewCount
                ? _value.reviewCount
                : reviewCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }

  /// Create a copy of DoctorProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClinicInfoCopyWith<$Res> get clinic {
    return $ClinicInfoCopyWith<$Res>(_value.clinic, (value) {
      return _then(_value.copyWith(clinic: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DoctorProfileImplCopyWith<$Res>
    implements $DoctorProfileCopyWith<$Res> {
  factory _$$DoctorProfileImplCopyWith(
    _$DoctorProfileImpl value,
    $Res Function(_$DoctorProfileImpl) then,
  ) = __$$DoctorProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String uid,
    String fullName,
    String specialty,
    int yearsOfExperience,
    ClinicInfo clinic,
    List<String> acceptedInsurance,
    String? bio,
    String? profilePictureUrl,
    double? averageRating,
    int? reviewCount,
    @TimestampDateTimeConverter() DateTime? updatedAt,
  });

  @override
  $ClinicInfoCopyWith<$Res> get clinic;
}

/// @nodoc
class __$$DoctorProfileImplCopyWithImpl<$Res>
    extends _$DoctorProfileCopyWithImpl<$Res, _$DoctorProfileImpl>
    implements _$$DoctorProfileImplCopyWith<$Res> {
  __$$DoctorProfileImplCopyWithImpl(
    _$DoctorProfileImpl _value,
    $Res Function(_$DoctorProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? fullName = null,
    Object? specialty = null,
    Object? yearsOfExperience = null,
    Object? clinic = null,
    Object? acceptedInsurance = null,
    Object? bio = freezed,
    Object? profilePictureUrl = freezed,
    Object? averageRating = freezed,
    Object? reviewCount = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$DoctorProfileImpl(
        uid: null == uid
            ? _value.uid
            : uid // ignore: cast_nullable_to_non_nullable
                  as String,
        fullName: null == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String,
        specialty: null == specialty
            ? _value.specialty
            : specialty // ignore: cast_nullable_to_non_nullable
                  as String,
        yearsOfExperience: null == yearsOfExperience
            ? _value.yearsOfExperience
            : yearsOfExperience // ignore: cast_nullable_to_non_nullable
                  as int,
        clinic: null == clinic
            ? _value.clinic
            : clinic // ignore: cast_nullable_to_non_nullable
                  as ClinicInfo,
        acceptedInsurance: null == acceptedInsurance
            ? _value._acceptedInsurance
            : acceptedInsurance // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        bio: freezed == bio
            ? _value.bio
            : bio // ignore: cast_nullable_to_non_nullable
                  as String?,
        profilePictureUrl: freezed == profilePictureUrl
            ? _value.profilePictureUrl
            : profilePictureUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        averageRating: freezed == averageRating
            ? _value.averageRating
            : averageRating // ignore: cast_nullable_to_non_nullable
                  as double?,
        reviewCount: freezed == reviewCount
            ? _value.reviewCount
            : reviewCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$DoctorProfileImpl implements _DoctorProfile {
  const _$DoctorProfileImpl({
    required this.uid,
    required this.fullName,
    required this.specialty,
    required this.yearsOfExperience,
    required this.clinic,
    required final List<String> acceptedInsurance,
    this.bio,
    this.profilePictureUrl,
    this.averageRating,
    this.reviewCount,
    @TimestampDateTimeConverter() this.updatedAt,
  }) : _acceptedInsurance = acceptedInsurance;

  factory _$DoctorProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorProfileImplFromJson(json);

  @override
  final String uid;
  @override
  final String fullName;
  @override
  final String specialty;
  @override
  final int yearsOfExperience;
  @override
  final ClinicInfo clinic;
  final List<String> _acceptedInsurance;
  @override
  List<String> get acceptedInsurance {
    if (_acceptedInsurance is EqualUnmodifiableListView)
      return _acceptedInsurance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_acceptedInsurance);
  }

  @override
  final String? bio;
  @override
  final String? profilePictureUrl;
  @override
  final double? averageRating;
  @override
  final int? reviewCount;
  @override
  @TimestampDateTimeConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'DoctorProfile(uid: $uid, fullName: $fullName, specialty: $specialty, yearsOfExperience: $yearsOfExperience, clinic: $clinic, acceptedInsurance: $acceptedInsurance, bio: $bio, profilePictureUrl: $profilePictureUrl, averageRating: $averageRating, reviewCount: $reviewCount, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorProfileImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.specialty, specialty) ||
                other.specialty == specialty) &&
            (identical(other.yearsOfExperience, yearsOfExperience) ||
                other.yearsOfExperience == yearsOfExperience) &&
            (identical(other.clinic, clinic) || other.clinic == clinic) &&
            const DeepCollectionEquality().equals(
              other._acceptedInsurance,
              _acceptedInsurance,
            ) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    uid,
    fullName,
    specialty,
    yearsOfExperience,
    clinic,
    const DeepCollectionEquality().hash(_acceptedInsurance),
    bio,
    profilePictureUrl,
    averageRating,
    reviewCount,
    updatedAt,
  );

  /// Create a copy of DoctorProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorProfileImplCopyWith<_$DoctorProfileImpl> get copyWith =>
      __$$DoctorProfileImplCopyWithImpl<_$DoctorProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorProfileImplToJson(this);
  }
}

abstract class _DoctorProfile implements DoctorProfile {
  const factory _DoctorProfile({
    required final String uid,
    required final String fullName,
    required final String specialty,
    required final int yearsOfExperience,
    required final ClinicInfo clinic,
    required final List<String> acceptedInsurance,
    final String? bio,
    final String? profilePictureUrl,
    final double? averageRating,
    final int? reviewCount,
    @TimestampDateTimeConverter() final DateTime? updatedAt,
  }) = _$DoctorProfileImpl;

  factory _DoctorProfile.fromJson(Map<String, dynamic> json) =
      _$DoctorProfileImpl.fromJson;

  @override
  String get uid;
  @override
  String get fullName;
  @override
  String get specialty;
  @override
  int get yearsOfExperience;
  @override
  ClinicInfo get clinic;
  @override
  List<String> get acceptedInsurance;
  @override
  String? get bio;
  @override
  String? get profilePictureUrl;
  @override
  double? get averageRating;
  @override
  int? get reviewCount;
  @override
  @TimestampDateTimeConverter()
  DateTime? get updatedAt;

  /// Create a copy of DoctorProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorProfileImplCopyWith<_$DoctorProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClinicInfo _$ClinicInfoFromJson(Map<String, dynamic> json) {
  return _ClinicInfo.fromJson(json);
}

/// @nodoc
mixin _$ClinicInfo {
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  @GeoPointConverter()
  GeoPoint? get location => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;

  /// Serializes this ClinicInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClinicInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClinicInfoCopyWith<ClinicInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClinicInfoCopyWith<$Res> {
  factory $ClinicInfoCopyWith(
    ClinicInfo value,
    $Res Function(ClinicInfo) then,
  ) = _$ClinicInfoCopyWithImpl<$Res, ClinicInfo>;
  @useResult
  $Res call({
    String name,
    String address,
    @GeoPointConverter() GeoPoint? location,
    String? phone,
    String? website,
  });
}

/// @nodoc
class _$ClinicInfoCopyWithImpl<$Res, $Val extends ClinicInfo>
    implements $ClinicInfoCopyWith<$Res> {
  _$ClinicInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClinicInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? location = freezed,
    Object? phone = freezed,
    Object? website = freezed,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            address: null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as String,
            location: freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as GeoPoint?,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
            website: freezed == website
                ? _value.website
                : website // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ClinicInfoImplCopyWith<$Res>
    implements $ClinicInfoCopyWith<$Res> {
  factory _$$ClinicInfoImplCopyWith(
    _$ClinicInfoImpl value,
    $Res Function(_$ClinicInfoImpl) then,
  ) = __$$ClinicInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    String address,
    @GeoPointConverter() GeoPoint? location,
    String? phone,
    String? website,
  });
}

/// @nodoc
class __$$ClinicInfoImplCopyWithImpl<$Res>
    extends _$ClinicInfoCopyWithImpl<$Res, _$ClinicInfoImpl>
    implements _$$ClinicInfoImplCopyWith<$Res> {
  __$$ClinicInfoImplCopyWithImpl(
    _$ClinicInfoImpl _value,
    $Res Function(_$ClinicInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ClinicInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? location = freezed,
    Object? phone = freezed,
    Object? website = freezed,
  }) {
    return _then(
      _$ClinicInfoImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        address: null == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String,
        location: freezed == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as GeoPoint?,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
        website: freezed == website
            ? _value.website
            : website // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ClinicInfoImpl implements _ClinicInfo {
  const _$ClinicInfoImpl({
    required this.name,
    required this.address,
    @GeoPointConverter() this.location,
    this.phone,
    this.website,
  });

  factory _$ClinicInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClinicInfoImplFromJson(json);

  @override
  final String name;
  @override
  final String address;
  @override
  @GeoPointConverter()
  final GeoPoint? location;
  @override
  final String? phone;
  @override
  final String? website;

  @override
  String toString() {
    return 'ClinicInfo(name: $name, address: $address, location: $location, phone: $phone, website: $website)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClinicInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.website, website) || other.website == website));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, address, location, phone, website);

  /// Create a copy of ClinicInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClinicInfoImplCopyWith<_$ClinicInfoImpl> get copyWith =>
      __$$ClinicInfoImplCopyWithImpl<_$ClinicInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClinicInfoImplToJson(this);
  }
}

abstract class _ClinicInfo implements ClinicInfo {
  const factory _ClinicInfo({
    required final String name,
    required final String address,
    @GeoPointConverter() final GeoPoint? location,
    final String? phone,
    final String? website,
  }) = _$ClinicInfoImpl;

  factory _ClinicInfo.fromJson(Map<String, dynamic> json) =
      _$ClinicInfoImpl.fromJson;

  @override
  String get name;
  @override
  String get address;
  @override
  @GeoPointConverter()
  GeoPoint? get location;
  @override
  String? get phone;
  @override
  String? get website;

  /// Create a copy of ClinicInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClinicInfoImplCopyWith<_$ClinicInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
