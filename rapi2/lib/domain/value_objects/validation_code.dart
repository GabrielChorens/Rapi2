import 'package:dartz/dartz.dart';
import 'package:rapi2/domain/value_objects/core/failures/value_failures.dart';
import 'package:rapi2/domain/value_objects/core/validated_value_objects.dart';

class ValidationCode extends ValidatedValueObject<String> {

  @override
  final Either<ValueFailure, String> value;

  factory ValidationCode(String input) {
    if(input.isEmpty) {
      return ValidationCode._(left(const ValueFailure.emptyField()));
    } else {
      return ValidationCode._(right(input));
    }
  }

  const ValidationCode._(this.value);
}