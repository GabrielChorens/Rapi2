import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rapi2/domain/value_objects/core/failures/value_failures.dart';
import 'package:rapi2/domain/value_objects/core/validation_code.dart';


void main() {
  group('ValidationCode', () {
    test('Should return ValueFailure when input is empty', () {
      // Arrange
      const String input = '';

      // Act
      final result = ValidationCode(input);

      // Assert
      expect(result.value, equals(left(const ValueFailure.emptyField())));
    });

    test('Should return input when it is not empty', () {
      // Arrange
      const String input = '123456';

      // Act
      final result = ValidationCode(input);

      // Assert
      expect(result.value, equals(right(input)));
    });
  });
}
