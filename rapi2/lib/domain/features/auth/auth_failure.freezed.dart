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
    required TResult Function() serverError,
    required TResult Function() phoneNumberAlreadyInUse,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidVerificationCode,
    required TResult Function() invalidPhoneNumberAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? phoneNumberAlreadyInUse,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidVerificationCode,
    TResult? Function()? invalidPhoneNumberAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? phoneNumberAlreadyInUse,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidVerificationCode,
    TResult Function()? invalidPhoneNumberAndPasswordCombination,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(PhoneNumberAlreadyInUse value)
        phoneNumberAlreadyInUse,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidVerificationCode value)
        invalidVerificationCode,
    required TResult Function(InvalidPhoneNumberAndPasswordCombination value)
        invalidPhoneNumberAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(PhoneNumberAlreadyInUse value)? phoneNumberAlreadyInUse,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult? Function(InvalidPhoneNumberAndPasswordCombination value)?
        invalidPhoneNumberAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(PhoneNumberAlreadyInUse value)? phoneNumberAlreadyInUse,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidVerificationCode value)? invalidVerificationCode,
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
}

/// @nodoc
class __$$ServerErrorCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$ServerError>
    implements _$$ServerErrorCopyWith<$Res> {
  __$$ServerErrorCopyWithImpl(
      _$ServerError _value, $Res Function(_$ServerError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() phoneNumberAlreadyInUse,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidVerificationCode,
    required TResult Function() invalidPhoneNumberAndPasswordCombination,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? phoneNumberAlreadyInUse,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidVerificationCode,
    TResult? Function()? invalidPhoneNumberAndPasswordCombination,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? phoneNumberAlreadyInUse,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidVerificationCode,
    TResult Function()? invalidPhoneNumberAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(PhoneNumberAlreadyInUse value)
        phoneNumberAlreadyInUse,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidVerificationCode value)
        invalidVerificationCode,
    required TResult Function(InvalidPhoneNumberAndPasswordCombination value)
        invalidPhoneNumberAndPasswordCombination,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(PhoneNumberAlreadyInUse value)? phoneNumberAlreadyInUse,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult? Function(InvalidPhoneNumberAndPasswordCombination value)?
        invalidPhoneNumberAndPasswordCombination,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(PhoneNumberAlreadyInUse value)? phoneNumberAlreadyInUse,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidVerificationCode value)? invalidVerificationCode,
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
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class _$$PhoneNumberAlreadyInUseCopyWith<$Res> {
  factory _$$PhoneNumberAlreadyInUseCopyWith(_$PhoneNumberAlreadyInUse value,
          $Res Function(_$PhoneNumberAlreadyInUse) then) =
      __$$PhoneNumberAlreadyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PhoneNumberAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$PhoneNumberAlreadyInUse>
    implements _$$PhoneNumberAlreadyInUseCopyWith<$Res> {
  __$$PhoneNumberAlreadyInUseCopyWithImpl(_$PhoneNumberAlreadyInUse _value,
      $Res Function(_$PhoneNumberAlreadyInUse) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PhoneNumberAlreadyInUse implements PhoneNumberAlreadyInUse {
  const _$PhoneNumberAlreadyInUse();

  @override
  String toString() {
    return 'AuthFailure.phoneNumberAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() phoneNumberAlreadyInUse,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidVerificationCode,
    required TResult Function() invalidPhoneNumberAndPasswordCombination,
  }) {
    return phoneNumberAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? phoneNumberAlreadyInUse,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidVerificationCode,
    TResult? Function()? invalidPhoneNumberAndPasswordCombination,
  }) {
    return phoneNumberAlreadyInUse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? phoneNumberAlreadyInUse,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidVerificationCode,
    TResult Function()? invalidPhoneNumberAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (phoneNumberAlreadyInUse != null) {
      return phoneNumberAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(PhoneNumberAlreadyInUse value)
        phoneNumberAlreadyInUse,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidVerificationCode value)
        invalidVerificationCode,
    required TResult Function(InvalidPhoneNumberAndPasswordCombination value)
        invalidPhoneNumberAndPasswordCombination,
  }) {
    return phoneNumberAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(PhoneNumberAlreadyInUse value)? phoneNumberAlreadyInUse,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult? Function(InvalidPhoneNumberAndPasswordCombination value)?
        invalidPhoneNumberAndPasswordCombination,
  }) {
    return phoneNumberAlreadyInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(PhoneNumberAlreadyInUse value)? phoneNumberAlreadyInUse,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult Function(InvalidPhoneNumberAndPasswordCombination value)?
        invalidPhoneNumberAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (phoneNumberAlreadyInUse != null) {
      return phoneNumberAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberAlreadyInUse implements AuthFailure {
  const factory PhoneNumberAlreadyInUse() = _$PhoneNumberAlreadyInUse;
}

/// @nodoc
abstract class _$$EmailAlreadyInUseCopyWith<$Res> {
  factory _$$EmailAlreadyInUseCopyWith(
          _$EmailAlreadyInUse value, $Res Function(_$EmailAlreadyInUse) then) =
      __$$EmailAlreadyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$EmailAlreadyInUse>
    implements _$$EmailAlreadyInUseCopyWith<$Res> {
  __$$EmailAlreadyInUseCopyWithImpl(
      _$EmailAlreadyInUse _value, $Res Function(_$EmailAlreadyInUse) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmailAlreadyInUse implements EmailAlreadyInUse {
  const _$EmailAlreadyInUse();

  @override
  String toString() {
    return 'AuthFailure.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() phoneNumberAlreadyInUse,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidVerificationCode,
    required TResult Function() invalidPhoneNumberAndPasswordCombination,
  }) {
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? phoneNumberAlreadyInUse,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidVerificationCode,
    TResult? Function()? invalidPhoneNumberAndPasswordCombination,
  }) {
    return emailAlreadyInUse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? phoneNumberAlreadyInUse,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidVerificationCode,
    TResult Function()? invalidPhoneNumberAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(PhoneNumberAlreadyInUse value)
        phoneNumberAlreadyInUse,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidVerificationCode value)
        invalidVerificationCode,
    required TResult Function(InvalidPhoneNumberAndPasswordCombination value)
        invalidPhoneNumberAndPasswordCombination,
  }) {
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(PhoneNumberAlreadyInUse value)? phoneNumberAlreadyInUse,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult? Function(InvalidPhoneNumberAndPasswordCombination value)?
        invalidPhoneNumberAndPasswordCombination,
  }) {
    return emailAlreadyInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(PhoneNumberAlreadyInUse value)? phoneNumberAlreadyInUse,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult Function(InvalidPhoneNumberAndPasswordCombination value)?
        invalidPhoneNumberAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUse implements AuthFailure {
  const factory EmailAlreadyInUse() = _$EmailAlreadyInUse;
}

/// @nodoc
abstract class _$$InvalidVerificationCodeCopyWith<$Res> {
  factory _$$InvalidVerificationCodeCopyWith(_$InvalidVerificationCode value,
          $Res Function(_$InvalidVerificationCode) then) =
      __$$InvalidVerificationCodeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidVerificationCodeCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$InvalidVerificationCode>
    implements _$$InvalidVerificationCodeCopyWith<$Res> {
  __$$InvalidVerificationCodeCopyWithImpl(_$InvalidVerificationCode _value,
      $Res Function(_$InvalidVerificationCode) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidVerificationCode implements InvalidVerificationCode {
  const _$InvalidVerificationCode();

  @override
  String toString() {
    return 'AuthFailure.invalidVerificationCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidVerificationCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() phoneNumberAlreadyInUse,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidVerificationCode,
    required TResult Function() invalidPhoneNumberAndPasswordCombination,
  }) {
    return invalidVerificationCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? phoneNumberAlreadyInUse,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidVerificationCode,
    TResult? Function()? invalidPhoneNumberAndPasswordCombination,
  }) {
    return invalidVerificationCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? phoneNumberAlreadyInUse,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidVerificationCode,
    TResult Function()? invalidPhoneNumberAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (invalidVerificationCode != null) {
      return invalidVerificationCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(PhoneNumberAlreadyInUse value)
        phoneNumberAlreadyInUse,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidVerificationCode value)
        invalidVerificationCode,
    required TResult Function(InvalidPhoneNumberAndPasswordCombination value)
        invalidPhoneNumberAndPasswordCombination,
  }) {
    return invalidVerificationCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(PhoneNumberAlreadyInUse value)? phoneNumberAlreadyInUse,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult? Function(InvalidPhoneNumberAndPasswordCombination value)?
        invalidPhoneNumberAndPasswordCombination,
  }) {
    return invalidVerificationCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(PhoneNumberAlreadyInUse value)? phoneNumberAlreadyInUse,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult Function(InvalidPhoneNumberAndPasswordCombination value)?
        invalidPhoneNumberAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (invalidVerificationCode != null) {
      return invalidVerificationCode(this);
    }
    return orElse();
  }
}

abstract class InvalidVerificationCode implements AuthFailure {
  const factory InvalidVerificationCode() = _$InvalidVerificationCode;
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
    required TResult Function() serverError,
    required TResult Function() phoneNumberAlreadyInUse,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidVerificationCode,
    required TResult Function() invalidPhoneNumberAndPasswordCombination,
  }) {
    return invalidPhoneNumberAndPasswordCombination();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? phoneNumberAlreadyInUse,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidVerificationCode,
    TResult? Function()? invalidPhoneNumberAndPasswordCombination,
  }) {
    return invalidPhoneNumberAndPasswordCombination?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? phoneNumberAlreadyInUse,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidVerificationCode,
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
    required TResult Function(PhoneNumberAlreadyInUse value)
        phoneNumberAlreadyInUse,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidVerificationCode value)
        invalidVerificationCode,
    required TResult Function(InvalidPhoneNumberAndPasswordCombination value)
        invalidPhoneNumberAndPasswordCombination,
  }) {
    return invalidPhoneNumberAndPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(PhoneNumberAlreadyInUse value)? phoneNumberAlreadyInUse,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult? Function(InvalidPhoneNumberAndPasswordCombination value)?
        invalidPhoneNumberAndPasswordCombination,
  }) {
    return invalidPhoneNumberAndPasswordCombination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(PhoneNumberAlreadyInUse value)? phoneNumberAlreadyInUse,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidVerificationCode value)? invalidVerificationCode,
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
