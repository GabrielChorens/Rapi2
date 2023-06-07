import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rapi2/domain/value_objects/core/failures/value_failures.dart';
import 'package:rapi2/domain/value_objects/user_value_objects.dart';

void main() {
  group('Currencies', () {
    test('Value should be the input if it is a valid currency', () {
      // Arrange
      const validCurrency = 'EUR';

      // Act
      final currency = Currencies(validCurrency);

      // Assert
      expect(currency.getOrCrash(), equals(validCurrency));
    });

    test('Value should be USD if the input is an invalid currency', () {
      // Arrange
      const invalidCurrency = 'InvalidCurrency';

      // Act
      final currency = Currencies(invalidCurrency);

      // Assert
      expect(currency.getOrCrash(), equals('CUP'));
    });
  });

  group('Email', () {
    test('Should create Email object with valid input', () {
      // Arrange
      const input = 'test@test.com';

      // Act
      final email = Email(input);

      // Assert
      expect(email.value, equals(right(input)));
    });

    test(
        'Should return ValueFailure.invalidEmail when input is not a valid email',
        () {
      // Arrange
      const input = 'notanemail';

      // Act
      final email = Email(input);

      // Assert
      expect(
          email.value,
          equals(left(const ValueFailure.invalidEmail(
              detailedFailureMessage: 'Offending value: $input'))));
    });
  });

  group('FirebaseToken', () {
    const expectedDefaultToken = '787asdasd8as9da8s79a87ds9a8s7d98as7d';

    test('Default value should be the predefined string', () {
      // Act
      const token = FirebaseToken();

      // Assert
      expect(token.firebaseToken, equals(expectedDefaultToken));
    });

    test('Should accept new value', () {
      // Arrange
      const newToken = 'newFirebaseToken123';

      // Act
      const token = FirebaseToken(firebaseToken: newToken);

      // Assert
      expect(token.firebaseToken, equals(newToken));
    });
  });

  group('NumberAsString', () {
    test('Should create NumberAsString object with valid input', () {
      // Arrange
      const input = '1234567890';

      // Act
      final phoneNumber = NumberAsString(input);

      // Assert
      expect(phoneNumber.value, equals(right(input)));
    });

    test('Should return ValueFailure.emptyField when input is empty', () {
      // Arrange
      const input = '';

      // Act
      final phoneNumber = NumberAsString(input);

      // Assert
      expect(phoneNumber.value, equals(left(const ValueFailure.emptyField())));
    });

    test(
        'Should return ValueFailure.invalidNumber when input contains non-digit characters',
        () {
      // Arrange
      const input = '1234abc567';

      // Act
      final phoneNumber = NumberAsString(input);

      // Assert
      expect(
          phoneNumber.value,
          equals(left(const ValueFailure.invalidNumber(
              detailedFailureMessage: 'Offending value: $input'))));
    });
  });

  group('Password', () {
    test('Should return ValueFailure.emptyField when string is empty', () {
      // arrange
      const input = '';
      // act
      var password = Password(input);
      // assert
      expect(password.value, equals(left(const ValueFailure.emptyField())));
    });

    test(
        'Should return ValueFailure.shortPassword when string is less than 6 characters',
        () {
      // arrange
      const input = '12345';
      // act
      var password = Password(input);
      // assert
      expect(
          password.value,
          equals(left(const ValueFailure.shortPassword(
              detailedFailureMessage: 'Offending value: $input'))));
    });

    test('Should return Password when string is valid', () {
      // arrange
      const input = 'ValidPassword';
      // act
      var password = Password(input);
      // assert
      expect(password.value, equals(right(input)));
    });
  });

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
      expect(
          result.value,
          equals(left(ValueFailure.invalidPhoneNumber(
              detailedFailureMessage:
                  'Offending value: Country code: $countryCode / call code: ${callCode.value.getOrElse(() => "Invalid Value")} / phone number: ${phoneNumber.value.getOrElse(() => "Invalid Value")}'))));
    });
  });
}
