import 'package:dartz/dartz.dart';
import 'package:rapi2/domain/value_objects/core/failures/value_failures.dart';
import 'package:rapi2/domain/value_objects/core/validated_value_objects.dart';

class Currencies extends ValidatedValueObject{

  @override
  final Either<ValueFailure, String> value;

  factory Currencies(String input) {
    if (input == 'MLC' || input == 'CUP' || input == 'USD' || input == 'EUR') {
      return Currencies._(right(input));
    } else {
      return Currencies._(right('CUP'));
    }
  }

  const Currencies._(this.value);
}