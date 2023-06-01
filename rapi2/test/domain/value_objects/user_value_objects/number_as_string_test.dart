import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rapi2/domain/value_objects/core/failures/value_failures.dart';
import 'package:rapi2/domain/value_objects/user_value_objects/number_as_string.dart';

void main() {
  group('numberAsString', () {
    test('should create NumberAsString object with valid input', () {
      // Arrange
      const input = '1234567890';

      // Act
      final phoneNumber = NumberAsString(input);

      // Assert
      expect(phoneNumber.value, equals(right(input)));
    });

    test('should return ValueFailure.emptyField when input is empty', () {
      // Arrange
      const input = '';

      // Act
      final phoneNumber = NumberAsString(input);

      // Assert
      expect(phoneNumber.value, equals(left(const ValueFailure.emptyField())));
    });

    test(
        'should return ValueFailure.invalidNumber when input contains non-digit characters',
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
}
