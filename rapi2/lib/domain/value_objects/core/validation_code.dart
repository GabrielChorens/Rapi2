import 'package:dartz/dartz.dart';
import 'failures/value_failures.dart';
import 'validated_value_objects.dart';

final class ValidationCode extends ValidatedValueObject<String> {

  @override
  final Either<ValueFailure, String> value;

  factory ValidationCode(String input) {
    if(input.isEmpty) {
      return ValidationCode._(left(const EmptyField()));
    } else {
      return ValidationCode._(right(input));
    }
  }

  const ValidationCode._(this.value);
}