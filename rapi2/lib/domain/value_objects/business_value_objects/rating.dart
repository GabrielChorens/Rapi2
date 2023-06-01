import 'package:dartz/dartz.dart';
import '../core/failures/value_failures.dart';
import '../core/validated_value_objects.dart';

class Rating extends ValidatedValueObject<int> {

  @override
  final Either<ValueFailure, int> value;


  factory Rating(int input) {
    if(input >= 0 && input <= 5) {
      return Rating._(right(input));
    } else {
      return Rating._(left(ValueFailure.invalidRating(detailedFailureMessage: 'Offending value: $input')));
    }
  }


  const Rating._(this.value);
}