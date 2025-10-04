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

PatientProfile _$PatientProfileFromJson(Map<String, dynamic> json) {
  return _PatientProfile.fromJson(json);
}

/// @nodoc
mixin _$PatientProfile {
  String get uid => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  DateTime get dateOfBirth => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  EmergencyContact get emergencyContact => throw _privateConstructorUsedError;
  InsuranceInfo get insuranceInfo => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @TimestampDateTimeConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this PatientProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatientProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatientProfileCopyWith<PatientProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientProfileCopyWith<$Res> {
  factory $PatientProfileCopyWith(
    PatientProfile value,
    $Res Function(PatientProfile) then,
  ) = _$PatientProfileCopyWithImpl<$Res, PatientProfile>;
  @useResult
  $Res call({
    String uid,
    String fullName,
    DateTime dateOfBirth,
    String gender,
    String phone,
    EmergencyContact emergencyContact,
    InsuranceInfo insuranceInfo,
    String? address,
    @TimestampDateTimeConverter() DateTime? updatedAt,
  });

  $EmergencyContactCopyWith<$Res> get emergencyContact;
  $InsuranceInfoCopyWith<$Res> get insuranceInfo;
}

/// @nodoc
class _$PatientProfileCopyWithImpl<$Res, $Val extends PatientProfile>
    implements $PatientProfileCopyWith<$Res> {
  _$PatientProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatientProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? fullName = null,
    Object? dateOfBirth = null,
    Object? gender = null,
    Object? phone = null,
    Object? emergencyContact = null,
    Object? insuranceInfo = null,
    Object? address = freezed,
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
            dateOfBirth: null == dateOfBirth
                ? _value.dateOfBirth
                : dateOfBirth // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            gender: null == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                      as String,
            phone: null == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String,
            emergencyContact: null == emergencyContact
                ? _value.emergencyContact
                : emergencyContact // ignore: cast_nullable_to_non_nullable
                      as EmergencyContact,
            insuranceInfo: null == insuranceInfo
                ? _value.insuranceInfo
                : insuranceInfo // ignore: cast_nullable_to_non_nullable
                      as InsuranceInfo,
            address: freezed == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }

  /// Create a copy of PatientProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmergencyContactCopyWith<$Res> get emergencyContact {
    return $EmergencyContactCopyWith<$Res>(_value.emergencyContact, (value) {
      return _then(_value.copyWith(emergencyContact: value) as $Val);
    });
  }

  /// Create a copy of PatientProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InsuranceInfoCopyWith<$Res> get insuranceInfo {
    return $InsuranceInfoCopyWith<$Res>(_value.insuranceInfo, (value) {
      return _then(_value.copyWith(insuranceInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PatientProfileImplCopyWith<$Res>
    implements $PatientProfileCopyWith<$Res> {
  factory _$$PatientProfileImplCopyWith(
    _$PatientProfileImpl value,
    $Res Function(_$PatientProfileImpl) then,
  ) = __$$PatientProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String uid,
    String fullName,
    DateTime dateOfBirth,
    String gender,
    String phone,
    EmergencyContact emergencyContact,
    InsuranceInfo insuranceInfo,
    String? address,
    @TimestampDateTimeConverter() DateTime? updatedAt,
  });

  @override
  $EmergencyContactCopyWith<$Res> get emergencyContact;
  @override
  $InsuranceInfoCopyWith<$Res> get insuranceInfo;
}

/// @nodoc
class __$$PatientProfileImplCopyWithImpl<$Res>
    extends _$PatientProfileCopyWithImpl<$Res, _$PatientProfileImpl>
    implements _$$PatientProfileImplCopyWith<$Res> {
  __$$PatientProfileImplCopyWithImpl(
    _$PatientProfileImpl _value,
    $Res Function(_$PatientProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PatientProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? fullName = null,
    Object? dateOfBirth = null,
    Object? gender = null,
    Object? phone = null,
    Object? emergencyContact = null,
    Object? insuranceInfo = null,
    Object? address = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$PatientProfileImpl(
        uid: null == uid
            ? _value.uid
            : uid // ignore: cast_nullable_to_non_nullable
                  as String,
        fullName: null == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String,
        dateOfBirth: null == dateOfBirth
            ? _value.dateOfBirth
            : dateOfBirth // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        gender: null == gender
            ? _value.gender
            : gender // ignore: cast_nullable_to_non_nullable
                  as String,
        phone: null == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String,
        emergencyContact: null == emergencyContact
            ? _value.emergencyContact
            : emergencyContact // ignore: cast_nullable_to_non_nullable
                  as EmergencyContact,
        insuranceInfo: null == insuranceInfo
            ? _value.insuranceInfo
            : insuranceInfo // ignore: cast_nullable_to_non_nullable
                  as InsuranceInfo,
        address: freezed == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientProfileImpl implements _PatientProfile {
  const _$PatientProfileImpl({
    required this.uid,
    required this.fullName,
    required this.dateOfBirth,
    required this.gender,
    required this.phone,
    required this.emergencyContact,
    required this.insuranceInfo,
    this.address,
    @TimestampDateTimeConverter() this.updatedAt,
  });

  factory _$PatientProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientProfileImplFromJson(json);

  @override
  final String uid;
  @override
  final String fullName;
  @override
  final DateTime dateOfBirth;
  @override
  final String gender;
  @override
  final String phone;
  @override
  final EmergencyContact emergencyContact;
  @override
  final InsuranceInfo insuranceInfo;
  @override
  final String? address;
  @override
  @TimestampDateTimeConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'PatientProfile(uid: $uid, fullName: $fullName, dateOfBirth: $dateOfBirth, gender: $gender, phone: $phone, emergencyContact: $emergencyContact, insuranceInfo: $insuranceInfo, address: $address, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientProfileImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.emergencyContact, emergencyContact) ||
                other.emergencyContact == emergencyContact) &&
            (identical(other.insuranceInfo, insuranceInfo) ||
                other.insuranceInfo == insuranceInfo) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    uid,
    fullName,
    dateOfBirth,
    gender,
    phone,
    emergencyContact,
    insuranceInfo,
    address,
    updatedAt,
  );

  /// Create a copy of PatientProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientProfileImplCopyWith<_$PatientProfileImpl> get copyWith =>
      __$$PatientProfileImplCopyWithImpl<_$PatientProfileImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientProfileImplToJson(this);
  }
}

abstract class _PatientProfile implements PatientProfile {
  const factory _PatientProfile({
    required final String uid,
    required final String fullName,
    required final DateTime dateOfBirth,
    required final String gender,
    required final String phone,
    required final EmergencyContact emergencyContact,
    required final InsuranceInfo insuranceInfo,
    final String? address,
    @TimestampDateTimeConverter() final DateTime? updatedAt,
  }) = _$PatientProfileImpl;

  factory _PatientProfile.fromJson(Map<String, dynamic> json) =
      _$PatientProfileImpl.fromJson;

  @override
  String get uid;
  @override
  String get fullName;
  @override
  DateTime get dateOfBirth;
  @override
  String get gender;
  @override
  String get phone;
  @override
  EmergencyContact get emergencyContact;
  @override
  InsuranceInfo get insuranceInfo;
  @override
  String? get address;
  @override
  @TimestampDateTimeConverter()
  DateTime? get updatedAt;

  /// Create a copy of PatientProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatientProfileImplCopyWith<_$PatientProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EmergencyContact _$EmergencyContactFromJson(Map<String, dynamic> json) {
  return _EmergencyContact.fromJson(json);
}

/// @nodoc
mixin _$EmergencyContact {
  String get name => throw _privateConstructorUsedError;
  String get relationship => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;

  /// Serializes this EmergencyContact to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmergencyContact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmergencyContactCopyWith<EmergencyContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmergencyContactCopyWith<$Res> {
  factory $EmergencyContactCopyWith(
    EmergencyContact value,
    $Res Function(EmergencyContact) then,
  ) = _$EmergencyContactCopyWithImpl<$Res, EmergencyContact>;
  @useResult
  $Res call({String name, String relationship, String phone});
}

/// @nodoc
class _$EmergencyContactCopyWithImpl<$Res, $Val extends EmergencyContact>
    implements $EmergencyContactCopyWith<$Res> {
  _$EmergencyContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmergencyContact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? relationship = null,
    Object? phone = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            relationship: null == relationship
                ? _value.relationship
                : relationship // ignore: cast_nullable_to_non_nullable
                      as String,
            phone: null == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EmergencyContactImplCopyWith<$Res>
    implements $EmergencyContactCopyWith<$Res> {
  factory _$$EmergencyContactImplCopyWith(
    _$EmergencyContactImpl value,
    $Res Function(_$EmergencyContactImpl) then,
  ) = __$$EmergencyContactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String relationship, String phone});
}

/// @nodoc
class __$$EmergencyContactImplCopyWithImpl<$Res>
    extends _$EmergencyContactCopyWithImpl<$Res, _$EmergencyContactImpl>
    implements _$$EmergencyContactImplCopyWith<$Res> {
  __$$EmergencyContactImplCopyWithImpl(
    _$EmergencyContactImpl _value,
    $Res Function(_$EmergencyContactImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmergencyContact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? relationship = null,
    Object? phone = null,
  }) {
    return _then(
      _$EmergencyContactImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        relationship: null == relationship
            ? _value.relationship
            : relationship // ignore: cast_nullable_to_non_nullable
                  as String,
        phone: null == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EmergencyContactImpl implements _EmergencyContact {
  const _$EmergencyContactImpl({
    required this.name,
    required this.relationship,
    required this.phone,
  });

  factory _$EmergencyContactImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmergencyContactImplFromJson(json);

  @override
  final String name;
  @override
  final String relationship;
  @override
  final String phone;

  @override
  String toString() {
    return 'EmergencyContact(name: $name, relationship: $relationship, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmergencyContactImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.relationship, relationship) ||
                other.relationship == relationship) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, relationship, phone);

  /// Create a copy of EmergencyContact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmergencyContactImplCopyWith<_$EmergencyContactImpl> get copyWith =>
      __$$EmergencyContactImplCopyWithImpl<_$EmergencyContactImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$EmergencyContactImplToJson(this);
  }
}

abstract class _EmergencyContact implements EmergencyContact {
  const factory _EmergencyContact({
    required final String name,
    required final String relationship,
    required final String phone,
  }) = _$EmergencyContactImpl;

  factory _EmergencyContact.fromJson(Map<String, dynamic> json) =
      _$EmergencyContactImpl.fromJson;

  @override
  String get name;
  @override
  String get relationship;
  @override
  String get phone;

  /// Create a copy of EmergencyContact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmergencyContactImplCopyWith<_$EmergencyContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InsuranceInfo _$InsuranceInfoFromJson(Map<String, dynamic> json) {
  return _InsuranceInfo.fromJson(json);
}

/// @nodoc
mixin _$InsuranceInfo {
  String get provider => throw _privateConstructorUsedError;
  String get policyNumber => throw _privateConstructorUsedError;

  /// Serializes this InsuranceInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InsuranceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InsuranceInfoCopyWith<InsuranceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsuranceInfoCopyWith<$Res> {
  factory $InsuranceInfoCopyWith(
    InsuranceInfo value,
    $Res Function(InsuranceInfo) then,
  ) = _$InsuranceInfoCopyWithImpl<$Res, InsuranceInfo>;
  @useResult
  $Res call({String provider, String policyNumber});
}

/// @nodoc
class _$InsuranceInfoCopyWithImpl<$Res, $Val extends InsuranceInfo>
    implements $InsuranceInfoCopyWith<$Res> {
  _$InsuranceInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InsuranceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? provider = null, Object? policyNumber = null}) {
    return _then(
      _value.copyWith(
            provider: null == provider
                ? _value.provider
                : provider // ignore: cast_nullable_to_non_nullable
                      as String,
            policyNumber: null == policyNumber
                ? _value.policyNumber
                : policyNumber // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InsuranceInfoImplCopyWith<$Res>
    implements $InsuranceInfoCopyWith<$Res> {
  factory _$$InsuranceInfoImplCopyWith(
    _$InsuranceInfoImpl value,
    $Res Function(_$InsuranceInfoImpl) then,
  ) = __$$InsuranceInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String provider, String policyNumber});
}

/// @nodoc
class __$$InsuranceInfoImplCopyWithImpl<$Res>
    extends _$InsuranceInfoCopyWithImpl<$Res, _$InsuranceInfoImpl>
    implements _$$InsuranceInfoImplCopyWith<$Res> {
  __$$InsuranceInfoImplCopyWithImpl(
    _$InsuranceInfoImpl _value,
    $Res Function(_$InsuranceInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InsuranceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? provider = null, Object? policyNumber = null}) {
    return _then(
      _$InsuranceInfoImpl(
        provider: null == provider
            ? _value.provider
            : provider // ignore: cast_nullable_to_non_nullable
                  as String,
        policyNumber: null == policyNumber
            ? _value.policyNumber
            : policyNumber // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$InsuranceInfoImpl implements _InsuranceInfo {
  const _$InsuranceInfoImpl({
    required this.provider,
    required this.policyNumber,
  });

  factory _$InsuranceInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InsuranceInfoImplFromJson(json);

  @override
  final String provider;
  @override
  final String policyNumber;

  @override
  String toString() {
    return 'InsuranceInfo(provider: $provider, policyNumber: $policyNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsuranceInfoImpl &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.policyNumber, policyNumber) ||
                other.policyNumber == policyNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, provider, policyNumber);

  /// Create a copy of InsuranceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InsuranceInfoImplCopyWith<_$InsuranceInfoImpl> get copyWith =>
      __$$InsuranceInfoImplCopyWithImpl<_$InsuranceInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InsuranceInfoImplToJson(this);
  }
}

abstract class _InsuranceInfo implements InsuranceInfo {
  const factory _InsuranceInfo({
    required final String provider,
    required final String policyNumber,
  }) = _$InsuranceInfoImpl;

  factory _InsuranceInfo.fromJson(Map<String, dynamic> json) =
      _$InsuranceInfoImpl.fromJson;

  @override
  String get provider;
  @override
  String get policyNumber;

  /// Create a copy of InsuranceInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InsuranceInfoImplCopyWith<_$InsuranceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
