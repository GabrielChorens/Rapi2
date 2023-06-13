// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_responses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ServerSuccess {
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  String get typeDescription => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServerSuccessCopyWith<ServerSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerSuccessCopyWith<$Res> {
  factory $ServerSuccessCopyWith(
          ServerSuccess value, $Res Function(ServerSuccess) then) =
      _$ServerSuccessCopyWithImpl<$Res, ServerSuccess>;
  @useResult
  $Res call({Map<String, dynamic> data, String typeDescription});
}

/// @nodoc
class _$ServerSuccessCopyWithImpl<$Res, $Val extends ServerSuccess>
    implements $ServerSuccessCopyWith<$Res> {
  _$ServerSuccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? typeDescription = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      typeDescription: null == typeDescription
          ? _value.typeDescription
          : typeDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServerSuccessCopyWith<$Res>
    implements $ServerSuccessCopyWith<$Res> {
  factory _$$_ServerSuccessCopyWith(
          _$_ServerSuccess value, $Res Function(_$_ServerSuccess) then) =
      __$$_ServerSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> data, String typeDescription});
}

/// @nodoc
class __$$_ServerSuccessCopyWithImpl<$Res>
    extends _$ServerSuccessCopyWithImpl<$Res, _$_ServerSuccess>
    implements _$$_ServerSuccessCopyWith<$Res> {
  __$$_ServerSuccessCopyWithImpl(
      _$_ServerSuccess _value, $Res Function(_$_ServerSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? typeDescription = null,
  }) {
    return _then(_$_ServerSuccess(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      typeDescription: null == typeDescription
          ? _value.typeDescription
          : typeDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ServerSuccess implements _ServerSuccess {
  const _$_ServerSuccess(
      {final Map<String, dynamic> data = const {},
      this.typeDescription = 'success'})
      : _data = data;

  final Map<String, dynamic> _data;
  @override
  @JsonKey()
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  @JsonKey()
  final String typeDescription;

  @override
  String toString() {
    return 'ServerSuccess(data: $data, typeDescription: $typeDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerSuccess &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.typeDescription, typeDescription) ||
                other.typeDescription == typeDescription));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), typeDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerSuccessCopyWith<_$_ServerSuccess> get copyWith =>
      __$$_ServerSuccessCopyWithImpl<_$_ServerSuccess>(this, _$identity);
}

abstract class _ServerSuccess implements ServerSuccess {
  const factory _ServerSuccess(
      {final Map<String, dynamic> data,
      final String typeDescription}) = _$_ServerSuccess;

  @override
  Map<String, dynamic> get data;
  @override
  String get typeDescription;
  @override
  @JsonKey(ignore: true)
  _$$_ServerSuccessCopyWith<_$_ServerSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ApiConnectionFailure {
  String get typeDescription => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String typeDescription) alreadyRegisteredValue,
    required TResult Function(String typeDescription) invalidValue,
    required TResult Function(String typeDescription, String? detailedMessage)
        badRequest,
    required TResult Function(String typeDescription) unauthorized,
    required TResult Function(String typeDescription) notFound,
    required TResult Function(String typeDescription) serverError,
    required TResult Function(String typeDescription) internetConnectionTimeout,
    required TResult Function(String typeDescription) connectionError,
    required TResult Function(String typeDescription, String? detailedMessage)
        unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String typeDescription)? alreadyRegisteredValue,
    TResult? Function(String typeDescription)? invalidValue,
    TResult? Function(String typeDescription, String? detailedMessage)?
        badRequest,
    TResult? Function(String typeDescription)? unauthorized,
    TResult? Function(String typeDescription)? notFound,
    TResult? Function(String typeDescription)? serverError,
    TResult? Function(String typeDescription)? internetConnectionTimeout,
    TResult? Function(String typeDescription)? connectionError,
    TResult? Function(String typeDescription, String? detailedMessage)?
        unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String typeDescription)? alreadyRegisteredValue,
    TResult Function(String typeDescription)? invalidValue,
    TResult Function(String typeDescription, String? detailedMessage)?
        badRequest,
    TResult Function(String typeDescription)? unauthorized,
    TResult Function(String typeDescription)? notFound,
    TResult Function(String typeDescription)? serverError,
    TResult Function(String typeDescription)? internetConnectionTimeout,
    TResult Function(String typeDescription)? connectionError,
    TResult Function(String typeDescription, String? detailedMessage)?
        unexpectedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AlreadyRegisteredValue value)
        alreadyRegisteredValue,
    required TResult Function(InvalidValue value) invalidValue,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(NotFound value) notFound,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InternetConnectionTimeout value)
        internetConnectionTimeout,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AlreadyRegisteredValue value)? alreadyRegisteredValue,
    TResult? Function(InvalidValue value)? invalidValue,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(InternetConnectionTimeout value)?
        internetConnectionTimeout,
    TResult? Function(ConnectionError value)? connectionError,
    TResult? Function(UnexpectedError value)? unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AlreadyRegisteredValue value)? alreadyRegisteredValue,
    TResult Function(InvalidValue value)? invalidValue,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternetConnectionTimeout value)?
        internetConnectionTimeout,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiConnectionFailureCopyWith<ApiConnectionFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiConnectionFailureCopyWith<$Res> {
  factory $ApiConnectionFailureCopyWith(ApiConnectionFailure value,
          $Res Function(ApiConnectionFailure) then) =
      _$ApiConnectionFailureCopyWithImpl<$Res, ApiConnectionFailure>;
  @useResult
  $Res call({String typeDescription});
}

/// @nodoc
class _$ApiConnectionFailureCopyWithImpl<$Res,
        $Val extends ApiConnectionFailure>
    implements $ApiConnectionFailureCopyWith<$Res> {
  _$ApiConnectionFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeDescription = null,
  }) {
    return _then(_value.copyWith(
      typeDescription: null == typeDescription
          ? _value.typeDescription
          : typeDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlreadyRegisteredValueCopyWith<$Res>
    implements $ApiConnectionFailureCopyWith<$Res> {
  factory _$$AlreadyRegisteredValueCopyWith(_$AlreadyRegisteredValue value,
          $Res Function(_$AlreadyRegisteredValue) then) =
      __$$AlreadyRegisteredValueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String typeDescription});
}

/// @nodoc
class __$$AlreadyRegisteredValueCopyWithImpl<$Res>
    extends _$ApiConnectionFailureCopyWithImpl<$Res, _$AlreadyRegisteredValue>
    implements _$$AlreadyRegisteredValueCopyWith<$Res> {
  __$$AlreadyRegisteredValueCopyWithImpl(_$AlreadyRegisteredValue _value,
      $Res Function(_$AlreadyRegisteredValue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeDescription = null,
  }) {
    return _then(_$AlreadyRegisteredValue(
      typeDescription: null == typeDescription
          ? _value.typeDescription
          : typeDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AlreadyRegisteredValue extends AlreadyRegisteredValue {
  const _$AlreadyRegisteredValue(
      {this.typeDescription = 'already_registered_value'})
      : super._();

  @override
  @JsonKey()
  final String typeDescription;

  @override
  String toString() {
    return 'ApiConnectionFailure.alreadyRegisteredValue(typeDescription: $typeDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlreadyRegisteredValue &&
            (identical(other.typeDescription, typeDescription) ||
                other.typeDescription == typeDescription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, typeDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlreadyRegisteredValueCopyWith<_$AlreadyRegisteredValue> get copyWith =>
      __$$AlreadyRegisteredValueCopyWithImpl<_$AlreadyRegisteredValue>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String typeDescription) alreadyRegisteredValue,
    required TResult Function(String typeDescription) invalidValue,
    required TResult Function(String typeDescription, String? detailedMessage)
        badRequest,
    required TResult Function(String typeDescription) unauthorized,
    required TResult Function(String typeDescription) notFound,
    required TResult Function(String typeDescription) serverError,
    required TResult Function(String typeDescription) internetConnectionTimeout,
    required TResult Function(String typeDescription) connectionError,
    required TResult Function(String typeDescription, String? detailedMessage)
        unexpectedError,
  }) {
    return alreadyRegisteredValue(typeDescription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String typeDescription)? alreadyRegisteredValue,
    TResult? Function(String typeDescription)? invalidValue,
    TResult? Function(String typeDescription, String? detailedMessage)?
        badRequest,
    TResult? Function(String typeDescription)? unauthorized,
    TResult? Function(String typeDescription)? notFound,
    TResult? Function(String typeDescription)? serverError,
    TResult? Function(String typeDescription)? internetConnectionTimeout,
    TResult? Function(String typeDescription)? connectionError,
    TResult? Function(String typeDescription, String? detailedMessage)?
        unexpectedError,
  }) {
    return alreadyRegisteredValue?.call(typeDescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String typeDescription)? alreadyRegisteredValue,
    TResult Function(String typeDescription)? invalidValue,
    TResult Function(String typeDescription, String? detailedMessage)?
        badRequest,
    TResult Function(String typeDescription)? unauthorized,
    TResult Function(String typeDescription)? notFound,
    TResult Function(String typeDescription)? serverError,
    TResult Function(String typeDescription)? internetConnectionTimeout,
    TResult Function(String typeDescription)? connectionError,
    TResult Function(String typeDescription, String? detailedMessage)?
        unexpectedError,
    required TResult orElse(),
  }) {
    if (alreadyRegisteredValue != null) {
      return alreadyRegisteredValue(typeDescription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AlreadyRegisteredValue value)
        alreadyRegisteredValue,
    required TResult Function(InvalidValue value) invalidValue,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(NotFound value) notFound,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InternetConnectionTimeout value)
        internetConnectionTimeout,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return alreadyRegisteredValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AlreadyRegisteredValue value)? alreadyRegisteredValue,
    TResult? Function(InvalidValue value)? invalidValue,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(InternetConnectionTimeout value)?
        internetConnectionTimeout,
    TResult? Function(ConnectionError value)? connectionError,
    TResult? Function(UnexpectedError value)? unexpectedError,
  }) {
    return alreadyRegisteredValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AlreadyRegisteredValue value)? alreadyRegisteredValue,
    TResult Function(InvalidValue value)? invalidValue,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternetConnectionTimeout value)?
        internetConnectionTimeout,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (alreadyRegisteredValue != null) {
      return alreadyRegisteredValue(this);
    }
    return orElse();
  }
}

abstract class AlreadyRegisteredValue extends ApiConnectionFailure {
  const factory AlreadyRegisteredValue({final String typeDescription}) =
      _$AlreadyRegisteredValue;
  const AlreadyRegisteredValue._() : super._();

  @override
  String get typeDescription;
  @override
  @JsonKey(ignore: true)
  _$$AlreadyRegisteredValueCopyWith<_$AlreadyRegisteredValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidValueCopyWith<$Res>
    implements $ApiConnectionFailureCopyWith<$Res> {
  factory _$$InvalidValueCopyWith(
          _$InvalidValue value, $Res Function(_$InvalidValue) then) =
      __$$InvalidValueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String typeDescription});
}

/// @nodoc
class __$$InvalidValueCopyWithImpl<$Res>
    extends _$ApiConnectionFailureCopyWithImpl<$Res, _$InvalidValue>
    implements _$$InvalidValueCopyWith<$Res> {
  __$$InvalidValueCopyWithImpl(
      _$InvalidValue _value, $Res Function(_$InvalidValue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeDescription = null,
  }) {
    return _then(_$InvalidValue(
      typeDescription: null == typeDescription
          ? _value.typeDescription
          : typeDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidValue extends InvalidValue {
  const _$InvalidValue({this.typeDescription = 'invalid_value'}) : super._();

  @override
  @JsonKey()
  final String typeDescription;

  @override
  String toString() {
    return 'ApiConnectionFailure.invalidValue(typeDescription: $typeDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidValue &&
            (identical(other.typeDescription, typeDescription) ||
                other.typeDescription == typeDescription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, typeDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidValueCopyWith<_$InvalidValue> get copyWith =>
      __$$InvalidValueCopyWithImpl<_$InvalidValue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String typeDescription) alreadyRegisteredValue,
    required TResult Function(String typeDescription) invalidValue,
    required TResult Function(String typeDescription, String? detailedMessage)
        badRequest,
    required TResult Function(String typeDescription) unauthorized,
    required TResult Function(String typeDescription) notFound,
    required TResult Function(String typeDescription) serverError,
    required TResult Function(String typeDescription) internetConnectionTimeout,
    required TResult Function(String typeDescription) connectionError,
    required TResult Function(String typeDescription, String? detailedMessage)
        unexpectedError,
  }) {
    return invalidValue(typeDescription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String typeDescription)? alreadyRegisteredValue,
    TResult? Function(String typeDescription)? invalidValue,
    TResult? Function(String typeDescription, String? detailedMessage)?
        badRequest,
    TResult? Function(String typeDescription)? unauthorized,
    TResult? Function(String typeDescription)? notFound,
    TResult? Function(String typeDescription)? serverError,
    TResult? Function(String typeDescription)? internetConnectionTimeout,
    TResult? Function(String typeDescription)? connectionError,
    TResult? Function(String typeDescription, String? detailedMessage)?
        unexpectedError,
  }) {
    return invalidValue?.call(typeDescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String typeDescription)? alreadyRegisteredValue,
    TResult Function(String typeDescription)? invalidValue,
    TResult Function(String typeDescription, String? detailedMessage)?
        badRequest,
    TResult Function(String typeDescription)? unauthorized,
    TResult Function(String typeDescription)? notFound,
    TResult Function(String typeDescription)? serverError,
    TResult Function(String typeDescription)? internetConnectionTimeout,
    TResult Function(String typeDescription)? connectionError,
    TResult Function(String typeDescription, String? detailedMessage)?
        unexpectedError,
    required TResult orElse(),
  }) {
    if (invalidValue != null) {
      return invalidValue(typeDescription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AlreadyRegisteredValue value)
        alreadyRegisteredValue,
    required TResult Function(InvalidValue value) invalidValue,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(NotFound value) notFound,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InternetConnectionTimeout value)
        internetConnectionTimeout,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return invalidValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AlreadyRegisteredValue value)? alreadyRegisteredValue,
    TResult? Function(InvalidValue value)? invalidValue,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(InternetConnectionTimeout value)?
        internetConnectionTimeout,
    TResult? Function(ConnectionError value)? connectionError,
    TResult? Function(UnexpectedError value)? unexpectedError,
  }) {
    return invalidValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AlreadyRegisteredValue value)? alreadyRegisteredValue,
    TResult Function(InvalidValue value)? invalidValue,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternetConnectionTimeout value)?
        internetConnectionTimeout,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (invalidValue != null) {
      return invalidValue(this);
    }
    return orElse();
  }
}

abstract class InvalidValue extends ApiConnectionFailure {
  const factory InvalidValue({final String typeDescription}) = _$InvalidValue;
  const InvalidValue._() : super._();

  @override
  String get typeDescription;
  @override
  @JsonKey(ignore: true)
  _$$InvalidValueCopyWith<_$InvalidValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BadRequestCopyWith<$Res>
    implements $ApiConnectionFailureCopyWith<$Res> {
  factory _$$BadRequestCopyWith(
          _$BadRequest value, $Res Function(_$BadRequest) then) =
      __$$BadRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String typeDescription, String? detailedMessage});
}

/// @nodoc
class __$$BadRequestCopyWithImpl<$Res>
    extends _$ApiConnectionFailureCopyWithImpl<$Res, _$BadRequest>
    implements _$$BadRequestCopyWith<$Res> {
  __$$BadRequestCopyWithImpl(
      _$BadRequest _value, $Res Function(_$BadRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeDescription = null,
    Object? detailedMessage = freezed,
  }) {
    return _then(_$BadRequest(
      typeDescription: null == typeDescription
          ? _value.typeDescription
          : typeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      detailedMessage: freezed == detailedMessage
          ? _value.detailedMessage
          : detailedMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BadRequest extends BadRequest {
  const _$BadRequest(
      {this.typeDescription = 'bad_request', this.detailedMessage})
      : super._();

  @override
  @JsonKey()
  final String typeDescription;
  @override
  final String? detailedMessage;

  @override
  String toString() {
    return 'ApiConnectionFailure.badRequest(typeDescription: $typeDescription, detailedMessage: $detailedMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadRequest &&
            (identical(other.typeDescription, typeDescription) ||
                other.typeDescription == typeDescription) &&
            (identical(other.detailedMessage, detailedMessage) ||
                other.detailedMessage == detailedMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, typeDescription, detailedMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BadRequestCopyWith<_$BadRequest> get copyWith =>
      __$$BadRequestCopyWithImpl<_$BadRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String typeDescription) alreadyRegisteredValue,
    required TResult Function(String typeDescription) invalidValue,
    required TResult Function(String typeDescription, String? detailedMessage)
        badRequest,
    required TResult Function(String typeDescription) unauthorized,
    required TResult Function(String typeDescription) notFound,
    required TResult Function(String typeDescription) serverError,
    required TResult Function(String typeDescription) internetConnectionTimeout,
    required TResult Function(String typeDescription) connectionError,
    required TResult Function(String typeDescription, String? detailedMessage)
        unexpectedError,
  }) {
    return badRequest(typeDescription, detailedMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String typeDescription)? alreadyRegisteredValue,
    TResult? Function(String typeDescription)? invalidValue,
    TResult? Function(String typeDescription, String? detailedMessage)?
        badRequest,
    TResult? Function(String typeDescription)? unauthorized,
    TResult? Function(String typeDescription)? notFound,
    TResult? Function(String typeDescription)? serverError,
    TResult? Function(String typeDescription)? internetConnectionTimeout,
    TResult? Function(String typeDescription)? connectionError,
    TResult? Function(String typeDescription, String? detailedMessage)?
        unexpectedError,
  }) {
    return badRequest?.call(typeDescription, detailedMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String typeDescription)? alreadyRegisteredValue,
    TResult Function(String typeDescription)? invalidValue,
    TResult Function(String typeDescription, String? detailedMessage)?
        badRequest,
    TResult Function(String typeDescription)? unauthorized,
    TResult Function(String typeDescription)? notFound,
    TResult Function(String typeDescription)? serverError,
    TResult Function(String typeDescription)? internetConnectionTimeout,
    TResult Function(String typeDescription)? connectionError,
    TResult Function(String typeDescription, String? detailedMessage)?
        unexpectedError,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(typeDescription, detailedMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AlreadyRegisteredValue value)
        alreadyRegisteredValue,
    required TResult Function(InvalidValue value) invalidValue,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(NotFound value) notFound,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InternetConnectionTimeout value)
        internetConnectionTimeout,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AlreadyRegisteredValue value)? alreadyRegisteredValue,
    TResult? Function(InvalidValue value)? invalidValue,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(InternetConnectionTimeout value)?
        internetConnectionTimeout,
    TResult? Function(ConnectionError value)? connectionError,
    TResult? Function(UnexpectedError value)? unexpectedError,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AlreadyRegisteredValue value)? alreadyRegisteredValue,
    TResult Function(InvalidValue value)? invalidValue,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternetConnectionTimeout value)?
        internetConnectionTimeout,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class BadRequest extends ApiConnectionFailure {
  const factory BadRequest(
      {final String typeDescription,
      final String? detailedMessage}) = _$BadRequest;
  const BadRequest._() : super._();

  @override
  String get typeDescription;
  String? get detailedMessage;
  @override
  @JsonKey(ignore: true)
  _$$BadRequestCopyWith<_$BadRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthorizedCopyWith<$Res>
    implements $ApiConnectionFailureCopyWith<$Res> {
  factory _$$UnauthorizedCopyWith(
          _$Unauthorized value, $Res Function(_$Unauthorized) then) =
      __$$UnauthorizedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String typeDescription});
}

/// @nodoc
class __$$UnauthorizedCopyWithImpl<$Res>
    extends _$ApiConnectionFailureCopyWithImpl<$Res, _$Unauthorized>
    implements _$$UnauthorizedCopyWith<$Res> {
  __$$UnauthorizedCopyWithImpl(
      _$Unauthorized _value, $Res Function(_$Unauthorized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeDescription = null,
  }) {
    return _then(_$Unauthorized(
      typeDescription: null == typeDescription
          ? _value.typeDescription
          : typeDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Unauthorized extends Unauthorized {
  const _$Unauthorized({this.typeDescription = 'unauthorized'}) : super._();

  @override
  @JsonKey()
  final String typeDescription;

  @override
  String toString() {
    return 'ApiConnectionFailure.unauthorized(typeDescription: $typeDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Unauthorized &&
            (identical(other.typeDescription, typeDescription) ||
                other.typeDescription == typeDescription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, typeDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorizedCopyWith<_$Unauthorized> get copyWith =>
      __$$UnauthorizedCopyWithImpl<_$Unauthorized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String typeDescription) alreadyRegisteredValue,
    required TResult Function(String typeDescription) invalidValue,
    required TResult Function(String typeDescription, String? detailedMessage)
        badRequest,
    required TResult Function(String typeDescription) unauthorized,
    required TResult Function(String typeDescription) notFound,
    required TResult Function(String typeDescription) serverError,
    required TResult Function(String typeDescription) internetConnectionTimeout,
    required TResult Function(String typeDescription) connectionError,
    required TResult Function(String typeDescription, String? detailedMessage)
        unexpectedError,
  }) {
    return unauthorized(typeDescription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String typeDescription)? alreadyRegisteredValue,
    TResult? Function(String typeDescription)? invalidValue,
    TResult? Function(String typeDescription, String? detailedMessage)?
        badRequest,
    TResult? Function(String typeDescription)? unauthorized,
    TResult? Function(String typeDescription)? notFound,
    TResult? Function(String typeDescription)? serverError,
    TResult? Function(String typeDescription)? internetConnectionTimeout,
    TResult? Function(String typeDescription)? connectionError,
    TResult? Function(String typeDescription, String? detailedMessage)?
        unexpectedError,
  }) {
    return unauthorized?.call(typeDescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String typeDescription)? alreadyRegisteredValue,
    TResult Function(String typeDescription)? invalidValue,
    TResult Function(String typeDescription, String? detailedMessage)?
        badRequest,
    TResult Function(String typeDescription)? unauthorized,
    TResult Function(String typeDescription)? notFound,
    TResult Function(String typeDescription)? serverError,
    TResult Function(String typeDescription)? internetConnectionTimeout,
    TResult Function(String typeDescription)? connectionError,
    TResult Function(String typeDescription, String? detailedMessage)?
        unexpectedError,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(typeDescription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AlreadyRegisteredValue value)
        alreadyRegisteredValue,
    required TResult Function(InvalidValue value) invalidValue,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(NotFound value) notFound,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InternetConnectionTimeout value)
        internetConnectionTimeout,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AlreadyRegisteredValue value)? alreadyRegisteredValue,
    TResult? Function(InvalidValue value)? invalidValue,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(InternetConnectionTimeout value)?
        internetConnectionTimeout,
    TResult? Function(ConnectionError value)? connectionError,
    TResult? Function(UnexpectedError value)? unexpectedError,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AlreadyRegisteredValue value)? alreadyRegisteredValue,
    TResult Function(InvalidValue value)? invalidValue,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternetConnectionTimeout value)?
        internetConnectionTimeout,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class Unauthorized extends ApiConnectionFailure {
  const factory Unauthorized({final String typeDescription}) = _$Unauthorized;
  const Unauthorized._() : super._();

  @override
  String get typeDescription;
  @override
  @JsonKey(ignore: true)
  _$$UnauthorizedCopyWith<_$Unauthorized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundCopyWith<$Res>
    implements $ApiConnectionFailureCopyWith<$Res> {
  factory _$$NotFoundCopyWith(
          _$NotFound value, $Res Function(_$NotFound) then) =
      __$$NotFoundCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String typeDescription});
}

/// @nodoc
class __$$NotFoundCopyWithImpl<$Res>
    extends _$ApiConnectionFailureCopyWithImpl<$Res, _$NotFound>
    implements _$$NotFoundCopyWith<$Res> {
  __$$NotFoundCopyWithImpl(_$NotFound _value, $Res Function(_$NotFound) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeDescription = null,
  }) {
    return _then(_$NotFound(
      typeDescription: null == typeDescription
          ? _value.typeDescription
          : typeDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotFound extends NotFound {
  const _$NotFound({this.typeDescription = 'not_found'}) : super._();

  @override
  @JsonKey()
  final String typeDescription;

  @override
  String toString() {
    return 'ApiConnectionFailure.notFound(typeDescription: $typeDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFound &&
            (identical(other.typeDescription, typeDescription) ||
                other.typeDescription == typeDescription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, typeDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundCopyWith<_$NotFound> get copyWith =>
      __$$NotFoundCopyWithImpl<_$NotFound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String typeDescription) alreadyRegisteredValue,
    required TResult Function(String typeDescription) invalidValue,
    required TResult Function(String typeDescription, String? detailedMessage)
        badRequest,
    required TResult Function(String typeDescription) unauthorized,
    required TResult Function(String typeDescription) notFound,
    required TResult Function(String typeDescription) serverError,
    required TResult Function(String typeDescription) internetConnectionTimeout,
    required TResult Function(String typeDescription) connectionError,
    required TResult Function(String typeDescription, String? detailedMessage)
        unexpectedError,
  }) {
    return notFound(typeDescription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String typeDescription)? alreadyRegisteredValue,
    TResult? Function(String typeDescription)? invalidValue,
    TResult? Function(String typeDescription, String? detailedMessage)?
        badRequest,
    TResult? Function(String typeDescription)? unauthorized,
    TResult? Function(String typeDescription)? notFound,
    TResult? Function(String typeDescription)? serverError,
    TResult? Function(String typeDescription)? internetConnectionTimeout,
    TResult? Function(String typeDescription)? connectionError,
    TResult? Function(String typeDescription, String? detailedMessage)?
        unexpectedError,
  }) {
    return notFound?.call(typeDescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String typeDescription)? alreadyRegisteredValue,
    TResult Function(String typeDescription)? invalidValue,
    TResult Function(String typeDescription, String? detailedMessage)?
        badRequest,
    TResult Function(String typeDescription)? unauthorized,
    TResult Function(String typeDescription)? notFound,
    TResult Function(String typeDescription)? serverError,
    TResult Function(String typeDescription)? internetConnectionTimeout,
    TResult Function(String typeDescription)? connectionError,
    TResult Function(String typeDescription, String? detailedMessage)?
        unexpectedError,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(typeDescription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AlreadyRegisteredValue value)
        alreadyRegisteredValue,
    required TResult Function(InvalidValue value) invalidValue,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(NotFound value) notFound,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InternetConnectionTimeout value)
        internetConnectionTimeout,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AlreadyRegisteredValue value)? alreadyRegisteredValue,
    TResult? Function(InvalidValue value)? invalidValue,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(InternetConnectionTimeout value)?
        internetConnectionTimeout,
    TResult? Function(ConnectionError value)? connectionError,
    TResult? Function(UnexpectedError value)? unexpectedError,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AlreadyRegisteredValue value)? alreadyRegisteredValue,
    TResult Function(InvalidValue value)? invalidValue,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternetConnectionTimeout value)?
        internetConnectionTimeout,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFound extends ApiConnectionFailure {
  const factory NotFound({final String typeDescription}) = _$NotFound;
  const NotFound._() : super._();

  @override
  String get typeDescription;
  @override
  @JsonKey(ignore: true)
  _$$NotFoundCopyWith<_$NotFound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerErrorCopyWith<$Res>
    implements $ApiConnectionFailureCopyWith<$Res> {
  factory _$$ServerErrorCopyWith(
          _$ServerError value, $Res Function(_$ServerError) then) =
      __$$ServerErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String typeDescription});
}

/// @nodoc
class __$$ServerErrorCopyWithImpl<$Res>
    extends _$ApiConnectionFailureCopyWithImpl<$Res, _$ServerError>
    implements _$$ServerErrorCopyWith<$Res> {
  __$$ServerErrorCopyWithImpl(
      _$ServerError _value, $Res Function(_$ServerError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeDescription = null,
  }) {
    return _then(_$ServerError(
      typeDescription: null == typeDescription
          ? _value.typeDescription
          : typeDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerError extends ServerError {
  const _$ServerError({this.typeDescription = 'server_error'}) : super._();

  @override
  @JsonKey()
  final String typeDescription;

  @override
  String toString() {
    return 'ApiConnectionFailure.serverError(typeDescription: $typeDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerError &&
            (identical(other.typeDescription, typeDescription) ||
                other.typeDescription == typeDescription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, typeDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorCopyWith<_$ServerError> get copyWith =>
      __$$ServerErrorCopyWithImpl<_$ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String typeDescription) alreadyRegisteredValue,
    required TResult Function(String typeDescription) invalidValue,
    required TResult Function(String typeDescription, String? detailedMessage)
        badRequest,
    required TResult Function(String typeDescription) unauthorized,
    required TResult Function(String typeDescription) notFound,
    required TResult Function(String typeDescription) serverError,
    required TResult Function(String typeDescription) internetConnectionTimeout,
    required TResult Function(String typeDescription) connectionError,
    required TResult Function(String typeDescription, String? detailedMessage)
        unexpectedError,
  }) {
    return serverError(typeDescription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String typeDescription)? alreadyRegisteredValue,
    TResult? Function(String typeDescription)? invalidValue,
    TResult? Function(String typeDescription, String? detailedMessage)?
        badRequest,
    TResult? Function(String typeDescription)? unauthorized,
    TResult? Function(String typeDescription)? notFound,
    TResult? Function(String typeDescription)? serverError,
    TResult? Function(String typeDescription)? internetConnectionTimeout,
    TResult? Function(String typeDescription)? connectionError,
    TResult? Function(String typeDescription, String? detailedMessage)?
        unexpectedError,
  }) {
    return serverError?.call(typeDescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String typeDescription)? alreadyRegisteredValue,
    TResult Function(String typeDescription)? invalidValue,
    TResult Function(String typeDescription, String? detailedMessage)?
        badRequest,
    TResult Function(String typeDescription)? unauthorized,
    TResult Function(String typeDescription)? notFound,
    TResult Function(String typeDescription)? serverError,
    TResult Function(String typeDescription)? internetConnectionTimeout,
    TResult Function(String typeDescription)? connectionError,
    TResult Function(String typeDescription, String? detailedMessage)?
        unexpectedError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(typeDescription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AlreadyRegisteredValue value)
        alreadyRegisteredValue,
    required TResult Function(InvalidValue value) invalidValue,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(NotFound value) notFound,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InternetConnectionTimeout value)
        internetConnectionTimeout,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AlreadyRegisteredValue value)? alreadyRegisteredValue,
    TResult? Function(InvalidValue value)? invalidValue,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(InternetConnectionTimeout value)?
        internetConnectionTimeout,
    TResult? Function(ConnectionError value)? connectionError,
    TResult? Function(UnexpectedError value)? unexpectedError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AlreadyRegisteredValue value)? alreadyRegisteredValue,
    TResult Function(InvalidValue value)? invalidValue,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternetConnectionTimeout value)?
        internetConnectionTimeout,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError extends ApiConnectionFailure {
  const factory ServerError({final String typeDescription}) = _$ServerError;
  const ServerError._() : super._();

  @override
  String get typeDescription;
  @override
  @JsonKey(ignore: true)
  _$$ServerErrorCopyWith<_$ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InternetConnectionTimeoutCopyWith<$Res>
    implements $ApiConnectionFailureCopyWith<$Res> {
  factory _$$InternetConnectionTimeoutCopyWith(
          _$InternetConnectionTimeout value,
          $Res Function(_$InternetConnectionTimeout) then) =
      __$$InternetConnectionTimeoutCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String typeDescription});
}

/// @nodoc
class __$$InternetConnectionTimeoutCopyWithImpl<$Res>
    extends _$ApiConnectionFailureCopyWithImpl<$Res,
        _$InternetConnectionTimeout>
    implements _$$InternetConnectionTimeoutCopyWith<$Res> {
  __$$InternetConnectionTimeoutCopyWithImpl(_$InternetConnectionTimeout _value,
      $Res Function(_$InternetConnectionTimeout) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeDescription = null,
  }) {
    return _then(_$InternetConnectionTimeout(
      typeDescription: null == typeDescription
          ? _value.typeDescription
          : typeDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InternetConnectionTimeout extends InternetConnectionTimeout {
  const _$InternetConnectionTimeout(
      {this.typeDescription = 'internet_connection_timeout'})
      : super._();

  @override
  @JsonKey()
  final String typeDescription;

  @override
  String toString() {
    return 'ApiConnectionFailure.internetConnectionTimeout(typeDescription: $typeDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternetConnectionTimeout &&
            (identical(other.typeDescription, typeDescription) ||
                other.typeDescription == typeDescription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, typeDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InternetConnectionTimeoutCopyWith<_$InternetConnectionTimeout>
      get copyWith => __$$InternetConnectionTimeoutCopyWithImpl<
          _$InternetConnectionTimeout>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String typeDescription) alreadyRegisteredValue,
    required TResult Function(String typeDescription) invalidValue,
    required TResult Function(String typeDescription, String? detailedMessage)
        badRequest,
    required TResult Function(String typeDescription) unauthorized,
    required TResult Function(String typeDescription) notFound,
    required TResult Function(String typeDescription) serverError,
    required TResult Function(String typeDescription) internetConnectionTimeout,
    required TResult Function(String typeDescription) connectionError,
    required TResult Function(String typeDescription, String? detailedMessage)
        unexpectedError,
  }) {
    return internetConnectionTimeout(typeDescription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String typeDescription)? alreadyRegisteredValue,
    TResult? Function(String typeDescription)? invalidValue,
    TResult? Function(String typeDescription, String? detailedMessage)?
        badRequest,
    TResult? Function(String typeDescription)? unauthorized,
    TResult? Function(String typeDescription)? notFound,
    TResult? Function(String typeDescription)? serverError,
    TResult? Function(String typeDescription)? internetConnectionTimeout,
    TResult? Function(String typeDescription)? connectionError,
    TResult? Function(String typeDescription, String? detailedMessage)?
        unexpectedError,
  }) {
    return internetConnectionTimeout?.call(typeDescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String typeDescription)? alreadyRegisteredValue,
    TResult Function(String typeDescription)? invalidValue,
    TResult Function(String typeDescription, String? detailedMessage)?
        badRequest,
    TResult Function(String typeDescription)? unauthorized,
    TResult Function(String typeDescription)? notFound,
    TResult Function(String typeDescription)? serverError,
    TResult Function(String typeDescription)? internetConnectionTimeout,
    TResult Function(String typeDescription)? connectionError,
    TResult Function(String typeDescription, String? detailedMessage)?
        unexpectedError,
    required TResult orElse(),
  }) {
    if (internetConnectionTimeout != null) {
      return internetConnectionTimeout(typeDescription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AlreadyRegisteredValue value)
        alreadyRegisteredValue,
    required TResult Function(InvalidValue value) invalidValue,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(NotFound value) notFound,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InternetConnectionTimeout value)
        internetConnectionTimeout,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return internetConnectionTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AlreadyRegisteredValue value)? alreadyRegisteredValue,
    TResult? Function(InvalidValue value)? invalidValue,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(InternetConnectionTimeout value)?
        internetConnectionTimeout,
    TResult? Function(ConnectionError value)? connectionError,
    TResult? Function(UnexpectedError value)? unexpectedError,
  }) {
    return internetConnectionTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AlreadyRegisteredValue value)? alreadyRegisteredValue,
    TResult Function(InvalidValue value)? invalidValue,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternetConnectionTimeout value)?
        internetConnectionTimeout,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (internetConnectionTimeout != null) {
      return internetConnectionTimeout(this);
    }
    return orElse();
  }
}

abstract class InternetConnectionTimeout extends ApiConnectionFailure {
  const factory InternetConnectionTimeout({final String typeDescription}) =
      _$InternetConnectionTimeout;
  const InternetConnectionTimeout._() : super._();

  @override
  String get typeDescription;
  @override
  @JsonKey(ignore: true)
  _$$InternetConnectionTimeoutCopyWith<_$InternetConnectionTimeout>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectionErrorCopyWith<$Res>
    implements $ApiConnectionFailureCopyWith<$Res> {
  factory _$$ConnectionErrorCopyWith(
          _$ConnectionError value, $Res Function(_$ConnectionError) then) =
      __$$ConnectionErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String typeDescription});
}

/// @nodoc
class __$$ConnectionErrorCopyWithImpl<$Res>
    extends _$ApiConnectionFailureCopyWithImpl<$Res, _$ConnectionError>
    implements _$$ConnectionErrorCopyWith<$Res> {
  __$$ConnectionErrorCopyWithImpl(
      _$ConnectionError _value, $Res Function(_$ConnectionError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeDescription = null,
  }) {
    return _then(_$ConnectionError(
      typeDescription: null == typeDescription
          ? _value.typeDescription
          : typeDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConnectionError extends ConnectionError {
  const _$ConnectionError({this.typeDescription = 'connection_error'})
      : super._();

  @override
  @JsonKey()
  final String typeDescription;

  @override
  String toString() {
    return 'ApiConnectionFailure.connectionError(typeDescription: $typeDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionError &&
            (identical(other.typeDescription, typeDescription) ||
                other.typeDescription == typeDescription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, typeDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionErrorCopyWith<_$ConnectionError> get copyWith =>
      __$$ConnectionErrorCopyWithImpl<_$ConnectionError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String typeDescription) alreadyRegisteredValue,
    required TResult Function(String typeDescription) invalidValue,
    required TResult Function(String typeDescription, String? detailedMessage)
        badRequest,
    required TResult Function(String typeDescription) unauthorized,
    required TResult Function(String typeDescription) notFound,
    required TResult Function(String typeDescription) serverError,
    required TResult Function(String typeDescription) internetConnectionTimeout,
    required TResult Function(String typeDescription) connectionError,
    required TResult Function(String typeDescription, String? detailedMessage)
        unexpectedError,
  }) {
    return connectionError(typeDescription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String typeDescription)? alreadyRegisteredValue,
    TResult? Function(String typeDescription)? invalidValue,
    TResult? Function(String typeDescription, String? detailedMessage)?
        badRequest,
    TResult? Function(String typeDescription)? unauthorized,
    TResult? Function(String typeDescription)? notFound,
    TResult? Function(String typeDescription)? serverError,
    TResult? Function(String typeDescription)? internetConnectionTimeout,
    TResult? Function(String typeDescription)? connectionError,
    TResult? Function(String typeDescription, String? detailedMessage)?
        unexpectedError,
  }) {
    return connectionError?.call(typeDescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String typeDescription)? alreadyRegisteredValue,
    TResult Function(String typeDescription)? invalidValue,
    TResult Function(String typeDescription, String? detailedMessage)?
        badRequest,
    TResult Function(String typeDescription)? unauthorized,
    TResult Function(String typeDescription)? notFound,
    TResult Function(String typeDescription)? serverError,
    TResult Function(String typeDescription)? internetConnectionTimeout,
    TResult Function(String typeDescription)? connectionError,
    TResult Function(String typeDescription, String? detailedMessage)?
        unexpectedError,
    required TResult orElse(),
  }) {
    if (connectionError != null) {
      return connectionError(typeDescription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AlreadyRegisteredValue value)
        alreadyRegisteredValue,
    required TResult Function(InvalidValue value) invalidValue,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(NotFound value) notFound,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InternetConnectionTimeout value)
        internetConnectionTimeout,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return connectionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AlreadyRegisteredValue value)? alreadyRegisteredValue,
    TResult? Function(InvalidValue value)? invalidValue,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(InternetConnectionTimeout value)?
        internetConnectionTimeout,
    TResult? Function(ConnectionError value)? connectionError,
    TResult? Function(UnexpectedError value)? unexpectedError,
  }) {
    return connectionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AlreadyRegisteredValue value)? alreadyRegisteredValue,
    TResult Function(InvalidValue value)? invalidValue,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternetConnectionTimeout value)?
        internetConnectionTimeout,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (connectionError != null) {
      return connectionError(this);
    }
    return orElse();
  }
}

abstract class ConnectionError extends ApiConnectionFailure {
  const factory ConnectionError({final String typeDescription}) =
      _$ConnectionError;
  const ConnectionError._() : super._();

  @override
  String get typeDescription;
  @override
  @JsonKey(ignore: true)
  _$$ConnectionErrorCopyWith<_$ConnectionError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnexpectedErrorCopyWith<$Res>
    implements $ApiConnectionFailureCopyWith<$Res> {
  factory _$$UnexpectedErrorCopyWith(
          _$UnexpectedError value, $Res Function(_$UnexpectedError) then) =
      __$$UnexpectedErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String typeDescription, String? detailedMessage});
}

/// @nodoc
class __$$UnexpectedErrorCopyWithImpl<$Res>
    extends _$ApiConnectionFailureCopyWithImpl<$Res, _$UnexpectedError>
    implements _$$UnexpectedErrorCopyWith<$Res> {
  __$$UnexpectedErrorCopyWithImpl(
      _$UnexpectedError _value, $Res Function(_$UnexpectedError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeDescription = null,
    Object? detailedMessage = freezed,
  }) {
    return _then(_$UnexpectedError(
      typeDescription: null == typeDescription
          ? _value.typeDescription
          : typeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      detailedMessage: freezed == detailedMessage
          ? _value.detailedMessage
          : detailedMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnexpectedError extends UnexpectedError {
  const _$UnexpectedError(
      {this.typeDescription = 'unexpected_error', this.detailedMessage})
      : super._();

  @override
  @JsonKey()
  final String typeDescription;
  @override
  final String? detailedMessage;

  @override
  String toString() {
    return 'ApiConnectionFailure.unexpectedError(typeDescription: $typeDescription, detailedMessage: $detailedMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnexpectedError &&
            (identical(other.typeDescription, typeDescription) ||
                other.typeDescription == typeDescription) &&
            (identical(other.detailedMessage, detailedMessage) ||
                other.detailedMessage == detailedMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, typeDescription, detailedMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnexpectedErrorCopyWith<_$UnexpectedError> get copyWith =>
      __$$UnexpectedErrorCopyWithImpl<_$UnexpectedError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String typeDescription) alreadyRegisteredValue,
    required TResult Function(String typeDescription) invalidValue,
    required TResult Function(String typeDescription, String? detailedMessage)
        badRequest,
    required TResult Function(String typeDescription) unauthorized,
    required TResult Function(String typeDescription) notFound,
    required TResult Function(String typeDescription) serverError,
    required TResult Function(String typeDescription) internetConnectionTimeout,
    required TResult Function(String typeDescription) connectionError,
    required TResult Function(String typeDescription, String? detailedMessage)
        unexpectedError,
  }) {
    return unexpectedError(typeDescription, detailedMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String typeDescription)? alreadyRegisteredValue,
    TResult? Function(String typeDescription)? invalidValue,
    TResult? Function(String typeDescription, String? detailedMessage)?
        badRequest,
    TResult? Function(String typeDescription)? unauthorized,
    TResult? Function(String typeDescription)? notFound,
    TResult? Function(String typeDescription)? serverError,
    TResult? Function(String typeDescription)? internetConnectionTimeout,
    TResult? Function(String typeDescription)? connectionError,
    TResult? Function(String typeDescription, String? detailedMessage)?
        unexpectedError,
  }) {
    return unexpectedError?.call(typeDescription, detailedMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String typeDescription)? alreadyRegisteredValue,
    TResult Function(String typeDescription)? invalidValue,
    TResult Function(String typeDescription, String? detailedMessage)?
        badRequest,
    TResult Function(String typeDescription)? unauthorized,
    TResult Function(String typeDescription)? notFound,
    TResult Function(String typeDescription)? serverError,
    TResult Function(String typeDescription)? internetConnectionTimeout,
    TResult Function(String typeDescription)? connectionError,
    TResult Function(String typeDescription, String? detailedMessage)?
        unexpectedError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(typeDescription, detailedMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AlreadyRegisteredValue value)
        alreadyRegisteredValue,
    required TResult Function(InvalidValue value) invalidValue,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(NotFound value) notFound,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InternetConnectionTimeout value)
        internetConnectionTimeout,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AlreadyRegisteredValue value)? alreadyRegisteredValue,
    TResult? Function(InvalidValue value)? invalidValue,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(InternetConnectionTimeout value)?
        internetConnectionTimeout,
    TResult? Function(ConnectionError value)? connectionError,
    TResult? Function(UnexpectedError value)? unexpectedError,
  }) {
    return unexpectedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AlreadyRegisteredValue value)? alreadyRegisteredValue,
    TResult Function(InvalidValue value)? invalidValue,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternetConnectionTimeout value)?
        internetConnectionTimeout,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class UnexpectedError extends ApiConnectionFailure {
  const factory UnexpectedError(
      {final String typeDescription,
      final String? detailedMessage}) = _$UnexpectedError;
  const UnexpectedError._() : super._();

  @override
  String get typeDescription;
  String? get detailedMessage;
  @override
  @JsonKey(ignore: true)
  _$$UnexpectedErrorCopyWith<_$UnexpectedError> get copyWith =>
      throw _privateConstructorUsedError;
}
