// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserDTO {
  String get name => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get callCode => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String get authToken => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String? get profilePictureURL => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDTOCopyWith<UserDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDTOCopyWith<$Res> {
  factory $UserDTOCopyWith(UserDTO value, $Res Function(UserDTO) then) =
      _$UserDTOCopyWithImpl<$Res, UserDTO>;
  @useResult
  $Res call(
      {String name,
      String lastName,
      String phoneNumber,
      String callCode,
      String countryCode,
      String email,
      String? password,
      String authToken,
      String currency,
      String? profilePictureURL});
}

/// @nodoc
class _$UserDTOCopyWithImpl<$Res, $Val extends UserDTO>
    implements $UserDTOCopyWith<$Res> {
  _$UserDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? lastName = null,
    Object? phoneNumber = null,
    Object? callCode = null,
    Object? countryCode = null,
    Object? email = null,
    Object? password = freezed,
    Object? authToken = null,
    Object? currency = null,
    Object? profilePictureURL = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      callCode: null == callCode
          ? _value.callCode
          : callCode // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      authToken: null == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureURL: freezed == profilePictureURL
          ? _value.profilePictureURL
          : profilePictureURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserDTOCopyWith<$Res> implements $UserDTOCopyWith<$Res> {
  factory _$$_UserDTOCopyWith(
          _$_UserDTO value, $Res Function(_$_UserDTO) then) =
      __$$_UserDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String lastName,
      String phoneNumber,
      String callCode,
      String countryCode,
      String email,
      String? password,
      String authToken,
      String currency,
      String? profilePictureURL});
}

/// @nodoc
class __$$_UserDTOCopyWithImpl<$Res>
    extends _$UserDTOCopyWithImpl<$Res, _$_UserDTO>
    implements _$$_UserDTOCopyWith<$Res> {
  __$$_UserDTOCopyWithImpl(_$_UserDTO _value, $Res Function(_$_UserDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? lastName = null,
    Object? phoneNumber = null,
    Object? callCode = null,
    Object? countryCode = null,
    Object? email = null,
    Object? password = freezed,
    Object? authToken = null,
    Object? currency = null,
    Object? profilePictureURL = freezed,
  }) {
    return _then(_$_UserDTO(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      callCode: null == callCode
          ? _value.callCode
          : callCode // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      authToken: null == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureURL: freezed == profilePictureURL
          ? _value.profilePictureURL
          : profilePictureURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UserDTO extends _UserDTO {
  const _$_UserDTO(
      {required this.name,
      required this.lastName,
      required this.phoneNumber,
      required this.callCode,
      required this.countryCode,
      required this.email,
      this.password,
      required this.authToken,
      required this.currency,
      this.profilePictureURL})
      : super._();

  @override
  final String name;
  @override
  final String lastName;
  @override
  final String phoneNumber;
  @override
  final String callCode;
  @override
  final String countryCode;
  @override
  final String email;
  @override
  final String? password;
  @override
  final String authToken;
  @override
  final String currency;
  @override
  final String? profilePictureURL;

  @override
  String toString() {
    return 'UserDTO(name: $name, lastName: $lastName, phoneNumber: $phoneNumber, callCode: $callCode, countryCode: $countryCode, email: $email, password: $password, authToken: $authToken, currency: $currency, profilePictureURL: $profilePictureURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDTO &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.callCode, callCode) ||
                other.callCode == callCode) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.authToken, authToken) ||
                other.authToken == authToken) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.profilePictureURL, profilePictureURL) ||
                other.profilePictureURL == profilePictureURL));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      lastName,
      phoneNumber,
      callCode,
      countryCode,
      email,
      password,
      authToken,
      currency,
      profilePictureURL);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDTOCopyWith<_$_UserDTO> get copyWith =>
      __$$_UserDTOCopyWithImpl<_$_UserDTO>(this, _$identity);
}

abstract class _UserDTO extends UserDTO {
  const factory _UserDTO(
      {required final String name,
      required final String lastName,
      required final String phoneNumber,
      required final String callCode,
      required final String countryCode,
      required final String email,
      final String? password,
      required final String authToken,
      required final String currency,
      final String? profilePictureURL}) = _$_UserDTO;
  const _UserDTO._() : super._();

  @override
  String get name;
  @override
  String get lastName;
  @override
  String get phoneNumber;
  @override
  String get callCode;
  @override
  String get countryCode;
  @override
  String get email;
  @override
  String? get password;
  @override
  String get authToken;
  @override
  String get currency;
  @override
  String? get profilePictureURL;
  @override
  @JsonKey(ignore: true)
  _$$_UserDTOCopyWith<_$_UserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
