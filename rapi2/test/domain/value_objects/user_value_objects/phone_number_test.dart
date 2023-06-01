import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rapi2/domain/value_objects/core/failures/value_failures.dart';
import 'package:rapi2/domain/value_objects/user_value_objects/number_as_string.dart';
import 'package:rapi2/domain/value_objects/user_value_objects/phone_number.dart';

void main() {
  
  group('Phone number', () {
    test('PhoneNumber validation should succeed when the inputs are valid', () {
      // Arrange
      final callCode = NumberAsString('123');
      final phoneNumber = NumberAsString('4567890');
      const countryCode = 'US';

      // Act
      final result = PhoneNumber(
        callCode: callCode,
        phoneNumber: phoneNumber,
        countryCode: countryCode,
      );

      // Assert
      expect(result.getOrCrash(), equals('+1234567890'));
    });

    test('PhoneNumber validation should fail when the inputs are invalid', () {
      // Arrange
      final callCode = NumberAsString('123a');
      final phoneNumber = NumberAsString('4567890');
      const countryCode = 'US';

      // Act
      final result = PhoneNumber(
        callCode: callCode,
        phoneNumber: phoneNumber,
        countryCode: countryCode,
      );

      // Assert
      expect(result.value, equals(left(ValueFailure.invalidPhoneNumber(
      detailedFailureMessage: 'Offending value: Country code: $countryCode / call code: ${callCode.value.getOrElse(() => "Invalid Value")} / phone number: ${phoneNumber.value.getOrElse(() => "Invalid Value")}'
        ))));
    });
  });
}
