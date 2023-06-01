import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';
import 'package:rapi2/domain/value_objects/core/failures/value_failures.dart';
import 'package:rapi2/domain/value_objects/user_value_objects/password.dart';


void main() {
  group('Password', () {
    test('should return ValueFailure.emptyField when string is empty', () {
      // arrange
      const input = '';
      // act
      var password = Password(input);
      // assert
      expect(password.value, equals(left(const ValueFailure.emptyField())));
    });

    test('should return ValueFailure.shortPassword when string is less than 6 characters', () {
      // arrange
      const input = '12345';
      // act
      var password = Password(input);
      // assert
      expect(password.value, equals(left(const ValueFailure.shortPassword(detailedFailureMessage: 'Offending value: $input'))));
    });

    test('should return Password when string is valid', () {
      // arrange
      const input = 'ValidPassword';
      // act
      var password = Password(input);
      // assert
      expect(password.value, equals(right(input)));
    });
  });
}
