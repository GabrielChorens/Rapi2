import 'package:flutter_test/flutter_test.dart';
import 'package:rapi2/domain/value_objects/core/failures/value_failures.dart';
import 'package:rapi2/domain/value_objects/user_value_objects/email.dart';
import 'package:dartz/dartz.dart';


void main() {
  group('Email', () {
    test('should create Email object with valid input', () {
      // Arrange
      const input = 'test@test.com';

      // Act
      final email = Email(input);

      // Assert
      expect(email.value, equals(right(input)));
    });


    test('should create Email object when input is empty', () {
      
      // Arrange
      const input = '';

      // Act
      final email = Email(input);

      // Assert
      expect(email.value, equals(right(input)));
    });



    test('should return ValueFailure.invalidEmail when input is not a valid email', () {
      // Arrange
      const input = 'notanemail';

      // Act
      final email = Email(input);

      // Assert
      expect(email.value, equals(left(const ValueFailure.invalidEmail(detailedFailureMessage: 'Offending value: $input'))));
    });
  });
}
