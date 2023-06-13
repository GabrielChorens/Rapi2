// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failureDescription) serverError,
    required TResult Function() alreadyRegisteredValue,
    required TResult Function()
        invalidVerificationCodeAndPhoneNumberCombination,
    required TResult Function() invalidPhoneNumberAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failureDescription)? serverError,
    TResult? Function()? alreadyRegisteredValue,
    TResult? Function()? invalidVerificationCodeAndPhoneNumberCombination,
    TResult? Function()? invalidPhoneNumberAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failureDescription)? serverError,
    TResult Function()? alreadyRegisteredValue,
    TResult Function()? invalidVerificationCodeAndPhoneNumberCombination,
    TResult Function()? invalidPhoneNumberAndPasswordCombination,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(AlreadyRegisteredValue value)
        alreadyRegisteredValue,
    required TResult Function(
            InvalidVerificationCodeAndPhoneNumberCombination value)
        invalidVerificationCodeAndPhoneNumberCombination,
    required TResult Function(InvalidPhoneNumberAndPasswordCombination value)
        invalidPhoneNumberAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(AlreadyRegisteredValue value)? alreadyRegisteredValue,
    TResult? Function(InvalidVerificationCodeAndPhoneNumberCombination value)?
        invalidVerificationCodeAndPhoneNumberCombination,
    TResult? Function(InvalidPhoneNumberAndPasswordCombination value)?
        invalidPhoneNumberAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(AlreadyRegisteredValue value)? alreadyRegisteredValue,
    TResult Function(InvalidVerificationCodeAndPhoneNumberCombination value)?
        invalidVerificationCodeAndPhoneNumberCombination,
    TResult Function(InvalidPhoneNumberAndPasswordCombination value)?
        invalidPhoneNumberAndPasswordCombination,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res, AuthFailure>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res, $Val extends AuthFailure>
    implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServerErrorCopyWith<$Res> {
  factory _$$ServerErrorCopyWith(
          _$ServerError value, $Res Function(_$ServerError) then) =
      __$$ServerErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String failureDescription});
}

/// @nodoc
class __$$ServerErrorCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$ServerError>
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
    return 'AuthFailure.serverError(failureDescription: $failureDescription)';
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
    required TResult Function() alreadyRegisteredValue,
    required TResult Function()
        invalidVerificationCodeAndPhoneNumberCombination,
    required TResult Function() invalidPhoneNumberAndPasswordCombination,
  }) {
    return serverError(failureDescription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failureDescription)? serverError,
    TResult? Function()? alreadyRegisteredValue,
    TResult? Function()? invalidVerificationCodeAndPhoneNumberCombination,
    TResult? Function()? invalidPhoneNumberAndPasswordCombination,
  }) {
    return serverError?.call(failureDescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failureDescription)? serverError,
    TResult Function()? alreadyRegisteredValue,
    TResult Function()? invalidVerificationCodeAndPhoneNumberCombination,
    TResult Function()? invalidPhoneNumberAndPasswordCombination,
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
    required TResult Function(AlreadyRegisteredValue value)
        alreadyRegisteredValue,
    required TResult Function(
            InvalidVerificationCodeAndPhoneNumberCombination value)
        invalidVerificationCodeAndPhoneNumberCombination,
    required TResult Function(InvalidPhoneNumberAndPasswordCombination value)
        invalidPhoneNumberAndPasswordCombination,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(AlreadyRegisteredValue value)? alreadyRegisteredValue,
    TResult? Function(InvalidVerificationCodeAndPhoneNumberCombination value)?
        invalidVerificationCodeAndPhoneNumberCombination,
    TResult? Function(InvalidPhoneNumberAndPasswordCombination value)?
        invalidPhoneNumberAndPasswordCombination,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(AlreadyRegisteredValue value)? alreadyRegisteredValue,
    TResult Function(InvalidVerificationCodeAndPhoneNumberCombination value)?
        invalidVerificationCodeAndPhoneNumberCombination,
    TResult Function(InvalidPhoneNumberAndPasswordCombination value)?
        invalidPhoneNumberAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError({required final String failureDescription}) =
      _$ServerError;

  String get failureDescription;
  @JsonKey(ignore: true)
  _$$ServerErrorCopyWith<_$ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AlreadyRegisteredValueCopyWith<$Res> {
  factory _$$AlreadyRegisteredValueCopyWith(_$AlreadyRegisteredValue value,
          $Res Function(_$AlreadyRegisteredValue) then) =
      __$$AlreadyRegisteredValueCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AlreadyRegisteredValueCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$AlreadyRegisteredValue>
    implements _$$AlreadyRegisteredValueCopyWith<$Res> {
  __$$AlreadyRegisteredValueCopyWithImpl(_$AlreadyRegisteredValue _value,
      $Res Function(_$AlreadyRegisteredValue) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AlreadyRegisteredValue implements AlreadyRegisteredValue {
  const _$AlreadyRegisteredValue();

  @override
  String toString() {
    return 'AuthFailure.alreadyRegisteredValue()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AlreadyRegisteredValue);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failureDescription) serverError,
    required TResult Function() alreadyRegisteredValue,
    required TResult Function()
        invalidVerificationCodeAndPhoneNumberCombination,
    required TResult Function() invalidPhoneNumberAndPasswordCombination,
  }) {
    return alreadyRegisteredValue();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failureDescription)? serverError,
    TResult? Function()? alreadyRegisteredValue,
    TResult? Function()? invalidVerificationCodeAndPhoneNumberCombination,
    TResult? Function()? invalidPhoneNumberAndPasswordCombination,
  }) {
    return alreadyRegisteredValue?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failureDescription)? serverError,
    TResult Function()? alreadyRegisteredValue,
    TResult Function()? invalidVerificationCodeAndPhoneNumberCombination,
    TResult Function()? invalidPhoneNumberAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (alreadyRegisteredValue != null) {
      return alreadyRegisteredValue();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(AlreadyRegisteredValue value)
        alreadyRegisteredValue,
    required TResult Function(
            InvalidVerificationCodeAndPhoneNumberCombination value)
        invalidVerificationCodeAndPhoneNumberCombination,
    required TResult Function(InvalidPhoneNumberAndPasswordCombination value)
        invalidPhoneNumberAndPasswordCombination,
  }) {
    return alreadyRegisteredValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(AlreadyRegisteredValue value)? alreadyRegisteredValue,
    TResult? Function(InvalidVerificationCodeAndPhoneNumberCombination value)?
        invalidVerificationCodeAndPhoneNumberCombination,
    TResult? Function(InvalidPhoneNumberAndPasswordCombination value)?
        invalidPhoneNumberAndPasswordCombination,
  }) {
    return alreadyRegisteredValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(AlreadyRegisteredValue value)? alreadyRegisteredValue,
    TResult Function(InvalidVerificationCodeAndPhoneNumberCombination value)?
        invalidVerificationCodeAndPhoneNumberCombination,
    TResult Function(InvalidPhoneNumberAndPasswordCombination value)?
        invalidPhoneNumberAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (alreadyRegisteredValue != null) {
      return alreadyRegisteredValue(this);
    }
    return orElse();
  }
}

abstract class AlreadyRegisteredValue implements AuthFailure {
  const factory AlreadyRegisteredValue() = _$AlreadyRegisteredValue;
}

/// @nodoc
abstract class _$$InvalidVerificationCodeAndPhoneNumberCombinationCopyWith<
    $Res> {
  factory _$$InvalidVerificationCodeAndPhoneNumberCombinationCopyWith(
          _$InvalidVerificationCodeAndPhoneNumberCombination value,
          $Res Function(_$InvalidVerificationCodeAndPhoneNumberCombination)
              then) =
      __$$InvalidVerificationCodeAndPhoneNumberCombinationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidVerificationCodeAndPhoneNumberCombinationCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res,
        _$InvalidVerificationCodeAndPhoneNumberCombination>
    implements
        _$$InvalidVerificationCodeAndPhoneNumberCombinationCopyWith<$Res> {
  __$$InvalidVerificationCodeAndPhoneNumberCombinationCopyWithImpl(
      _$InvalidVerificationCodeAndPhoneNumberCombination _value,
      $Res Function(_$InvalidVerificationCodeAndPhoneNumberCombination) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidVerificationCodeAndPhoneNumberCombination
    implements InvalidVerificationCodeAndPhoneNumberCombination {
  const _$InvalidVerificationCodeAndPhoneNumberCombination();

  @override
  String toString() {
    return 'AuthFailure.invalidVerificationCodeAndPhoneNumberCombination()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidVerificationCodeAndPhoneNumberCombination);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failureDescription) serverError,
    required TResult Function() alreadyRegisteredValue,
    required TResult Function()
        invalidVerificationCodeAndPhoneNumberCombination,
    required TResult Function() invalidPhoneNumberAndPasswordCombination,
  }) {
    return invalidVerificationCodeAndPhoneNumberCombination();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failureDescription)? serverError,
    TResult? Function()? alreadyRegisteredValue,
    TResult? Function()? invalidVerificationCodeAndPhoneNumberCombination,
    TResult? Function()? invalidPhoneNumberAndPasswordCombination,
  }) {
    return invalidVerificationCodeAndPhoneNumberCombination?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failureDescription)? serverError,
    TResult Function()? alreadyRegisteredValue,
    TResult Function()? invalidVerificationCodeAndPhoneNumberCombination,
    TResult Function()? invalidPhoneNumberAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (invalidVerificationCodeAndPhoneNumberCombination != null) {
      return invalidVerificationCodeAndPhoneNumberCombination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(AlreadyRegisteredValue value)
        alreadyRegisteredValue,
    required TResult Function(
            InvalidVerificationCodeAndPhoneNumberCombination value)
        invalidVerificationCodeAndPhoneNumberCombination,
    required TResult Function(InvalidPhoneNumberAndPasswordCombination value)
        invalidPhoneNumberAndPasswordCombination,
  }) {
    return invalidVerificationCodeAndPhoneNumberCombination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(AlreadyRegisteredValue value)? alreadyRegisteredValue,
    TResult? Function(InvalidVerificationCodeAndPhoneNumberCombination value)?
        invalidVerificationCodeAndPhoneNumberCombination,
    TResult? Function(InvalidPhoneNumberAndPasswordCombination value)?
        invalidPhoneNumberAndPasswordCombination,
  }) {
    return invalidVerificationCodeAndPhoneNumberCombination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(AlreadyRegisteredValue value)? alreadyRegisteredValue,
    TResult Function(InvalidVerificationCodeAndPhoneNumberCombination value)?
        invalidVerificationCodeAndPhoneNumberCombination,
    TResult Function(InvalidPhoneNumberAndPasswordCombination value)?
        invalidPhoneNumberAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (invalidVerificationCodeAndPhoneNumberCombination != null) {
      return invalidVerificationCodeAndPhoneNumberCombination(this);
    }
    return orElse();
  }
}

abstract class InvalidVerificationCodeAndPhoneNumberCombination
    implements AuthFailure {
  const factory InvalidVerificationCodeAndPhoneNumberCombination() =
      _$InvalidVerificationCodeAndPhoneNumberCombination;
}

/// @nodoc
abstract class _$$InvalidPhoneNumberAndPasswordCombinationCopyWith<$Res> {
  factory _$$InvalidPhoneNumberAndPasswordCombinationCopyWith(
          _$InvalidPhoneNumberAndPasswordCombination value,
          $Res Function(_$InvalidPhoneNumberAndPasswordCombination) then) =
      __$$InvalidPhoneNumberAndPasswordCombinationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidPhoneNumberAndPasswordCombinationCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res,
        _$InvalidPhoneNumberAndPasswordCombination>
    implements _$$InvalidPhoneNumberAndPasswordCombinationCopyWith<$Res> {
  __$$InvalidPhoneNumberAndPasswordCombinationCopyWithImpl(
      _$InvalidPhoneNumberAndPasswordCombination _value,
      $Res Function(_$InvalidPhoneNumberAndPasswordCombination) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidPhoneNumberAndPasswordCombination
    implements InvalidPhoneNumberAndPasswordCombination {
  const _$InvalidPhoneNumberAndPasswordCombination();

  @override
  String toString() {
    return 'AuthFailure.invalidPhoneNumberAndPasswordCombination()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidPhoneNumberAndPasswordCombination);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failureDescription) serverError,
    required TResult Function() alreadyRegisteredValue,
    required TResult Function()
        invalidVerificationCodeAndPhoneNumberCombination,
    required TResult Function() invalidPhoneNumberAndPasswordCombination,
  }) {
    return invalidPhoneNumberAndPasswordCombination();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failureDescription)? serverError,
    TResult? Function()? alreadyRegisteredValue,
    TResult? Function()? invalidVerificationCodeAndPhoneNumberCombination,
    TResult? Function()? invalidPhoneNumberAndPasswordCombination,
  }) {
    return invalidPhoneNumberAndPasswordCombination?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failureDescription)? serverError,
    TResult Function()? alreadyRegisteredValue,
    TResult Function()? invalidVerificationCodeAndPhoneNumberCombination,
    TResult Function()? invalidPhoneNumberAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumberAndPasswordCombination != null) {
      return invalidPhoneNumberAndPasswordCombination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(AlreadyRegisteredValue value)
        alreadyRegisteredValue,
    required TResult Function(
            InvalidVerificationCodeAndPhoneNumberCombination value)
        invalidVerificationCodeAndPhoneNumberCombination,
    required TResult Function(InvalidPhoneNumberAndPasswordCombination value)
        invalidPhoneNumberAndPasswordCombination,
  }) {
    return invalidPhoneNumberAndPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(AlreadyRegisteredValue value)? alreadyRegisteredValue,
    TResult? Function(InvalidVerificationCodeAndPhoneNumberCombination value)?
        invalidVerificationCodeAndPhoneNumberCombination,
    TResult? Function(InvalidPhoneNumberAndPasswordCombination value)?
        invalidPhoneNumberAndPasswordCombination,
  }) {
    return invalidPhoneNumberAndPasswordCombination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(AlreadyRegisteredValue value)? alreadyRegisteredValue,
    TResult Function(InvalidVerificationCodeAndPhoneNumberCombination value)?
        invalidVerificationCodeAndPhoneNumberCombination,
    TResult Function(InvalidPhoneNumberAndPasswordCombination value)?
        invalidPhoneNumberAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumberAndPasswordCombination != null) {
      return invalidPhoneNumberAndPasswordCombination(this);
    }
    return orElse();
  }
}

abstract class InvalidPhoneNumberAndPasswordCombination implements AuthFailure {
  const factory InvalidPhoneNumberAndPasswordCombination() =
      _$InvalidPhoneNumberAndPasswordCombination;
}
