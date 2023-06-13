// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileFailure {
  String get failureDescription => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failureDescription) serverError,
    required TResult Function(String failureDescription) noUserFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failureDescription)? serverError,
    TResult? Function(String failureDescription)? noUserFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failureDescription)? serverError,
    TResult Function(String failureDescription)? noUserFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(NoUserFound value) noUserFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NoUserFound value)? noUserFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(NoUserFound value)? noUserFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileFailureCopyWith<ProfileFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileFailureCopyWith<$Res> {
  factory $ProfileFailureCopyWith(
          ProfileFailure value, $Res Function(ProfileFailure) then) =
      _$ProfileFailureCopyWithImpl<$Res, ProfileFailure>;
  @useResult
  $Res call({String failureDescription});
}

/// @nodoc
class _$ProfileFailureCopyWithImpl<$Res, $Val extends ProfileFailure>
    implements $ProfileFailureCopyWith<$Res> {
  _$ProfileFailureCopyWithImpl(this._value, this._then);

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
abstract class _$$ServerErrorCopyWith<$Res>
    implements $ProfileFailureCopyWith<$Res> {
  factory _$$ServerErrorCopyWith(
          _$ServerError value, $Res Function(_$ServerError) then) =
      __$$ServerErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String failureDescription});
}

/// @nodoc
class __$$ServerErrorCopyWithImpl<$Res>
    extends _$ProfileFailureCopyWithImpl<$Res, _$ServerError>
    implements _$$ServerErrorCopyWith<$Res> {
  __$$ServerErrorCopyWithImpl(
      _$ServerError _value, $Res Function(_$ServerError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureDescription = null,
  }) {
    return _then(_$ServerError(
      failureDescription: null == failureDescription
          ? _value.failureDescription
          : failureDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError({required this.failureDescription});

  @override
  final String failureDescription;

  @override
  String toString() {
    return 'ProfileFailure.serverError(failureDescription: $failureDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerError &&
            (identical(other.failureDescription, failureDescription) ||
                other.failureDescription == failureDescription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorCopyWith<_$ServerError> get copyWith =>
      __$$ServerErrorCopyWithImpl<_$ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failureDescription) serverError,
    required TResult Function(String failureDescription) noUserFound,
  }) {
    return serverError(failureDescription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failureDescription)? serverError,
    TResult? Function(String failureDescription)? noUserFound,
  }) {
    return serverError?.call(failureDescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failureDescription)? serverError,
    TResult Function(String failureDescription)? noUserFound,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(failureDescription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(NoUserFound value) noUserFound,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NoUserFound value)? noUserFound,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(NoUserFound value)? noUserFound,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements ProfileFailure {
  const factory ServerError({required final String failureDescription}) =
      _$ServerError;

  @override
  String get failureDescription;
  @override
  @JsonKey(ignore: true)
  _$$ServerErrorCopyWith<_$ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoUserFoundCopyWith<$Res>
    implements $ProfileFailureCopyWith<$Res> {
  factory _$$NoUserFoundCopyWith(
          _$NoUserFound value, $Res Function(_$NoUserFound) then) =
      __$$NoUserFoundCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String failureDescription});
}

/// @nodoc
class __$$NoUserFoundCopyWithImpl<$Res>
    extends _$ProfileFailureCopyWithImpl<$Res, _$NoUserFound>
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
    return 'ProfileFailure.noUserFound(failureDescription: $failureDescription)';
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
    required TResult Function(String failureDescription) serverError,
    required TResult Function(String failureDescription) noUserFound,
  }) {
    return noUserFound(failureDescription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failureDescription)? serverError,
    TResult? Function(String failureDescription)? noUserFound,
  }) {
    return noUserFound?.call(failureDescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failureDescription)? serverError,
    TResult Function(String failureDescription)? noUserFound,
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
    required TResult Function(ServerError value) serverError,
    required TResult Function(NoUserFound value) noUserFound,
  }) {
    return noUserFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NoUserFound value)? noUserFound,
  }) {
    return noUserFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(NoUserFound value)? noUserFound,
    required TResult orElse(),
  }) {
    if (noUserFound != null) {
      return noUserFound(this);
    }
    return orElse();
  }
}

abstract class NoUserFound implements ProfileFailure {
  const factory NoUserFound({final String failureDescription}) = _$NoUserFound;

  @override
  String get failureDescription;
  @override
  @JsonKey(ignore: true)
  _$$NoUserFoundCopyWith<_$NoUserFound> get copyWith =>
      throw _privateConstructorUsedError;
}
