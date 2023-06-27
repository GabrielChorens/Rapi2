// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_value_objects_DTOs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NameDTO {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NameDTOCopyWith<NameDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameDTOCopyWith<$Res> {
  factory $NameDTOCopyWith(NameDTO value, $Res Function(NameDTO) then) =
      _$NameDTOCopyWithImpl<$Res, NameDTO>;
  @useResult
  $Res call({String firstName, String lastName});
}

/// @nodoc
class _$NameDTOCopyWithImpl<$Res, $Val extends NameDTO>
    implements $NameDTOCopyWith<$Res> {
  _$NameDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NameDTOCopyWith<$Res> implements $NameDTOCopyWith<$Res> {
  factory _$$_NameDTOCopyWith(
          _$_NameDTO value, $Res Function(_$_NameDTO) then) =
      __$$_NameDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String firstName, String lastName});
}

/// @nodoc
class __$$_NameDTOCopyWithImpl<$Res>
    extends _$NameDTOCopyWithImpl<$Res, _$_NameDTO>
    implements _$$_NameDTOCopyWith<$Res> {
  __$$_NameDTOCopyWithImpl(_$_NameDTO _value, $Res Function(_$_NameDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_$_NameDTO(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameDTO extends _NameDTO {
  const _$_NameDTO({required this.firstName, required this.lastName})
      : super._();

  @override
  final String firstName;
  @override
  final String lastName;

  @override
  String toString() {
    return 'NameDTO(firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NameDTO &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NameDTOCopyWith<_$_NameDTO> get copyWith =>
      __$$_NameDTOCopyWithImpl<_$_NameDTO>(this, _$identity);
}

abstract class _NameDTO extends NameDTO {
  const factory _NameDTO(
      {required final String firstName,
      required final String lastName}) = _$_NameDTO;
  const _NameDTO._() : super._();

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  @JsonKey(ignore: true)
  _$$_NameDTOCopyWith<_$_NameDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PhoneNumberDTO {
  String get fullPhoneNumber => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get callCode => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhoneNumberDTOCopyWith<PhoneNumberDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneNumberDTOCopyWith<$Res> {
  factory $PhoneNumberDTOCopyWith(
          PhoneNumberDTO value, $Res Function(PhoneNumberDTO) then) =
      _$PhoneNumberDTOCopyWithImpl<$Res, PhoneNumberDTO>;
  @useResult
  $Res call(
      {String fullPhoneNumber,
      String phoneNumber,
      String callCode,
      String countryCode});
}

/// @nodoc
class _$PhoneNumberDTOCopyWithImpl<$Res, $Val extends PhoneNumberDTO>
    implements $PhoneNumberDTOCopyWith<$Res> {
  _$PhoneNumberDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullPhoneNumber = null,
    Object? phoneNumber = null,
    Object? callCode = null,
    Object? countryCode = null,
  }) {
    return _then(_value.copyWith(
      fullPhoneNumber: null == fullPhoneNumber
          ? _value.fullPhoneNumber
          : fullPhoneNumber // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PhoneNumberDTOCopyWith<$Res>
    implements $PhoneNumberDTOCopyWith<$Res> {
  factory _$$_PhoneNumberDTOCopyWith(
          _$_PhoneNumberDTO value, $Res Function(_$_PhoneNumberDTO) then) =
      __$$_PhoneNumberDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fullPhoneNumber,
      String phoneNumber,
      String callCode,
      String countryCode});
}

/// @nodoc
class __$$_PhoneNumberDTOCopyWithImpl<$Res>
    extends _$PhoneNumberDTOCopyWithImpl<$Res, _$_PhoneNumberDTO>
    implements _$$_PhoneNumberDTOCopyWith<$Res> {
  __$$_PhoneNumberDTOCopyWithImpl(
      _$_PhoneNumberDTO _value, $Res Function(_$_PhoneNumberDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullPhoneNumber = null,
    Object? phoneNumber = null,
    Object? callCode = null,
    Object? countryCode = null,
  }) {
    return _then(_$_PhoneNumberDTO(
      fullPhoneNumber: null == fullPhoneNumber
          ? _value.fullPhoneNumber
          : fullPhoneNumber // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc

class _$_PhoneNumberDTO extends _PhoneNumberDTO {
  const _$_PhoneNumberDTO(
      {required this.fullPhoneNumber,
      required this.phoneNumber,
      required this.callCode,
      required this.countryCode})
      : super._();

  @override
  final String fullPhoneNumber;
  @override
  final String phoneNumber;
  @override
  final String callCode;
  @override
  final String countryCode;

  @override
  String toString() {
    return 'PhoneNumberDTO(fullPhoneNumber: $fullPhoneNumber, phoneNumber: $phoneNumber, callCode: $callCode, countryCode: $countryCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneNumberDTO &&
            (identical(other.fullPhoneNumber, fullPhoneNumber) ||
                other.fullPhoneNumber == fullPhoneNumber) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.callCode, callCode) ||
                other.callCode == callCode) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, fullPhoneNumber, phoneNumber, callCode, countryCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneNumberDTOCopyWith<_$_PhoneNumberDTO> get copyWith =>
      __$$_PhoneNumberDTOCopyWithImpl<_$_PhoneNumberDTO>(this, _$identity);
}

abstract class _PhoneNumberDTO extends PhoneNumberDTO {
  const factory _PhoneNumberDTO(
      {required final String fullPhoneNumber,
      required final String phoneNumber,
      required final String callCode,
      required final String countryCode}) = _$_PhoneNumberDTO;
  const _PhoneNumberDTO._() : super._();

  @override
  String get fullPhoneNumber;
  @override
  String get phoneNumber;
  @override
  String get callCode;
  @override
  String get countryCode;
  @override
  @JsonKey(ignore: true)
  _$$_PhoneNumberDTOCopyWith<_$_PhoneNumberDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PasswordDTO {
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordDTOCopyWith<PasswordDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordDTOCopyWith<$Res> {
  factory $PasswordDTOCopyWith(
          PasswordDTO value, $Res Function(PasswordDTO) then) =
      _$PasswordDTOCopyWithImpl<$Res, PasswordDTO>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class _$PasswordDTOCopyWithImpl<$Res, $Val extends PasswordDTO>
    implements $PasswordDTOCopyWith<$Res> {
  _$PasswordDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PasswordDTOCopyWith<$Res>
    implements $PasswordDTOCopyWith<$Res> {
  factory _$$_PasswordDTOCopyWith(
          _$_PasswordDTO value, $Res Function(_$_PasswordDTO) then) =
      __$$_PasswordDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_PasswordDTOCopyWithImpl<$Res>
    extends _$PasswordDTOCopyWithImpl<$Res, _$_PasswordDTO>
    implements _$$_PasswordDTOCopyWith<$Res> {
  __$$_PasswordDTOCopyWithImpl(
      _$_PasswordDTO _value, $Res Function(_$_PasswordDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_PasswordDTO(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordDTO extends _PasswordDTO {
  const _$_PasswordDTO({required this.password}) : super._();

  @override
  final String password;

  @override
  String toString() {
    return 'PasswordDTO(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordDTO &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordDTOCopyWith<_$_PasswordDTO> get copyWith =>
      __$$_PasswordDTOCopyWithImpl<_$_PasswordDTO>(this, _$identity);
}

abstract class _PasswordDTO extends PasswordDTO {
  const factory _PasswordDTO({required final String password}) = _$_PasswordDTO;
  const _PasswordDTO._() : super._();

  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_PasswordDTOCopyWith<_$_PasswordDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmailDTO {
  String get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailDTOCopyWith<EmailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailDTOCopyWith<$Res> {
  factory $EmailDTOCopyWith(EmailDTO value, $Res Function(EmailDTO) then) =
      _$EmailDTOCopyWithImpl<$Res, EmailDTO>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$EmailDTOCopyWithImpl<$Res, $Val extends EmailDTO>
    implements $EmailDTOCopyWith<$Res> {
  _$EmailDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmailDTOCopyWith<$Res> implements $EmailDTOCopyWith<$Res> {
  factory _$$_EmailDTOCopyWith(
          _$_EmailDTO value, $Res Function(_$_EmailDTO) then) =
      __$$_EmailDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_EmailDTOCopyWithImpl<$Res>
    extends _$EmailDTOCopyWithImpl<$Res, _$_EmailDTO>
    implements _$$_EmailDTOCopyWith<$Res> {
  __$$_EmailDTOCopyWithImpl(
      _$_EmailDTO _value, $Res Function(_$_EmailDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_EmailDTO(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailDTO extends _EmailDTO {
  const _$_EmailDTO({required this.email}) : super._();

  @override
  final String email;

  @override
  String toString() {
    return 'EmailDTO(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailDTO &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailDTOCopyWith<_$_EmailDTO> get copyWith =>
      __$$_EmailDTOCopyWithImpl<_$_EmailDTO>(this, _$identity);
}

abstract class _EmailDTO extends EmailDTO {
  const factory _EmailDTO({required final String email}) = _$_EmailDTO;
  const _EmailDTO._() : super._();

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_EmailDTOCopyWith<_$_EmailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CurrenciesDTO {
  String get currency => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrenciesDTOCopyWith<CurrenciesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrenciesDTOCopyWith<$Res> {
  factory $CurrenciesDTOCopyWith(
          CurrenciesDTO value, $Res Function(CurrenciesDTO) then) =
      _$CurrenciesDTOCopyWithImpl<$Res, CurrenciesDTO>;
  @useResult
  $Res call({String currency});
}

/// @nodoc
class _$CurrenciesDTOCopyWithImpl<$Res, $Val extends CurrenciesDTO>
    implements $CurrenciesDTOCopyWith<$Res> {
  _$CurrenciesDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrenciesDTOCopyWith<$Res>
    implements $CurrenciesDTOCopyWith<$Res> {
  factory _$$_CurrenciesDTOCopyWith(
          _$_CurrenciesDTO value, $Res Function(_$_CurrenciesDTO) then) =
      __$$_CurrenciesDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String currency});
}

/// @nodoc
class __$$_CurrenciesDTOCopyWithImpl<$Res>
    extends _$CurrenciesDTOCopyWithImpl<$Res, _$_CurrenciesDTO>
    implements _$$_CurrenciesDTOCopyWith<$Res> {
  __$$_CurrenciesDTOCopyWithImpl(
      _$_CurrenciesDTO _value, $Res Function(_$_CurrenciesDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
  }) {
    return _then(_$_CurrenciesDTO(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CurrenciesDTO extends _CurrenciesDTO {
  const _$_CurrenciesDTO({required this.currency}) : super._();

  @override
  final String currency;

  @override
  String toString() {
    return 'CurrenciesDTO(currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrenciesDTO &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrenciesDTOCopyWith<_$_CurrenciesDTO> get copyWith =>
      __$$_CurrenciesDTOCopyWithImpl<_$_CurrenciesDTO>(this, _$identity);
}

abstract class _CurrenciesDTO extends CurrenciesDTO {
  const factory _CurrenciesDTO({required final String currency}) =
      _$_CurrenciesDTO;
  const _CurrenciesDTO._() : super._();

  @override
  String get currency;
  @override
  @JsonKey(ignore: true)
  _$$_CurrenciesDTOCopyWith<_$_CurrenciesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FirebaseTokenDTO {
  String get firebaseToken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirebaseTokenDTOCopyWith<FirebaseTokenDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseTokenDTOCopyWith<$Res> {
  factory $FirebaseTokenDTOCopyWith(
          FirebaseTokenDTO value, $Res Function(FirebaseTokenDTO) then) =
      _$FirebaseTokenDTOCopyWithImpl<$Res, FirebaseTokenDTO>;
  @useResult
  $Res call({String firebaseToken});
}

/// @nodoc
class _$FirebaseTokenDTOCopyWithImpl<$Res, $Val extends FirebaseTokenDTO>
    implements $FirebaseTokenDTOCopyWith<$Res> {
  _$FirebaseTokenDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebaseToken = null,
  }) {
    return _then(_value.copyWith(
      firebaseToken: null == firebaseToken
          ? _value.firebaseToken
          : firebaseToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FirebaseTokenDTOCopyWith<$Res>
    implements $FirebaseTokenDTOCopyWith<$Res> {
  factory _$$_FirebaseTokenDTOCopyWith(
          _$_FirebaseTokenDTO value, $Res Function(_$_FirebaseTokenDTO) then) =
      __$$_FirebaseTokenDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String firebaseToken});
}

/// @nodoc
class __$$_FirebaseTokenDTOCopyWithImpl<$Res>
    extends _$FirebaseTokenDTOCopyWithImpl<$Res, _$_FirebaseTokenDTO>
    implements _$$_FirebaseTokenDTOCopyWith<$Res> {
  __$$_FirebaseTokenDTOCopyWithImpl(
      _$_FirebaseTokenDTO _value, $Res Function(_$_FirebaseTokenDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebaseToken = null,
  }) {
    return _then(_$_FirebaseTokenDTO(
      firebaseToken: null == firebaseToken
          ? _value.firebaseToken
          : firebaseToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FirebaseTokenDTO extends _FirebaseTokenDTO {
  const _$_FirebaseTokenDTO({required this.firebaseToken}) : super._();

  @override
  final String firebaseToken;

  @override
  String toString() {
    return 'FirebaseTokenDTO(firebaseToken: $firebaseToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirebaseTokenDTO &&
            (identical(other.firebaseToken, firebaseToken) ||
                other.firebaseToken == firebaseToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firebaseToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirebaseTokenDTOCopyWith<_$_FirebaseTokenDTO> get copyWith =>
      __$$_FirebaseTokenDTOCopyWithImpl<_$_FirebaseTokenDTO>(this, _$identity);
}

abstract class _FirebaseTokenDTO extends FirebaseTokenDTO {
  const factory _FirebaseTokenDTO({required final String firebaseToken}) =
      _$_FirebaseTokenDTO;
  const _FirebaseTokenDTO._() : super._();

  @override
  String get firebaseToken;
  @override
  @JsonKey(ignore: true)
  _$$_FirebaseTokenDTOCopyWith<_$_FirebaseTokenDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
