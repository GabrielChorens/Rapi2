import 'package:dartz/dartz.dart';

import '../core/failures/value_failures.dart';
import '../core/validated_value_objects.dart';

class Password extends ValidatedValueObject<String> {

  @override
  final Either<ValueFailure, String> value;

  factory Password(String input) {

    if (input.isEmpty) {
      return Password._(
        left(const ValueFailure.emptyField()),
      );
    }

    //Evaluates if the input is a long enough password
    if (input.length < 6) {
      return Password._(
        left(ValueFailure.shortPassword(detailedFailureMessage: 'Offending value: $input')),
      );
    } else {
      return Password._(right(input));
    }
  }
  const Password._(this.value);
}