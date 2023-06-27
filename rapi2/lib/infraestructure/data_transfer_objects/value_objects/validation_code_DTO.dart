// ignore_for_file: file_names

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/value_objects/core/validation_code.dart';

part 'validation_code_DTO.freezed.dart';

@freezed
abstract class ValidationCodeDTO with _$ValidationCodeDTO{
  const ValidationCodeDTO._();
  const factory ValidationCodeDTO({
    required String validationCode,
  }) = _ValidationCodeDTO;

  factory ValidationCodeDTO.fromDomain(ValidationCode validationCode) => ValidationCodeDTO(
    validationCode: validationCode.getOrCrash(),
  );

  ValidationCode toDomain() => ValidationCode(validationCode);
}