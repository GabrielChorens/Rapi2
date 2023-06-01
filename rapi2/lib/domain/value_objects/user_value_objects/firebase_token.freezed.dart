// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FirebaseToken {
  String? get firebaseToken => throw _privateConstructorUsedError;

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
  $Res call({String? firebaseToken});
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
    Object? firebaseToken = freezed,
  }) {
    return _then(_value.copyWith(
      firebaseToken: freezed == firebaseToken
          ? _value.firebaseToken
          : firebaseToken // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call({String? firebaseToken});
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
    Object? firebaseToken = freezed,
  }) {
    return _then(_$_FirebaseToken(
      firebaseToken: freezed == firebaseToken
          ? _value.firebaseToken
          : firebaseToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FirebaseToken implements _FirebaseToken {
  const _$_FirebaseToken({this.firebaseToken});

  @override
  final String? firebaseToken;

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
  const factory _FirebaseToken({final String? firebaseToken}) =
      _$_FirebaseToken;

  @override
  String? get firebaseToken;
  @override
  @JsonKey(ignore: true)
  _$$_FirebaseTokenCopyWith<_$_FirebaseToken> get copyWith =>
      throw _privateConstructorUsedError;
}
