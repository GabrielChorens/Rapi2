// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplashFailure {
  String get failureDescription => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failureDescription) noUserFound,
    required TResult Function(String failureDescription)
        locationPermissionDenied,
    required TResult Function(String failureDescription)
        locationServiceDisabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failureDescription)? noUserFound,
    TResult? Function(String failureDescription)? locationPermissionDenied,
    TResult? Function(String failureDescription)? locationServiceDisabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failureDescription)? noUserFound,
    TResult Function(String failureDescription)? locationPermissionDenied,
    TResult Function(String failureDescription)? locationServiceDisabled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoUserFound value) noUserFound,
    required TResult Function(LocationPermissionDenied value)
        locationPermissionDenied,
    required TResult Function(LocationServiceDisabled value)
        locationServiceDisabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoUserFound value)? noUserFound,
    TResult? Function(LocationPermissionDenied value)? locationPermissionDenied,
    TResult? Function(LocationServiceDisabled value)? locationServiceDisabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoUserFound value)? noUserFound,
    TResult Function(LocationPermissionDenied value)? locationPermissionDenied,
    TResult Function(LocationServiceDisabled value)? locationServiceDisabled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashFailureCopyWith<SplashFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashFailureCopyWith<$Res> {
  factory $SplashFailureCopyWith(
          SplashFailure value, $Res Function(SplashFailure) then) =
      _$SplashFailureCopyWithImpl<$Res, SplashFailure>;
  @useResult
  $Res call({String failureDescription});
}

/// @nodoc
class _$SplashFailureCopyWithImpl<$Res, $Val extends SplashFailure>
    implements $SplashFailureCopyWith<$Res> {
  _$SplashFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureDescription = null,
  }) {
    return _then(_value.copyWith(
      failureDescription: null == failureDescription
          ? _value.failureDescription
          : failureDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoUserFoundCopyWith<$Res>
    implements $SplashFailureCopyWith<$Res> {
  factory _$$NoUserFoundCopyWith(
          _$NoUserFound value, $Res Function(_$NoUserFound) then) =
      __$$NoUserFoundCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String failureDescription});
}

/// @nodoc
class __$$NoUserFoundCopyWithImpl<$Res>
    extends _$SplashFailureCopyWithImpl<$Res, _$NoUserFound>
    implements _$$NoUserFoundCopyWith<$Res> {
  __$$NoUserFoundCopyWithImpl(
      _$NoUserFound _value, $Res Function(_$NoUserFound) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureDescription = null,
  }) {
    return _then(_$NoUserFound(
      failureDescription: null == failureDescription
          ? _value.failureDescription
          : failureDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoUserFound implements NoUserFound {
  const _$NoUserFound({this.failureDescription = 'no_user_found'});

  @override
  @JsonKey()
  final String failureDescription;

  @override
  String toString() {
    return 'SplashFailure.noUserFound(failureDescription: $failureDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoUserFound &&
            (identical(other.failureDescription, failureDescription) ||
                other.failureDescription == failureDescription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoUserFoundCopyWith<_$NoUserFound> get copyWith =>
      __$$NoUserFoundCopyWithImpl<_$NoUserFound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failureDescription) noUserFound,
    required TResult Function(String failureDescription)
        locationPermissionDenied,
    required TResult Function(String failureDescription)
        locationServiceDisabled,
  }) {
    return noUserFound(failureDescription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failureDescription)? noUserFound,
    TResult? Function(String failureDescription)? locationPermissionDenied,
    TResult? Function(String failureDescription)? locationServiceDisabled,
  }) {
    return noUserFound?.call(failureDescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failureDescription)? noUserFound,
    TResult Function(String failureDescription)? locationPermissionDenied,
    TResult Function(String failureDescription)? locationServiceDisabled,
    required TResult orElse(),
  }) {
    if (noUserFound != null) {
      return noUserFound(failureDescription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoUserFound value) noUserFound,
    required TResult Function(LocationPermissionDenied value)
        locationPermissionDenied,
    required TResult Function(LocationServiceDisabled value)
        locationServiceDisabled,
  }) {
    return noUserFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoUserFound value)? noUserFound,
    TResult? Function(LocationPermissionDenied value)? locationPermissionDenied,
    TResult? Function(LocationServiceDisabled value)? locationServiceDisabled,
  }) {
    return noUserFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoUserFound value)? noUserFound,
    TResult Function(LocationPermissionDenied value)? locationPermissionDenied,
    TResult Function(LocationServiceDisabled value)? locationServiceDisabled,
    required TResult orElse(),
  }) {
    if (noUserFound != null) {
      return noUserFound(this);
    }
    return orElse();
  }
}

abstract class NoUserFound implements SplashFailure {
  const factory NoUserFound({final String failureDescription}) = _$NoUserFound;

  @override
  String get failureDescription;
  @override
  @JsonKey(ignore: true)
  _$$NoUserFoundCopyWith<_$NoUserFound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationPermissionDeniedCopyWith<$Res>
    implements $SplashFailureCopyWith<$Res> {
  factory _$$LocationPermissionDeniedCopyWith(_$LocationPermissionDenied value,
          $Res Function(_$LocationPermissionDenied) then) =
      __$$LocationPermissionDeniedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String failureDescription});
}

/// @nodoc
class __$$LocationPermissionDeniedCopyWithImpl<$Res>
    extends _$SplashFailureCopyWithImpl<$Res, _$LocationPermissionDenied>
    implements _$$LocationPermissionDeniedCopyWith<$Res> {
  __$$LocationPermissionDeniedCopyWithImpl(_$LocationPermissionDenied _value,
      $Res Function(_$LocationPermissionDenied) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureDescription = null,
  }) {
    return _then(_$LocationPermissionDenied(
      failureDescription: null == failureDescription
          ? _value.failureDescription
          : failureDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocationPermissionDenied implements LocationPermissionDenied {
  const _$LocationPermissionDenied(
      {this.failureDescription = 'location_permission_denied'});

  @override
  @JsonKey()
  final String failureDescription;

  @override
  String toString() {
    return 'SplashFailure.locationPermissionDenied(failureDescription: $failureDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationPermissionDenied &&
            (identical(other.failureDescription, failureDescription) ||
                other.failureDescription == failureDescription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationPermissionDeniedCopyWith<_$LocationPermissionDenied>
      get copyWith =>
          __$$LocationPermissionDeniedCopyWithImpl<_$LocationPermissionDenied>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failureDescription) noUserFound,
    required TResult Function(String failureDescription)
        locationPermissionDenied,
    required TResult Function(String failureDescription)
        locationServiceDisabled,
  }) {
    return locationPermissionDenied(failureDescription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failureDescription)? noUserFound,
    TResult? Function(String failureDescription)? locationPermissionDenied,
    TResult? Function(String failureDescription)? locationServiceDisabled,
  }) {
    return locationPermissionDenied?.call(failureDescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failureDescription)? noUserFound,
    TResult Function(String failureDescription)? locationPermissionDenied,
    TResult Function(String failureDescription)? locationServiceDisabled,
    required TResult orElse(),
  }) {
    if (locationPermissionDenied != null) {
      return locationPermissionDenied(failureDescription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoUserFound value) noUserFound,
    required TResult Function(LocationPermissionDenied value)
        locationPermissionDenied,
    required TResult Function(LocationServiceDisabled value)
        locationServiceDisabled,
  }) {
    return locationPermissionDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoUserFound value)? noUserFound,
    TResult? Function(LocationPermissionDenied value)? locationPermissionDenied,
    TResult? Function(LocationServiceDisabled value)? locationServiceDisabled,
  }) {
    return locationPermissionDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoUserFound value)? noUserFound,
    TResult Function(LocationPermissionDenied value)? locationPermissionDenied,
    TResult Function(LocationServiceDisabled value)? locationServiceDisabled,
    required TResult orElse(),
  }) {
    if (locationPermissionDenied != null) {
      return locationPermissionDenied(this);
    }
    return orElse();
  }
}

abstract class LocationPermissionDenied implements SplashFailure {
  const factory LocationPermissionDenied({final String failureDescription}) =
      _$LocationPermissionDenied;

  @override
  String get failureDescription;
  @override
  @JsonKey(ignore: true)
  _$$LocationPermissionDeniedCopyWith<_$LocationPermissionDenied>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationServiceDisabledCopyWith<$Res>
    implements $SplashFailureCopyWith<$Res> {
  factory _$$LocationServiceDisabledCopyWith(_$LocationServiceDisabled value,
          $Res Function(_$LocationServiceDisabled) then) =
      __$$LocationServiceDisabledCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String failureDescription});
}

/// @nodoc
class __$$LocationServiceDisabledCopyWithImpl<$Res>
    extends _$SplashFailureCopyWithImpl<$Res, _$LocationServiceDisabled>
    implements _$$LocationServiceDisabledCopyWith<$Res> {
  __$$LocationServiceDisabledCopyWithImpl(_$LocationServiceDisabled _value,
      $Res Function(_$LocationServiceDisabled) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureDescription = null,
  }) {
    return _then(_$LocationServiceDisabled(
      failureDescription: null == failureDescription
          ? _value.failureDescription
          : failureDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocationServiceDisabled implements LocationServiceDisabled {
  const _$LocationServiceDisabled(
      {this.failureDescription = 'location_service_disabled'});

  @override
  @JsonKey()
  final String failureDescription;

  @override
  String toString() {
    return 'SplashFailure.locationServiceDisabled(failureDescription: $failureDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationServiceDisabled &&
            (identical(other.failureDescription, failureDescription) ||
                other.failureDescription == failureDescription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationServiceDisabledCopyWith<_$LocationServiceDisabled> get copyWith =>
      __$$LocationServiceDisabledCopyWithImpl<_$LocationServiceDisabled>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failureDescription) noUserFound,
    required TResult Function(String failureDescription)
        locationPermissionDenied,
    required TResult Function(String failureDescription)
        locationServiceDisabled,
  }) {
    return locationServiceDisabled(failureDescription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failureDescription)? noUserFound,
    TResult? Function(String failureDescription)? locationPermissionDenied,
    TResult? Function(String failureDescription)? locationServiceDisabled,
  }) {
    return locationServiceDisabled?.call(failureDescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failureDescription)? noUserFound,
    TResult Function(String failureDescription)? locationPermissionDenied,
    TResult Function(String failureDescription)? locationServiceDisabled,
    required TResult orElse(),
  }) {
    if (locationServiceDisabled != null) {
      return locationServiceDisabled(failureDescription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoUserFound value) noUserFound,
    required TResult Function(LocationPermissionDenied value)
        locationPermissionDenied,
    required TResult Function(LocationServiceDisabled value)
        locationServiceDisabled,
  }) {
    return locationServiceDisabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoUserFound value)? noUserFound,
    TResult? Function(LocationPermissionDenied value)? locationPermissionDenied,
    TResult? Function(LocationServiceDisabled value)? locationServiceDisabled,
  }) {
    return locationServiceDisabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoUserFound value)? noUserFound,
    TResult Function(LocationPermissionDenied value)? locationPermissionDenied,
    TResult Function(LocationServiceDisabled value)? locationServiceDisabled,
    required TResult orElse(),
  }) {
    if (locationServiceDisabled != null) {
      return locationServiceDisabled(this);
    }
    return orElse();
  }
}

abstract class LocationServiceDisabled implements SplashFailure {
  const factory LocationServiceDisabled({final String failureDescription}) =
      _$LocationServiceDisabled;

  @override
  String get failureDescription;
  @override
  @JsonKey(ignore: true)
  _$$LocationServiceDisabledCopyWith<_$LocationServiceDisabled> get copyWith =>
      throw _privateConstructorUsedError;
}
