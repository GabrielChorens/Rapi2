// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_value_objects.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Name {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NameCopyWith<Name> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameCopyWith<$Res> {
  factory $NameCopyWith(Name value, $Res Function(Name) then) =
      _$NameCopyWithImpl<$Res, Name>;
  @useResult
  $Res call({String firstName, String lastName});
}

/// @nodoc
class _$NameCopyWithImpl<$Res, $Val extends Name>
    implements $NameCopyWith<$Res> {
  _$NameCopyWithImpl(this._value, this._then);

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
abstract class _$$_NameCopyWith<$Res> implements $NameCopyWith<$Res> {
  factory _$$_NameCopyWith(_$_Name value, $Res Function(_$_Name) then) =
      __$$_NameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String firstName, String lastName});
}

/// @nodoc
class __$$_NameCopyWithImpl<$Res> extends _$NameCopyWithImpl<$Res, _$_Name>
    implements _$$_NameCopyWith<$Res> {
  __$$_NameCopyWithImpl(_$_Name _value, $Res Function(_$_Name) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_$_Name(
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

class _$_Name implements _Name {
  const _$_Name({required this.firstName, required this.lastName});

  @override
  final String firstName;
  @override
  final String lastName;

  @override
  String toString() {
    return 'Name(firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Name &&
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
  _$$_NameCopyWith<_$_Name> get copyWith =>
      __$$_NameCopyWithImpl<_$_Name>(this, _$identity);
}

abstract class _Name implements Name {
  const factory _Name(
      {required final String firstName,
      required final String lastName}) = _$_Name;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  @JsonKey(ignore: true)
  _$$_NameCopyWith<_$_Name> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FirebaseToken {
  String get firebaseToken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirebaseTokenCopyWith<FirebaseToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseTokenCopyWith<$Res> {
  factory $FirebaseTokenCopyWith(
          FirebaseToken value, $Res Function(FirebaseToken) then) =
      _$FirebaseTokenCopyWithImpl<$Res, FirebaseToken>;
  @useResult
  $Res call({String firebaseToken});
}

/// @nodoc
class _$FirebaseTokenCopyWithImpl<$Res, $Val extends FirebaseToken>
    implements $FirebaseTokenCopyWith<$Res> {
  _$FirebaseTokenCopyWithImpl(this._value, this._then);

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
abstract class _$$_FirebaseTokenCopyWith<$Res>
    implements $FirebaseTokenCopyWith<$Res> {
  factory _$$_FirebaseTokenCopyWith(
          _$_FirebaseToken value, $Res Function(_$_FirebaseToken) then) =
      __$$_FirebaseTokenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String firebaseToken});
}

/// @nodoc
class __$$_FirebaseTokenCopyWithImpl<$Res>
    extends _$FirebaseTokenCopyWithImpl<$Res, _$_FirebaseToken>
    implements _$$_FirebaseTokenCopyWith<$Res> {
  __$$_FirebaseTokenCopyWithImpl(
      _$_FirebaseToken _value, $Res Function(_$_FirebaseToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebaseToken = null,
  }) {
    return _then(_$_FirebaseToken(
      firebaseToken: null == firebaseToken
          ? _value.firebaseToken
          : firebaseToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FirebaseToken implements _FirebaseToken {
  const _$_FirebaseToken(
      {this.firebaseToken = '787asdasd8as9da8s79a87ds9a8s7d98as7d'});

  @override
  @JsonKey()
  final String firebaseToken;

  @override
  String toString() {
    return 'FirebaseToken(firebaseToken: $firebaseToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirebaseToken &&
            (identical(other.firebaseToken, firebaseToken) ||
                other.firebaseToken == firebaseToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firebaseToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirebaseTokenCopyWith<_$_FirebaseToken> get copyWith =>
      __$$_FirebaseTokenCopyWithImpl<_$_FirebaseToken>(this, _$identity);
}

abstract class _FirebaseToken implements FirebaseToken {
  const factory _FirebaseToken({final String firebaseToken}) = _$_FirebaseToken;

  @override
  String get firebaseToken;
  @override
  @JsonKey(ignore: true)
  _$$_FirebaseTokenCopyWith<_$_FirebaseToken> get copyWith =>
      throw _privateConstructorUsedError;
}
