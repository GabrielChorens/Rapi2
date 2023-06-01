import 'package:dartz/dartz.dart';
import 'package:rapi2/domain/value_objects/core/failures/value_failures.dart';
import 'package:rapi2/domain/value_objects/core/validated_value_objects.dart';
import 'number_as_string.dart';

class PhoneNumber extends ValidatedValueObject{

  @override
  final Either<ValueFailure, String> value;
  final NumberAsString callCode;
  final NumberAsString phoneNumber;
  final String countryCode;
  final String plusSign = '+';


  factory PhoneNumber({
    required NumberAsString callCode,
    required NumberAsString phoneNumber,
    required String countryCode
  }) {
    //Evaluates if there is any invalid input
    if (callCode.value.isLeft()||phoneNumber.value.isLeft()) {
      return PhoneNumber._(
        left(ValueFailure.invalidPhoneNumber(
      detailedFailureMessage: 'Offending value: Country code: $countryCode / call code: ${callCode.value.getOrElse(() => "Invalid Value")} / phone number: ${phoneNumber.value.getOrElse(() => "Invalid Value")}'
        )), callCode, phoneNumber, countryCode
      );
    } else {
      return PhoneNumber._(
        right('+${callCode.getOrCrash()}${phoneNumber.getOrCrash()}'), callCode, phoneNumber, countryCode
      );
    }
  }

  const PhoneNumber._(this.value, this.callCode, this.phoneNumber, this.countryCode);

  

}