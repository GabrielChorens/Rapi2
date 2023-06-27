// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$User {
  Name get fullName => throw _privateConstructorUsedError;
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  Email? get email => throw _privateConstructorUsedError;
  Currencies? get currency => throw _privateConstructorUsedError;
  String? get authToken => throw _privateConstructorUsedError;
  String? get profilePictureURL => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {Name fullName,
      PhoneNumber phoneNumber,
      Email? email,
      Currencies? currency,
      String? authToken,
      String? profilePictureURL});

  $NameCopyWith<$Res> get fullName;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? phoneNumber = null,
    Object? email = freezed,
    Object? currency = freezed,
    Object? authToken = freezed,
    Object? profilePictureURL = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as Name,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currencies?,
      authToken: freezed == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePictureURL: freezed == profilePictureURL
          ? _value.profilePictureURL
          : profilePictureURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameCopyWith<$Res> get fullName {
    return $NameCopyWith<$Res>(_value.fullName, (value) {
      return _then(_value.copyWith(fullName: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Name fullName,
      PhoneNumber phoneNumber,
      Email? email,
      Currencies? currency,
      String? authToken,
      String? profilePictureURL});

  @override
  $NameCopyWith<$Res> get fullName;
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? phoneNumber = null,
    Object? email = freezed,
    Object? currency = freezed,
    Object? authToken = freezed,
    Object? profilePictureURL = freezed,
  }) {
    return _then(_$_User(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as Name,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currencies?,
      authToken: freezed == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePictureURL: freezed == profilePictureURL
          ? _value.profilePictureURL
          : profilePictureURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_User extends _User {
  _$_User(
      {required this.fullName,
      required this.phoneNumber,
      required this.email,
      required this.currency,
      required this.authToken,
      required this.profilePictureURL})
      : super._();

  @override
  final Name fullName;
  @override
  final PhoneNumber phoneNumber;
  @override
  final Email? email;
  @override
  final Currencies? currency;
  @override
  final String? authToken;
  @override
  final String? profilePictureURL;

  @override
  String toString() {
    return 'User(fullName: $fullName, phoneNumber: $phoneNumber, email: $email, currency: $currency, authToken: $authToken, profilePictureURL: $profilePictureURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.authToken, authToken) ||
                other.authToken == authToken) &&
            (identical(other.profilePictureURL, profilePictureURL) ||
                other.profilePictureURL == profilePictureURL));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullName, phoneNumber, email,
      currency, authToken, profilePictureURL);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);
}

abstract class _User extends User {
  factory _User(
      {required final Name fullName,
      required final PhoneNumber phoneNumber,
      required final Email? email,
      required final Currencies? currency,
      required final String? authToken,
      required final String? profilePictureURL}) = _$_User;
  _User._() : super._();

  @override
  Name get fullName;
  @override
  PhoneNumber get phoneNumber;
  @override
  Email? get email;
  @override
  Currencies? get currency;
  @override
  String? get authToken;
  @override
  String? get profilePictureURL;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
