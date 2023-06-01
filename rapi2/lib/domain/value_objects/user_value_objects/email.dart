import 'package:dartz/dartz.dart';

import '../core/failures/value_failures.dart';
import '../core/validated_value_objects.dart';

class Email extends ValidatedValueObject<String> {
  @override
  final Either<ValueFailure, String> value; 

  factory Email(String input) {
    
    //Evaluates if the input is empty
    if (input.isEmpty) {
      return Email._(
        right(''),
      );
    }
  
    //Evaluates if the input is a valid email address
    if (RegExp(r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""").hasMatch(input)) {
      return Email._(right(input));
    } else {
      return Email._(
        left(ValueFailure.invalidEmail(detailedFailureMessage: 'Offending value: $input')),
      );
    }
  }
  const Email._(this.value);
}
