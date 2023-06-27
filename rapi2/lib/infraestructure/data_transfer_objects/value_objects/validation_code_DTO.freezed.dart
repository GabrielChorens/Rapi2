// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_code_DTO.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValidationCodeDTO {
  String get validationCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValidationCodeDTOCopyWith<ValidationCodeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationCodeDTOCopyWith<$Res> {
  factory $ValidationCodeDTOCopyWith(
          ValidationCodeDTO value, $Res Function(ValidationCodeDTO) then) =
      _$ValidationCodeDTOCopyWithImpl<$Res, ValidationCodeDTO>;
  @useResult
  $Res call({String validationCode});
}

/// @nodoc
class _$ValidationCodeDTOCopyWithImpl<$Res, $Val extends ValidationCodeDTO>
    implements $ValidationCodeDTOCopyWith<$Res> {
  _$ValidationCodeDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validationCode = null,
  }) {
    return _then(_value.copyWith(
      validationCode: null == validationCode
          ? _value.validationCode
          : validationCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ValidationCodeDTOCopyWith<$Res>
    implements $ValidationCodeDTOCopyWith<$Res> {
  factory _$$_ValidationCodeDTOCopyWith(_$_ValidationCodeDTO value,
          $Res Function(_$_ValidationCodeDTO) then) =
      __$$_ValidationCodeDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String validationCode});
}

/// @nodoc
class __$$_ValidationCodeDTOCopyWithImpl<$Res>
    extends _$ValidationCodeDTOCopyWithImpl<$Res, _$_ValidationCodeDTO>
    implements _$$_ValidationCodeDTOCopyWith<$Res> {
  __$$_ValidationCodeDTOCopyWithImpl(
      _$_ValidationCodeDTO _value, $Res Function(_$_ValidationCodeDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validationCode = null,
  }) {
    return _then(_$_ValidationCodeDTO(
      validationCode: null == validationCode
          ? _value.validationCode
          : validationCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ValidationCodeDTO extends _ValidationCodeDTO {
  const _$_ValidationCodeDTO({required this.validationCode}) : super._();

  @override
  final String validationCode;

  @override
  String toString() {
    return 'ValidationCodeDTO(validationCode: $validationCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidationCodeDTO &&
            (identical(other.validationCode, validationCode) ||
                other.validationCode == validationCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, validationCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidationCodeDTOCopyWith<_$_ValidationCodeDTO> get copyWith =>
      __$$_ValidationCodeDTOCopyWithImpl<_$_ValidationCodeDTO>(
          this, _$identity);
}

abstract class _ValidationCodeDTO extends ValidationCodeDTO {
  const factory _ValidationCodeDTO({required final String validationCode}) =
      _$_ValidationCodeDTO;
  const _ValidationCodeDTO._() : super._();

  @override
  String get validationCode;
  @override
  @JsonKey(ignore: true)
  _$$_ValidationCodeDTOCopyWith<_$_ValidationCodeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
