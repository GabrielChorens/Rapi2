import 'package:dartz/dartz.dart';
import 'package:rapi2/domain/value_objects/core/validated_value_objects.dart';

import '../core/failures/value_failures.dart';

class NumberAsString extends ValidatedValueObject {
  @override
  final Either<ValueFailure, String> value;

  factory NumberAsString(String input) {
    if (input.isEmpty) {
      return NumberAsString._(
        left(const ValueFailure.emptyField()),
      );
    }
    
    //Evaluates if the input is a valid number meaning it only contains numbers
    if (RegExp(r'^\d+$').hasMatch(input)) {
      return NumberAsString._(right(input));
    } else {
      return NumberAsString._(
        left(ValueFailure.invalidName(
            detailedFailureMessage: 'Offending value: $input')),
      );
    }
  }

  const NumberAsString._(this.value);
}
