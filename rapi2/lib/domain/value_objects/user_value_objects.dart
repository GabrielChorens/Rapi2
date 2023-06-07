import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'core/failures/value_failures.dart';
import 'core/validated_value_objects.dart';
part 'user_value_objects.freezed.dart';

///A simple data class that conglomerates the first and last name of an user.
@freezed
abstract class Name with _$Name {
  const factory Name({
    required String firstName,
    required String lastName,
  }) = _Name;
}

///A value object that uses [NumberAsString] to validate the phone number and call code.
///It also stores the country code.
///It provides a full phone number with the plus sign, call code and phone number.
///If any of the [NumberAsString] is invalid, it returns a ValueFailure.
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

///A value object that represents a password. It validates if the password is long enough.
///If the password is invalid, it returns a ValueFailure.
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

///A value object that represents an email address. It validates if the email address is valid using a regular expression.
///If the email address is invalid, it returns a ValueFailure.
class Email extends ValidatedValueObject<String>{
  @override
  final Either<ValueFailure, String> value; 

  factory Email(String input) {
    
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

///A value object that represents a currency. Its responsible for sorting the currenicies recieved from a String.
///In case of missing or invalid input, it returns a default currency.
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

///A simple data class that manage the default firebase token.
///It allows to change the default token in case of a new token.
@freezed
abstract class FirebaseToken with _$FirebaseToken{

  const factory FirebaseToken({
    @Default('787asdasd8as9da8s79a87ds9a8s7d98as7d')String firebaseToken,
  }) = _FirebaseToken;
}

///A value object used on [PhoneNumber] to validate the call code and phone number.
///It recieves a String and evaluates if its a valid number through a regular expression.
///If the input is invalid, it returns a ValueFailure.
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
