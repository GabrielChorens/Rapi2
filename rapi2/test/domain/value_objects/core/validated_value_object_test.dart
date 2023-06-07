import 'package:flutter_test/flutter_test.dart';
import 'package:rapi2/domain/value_objects/core/errors/unexpected_value_error.dart';
import 'package:rapi2/domain/value_objects/user_value_objects.dart';

void main() {
  group('Get or Crash method', () {
    test('should throw an UnexpectedValueError when getting value of failed object', () {
      // Arrange
      final failedValueObject = NumberAsString('invalid input');

      // Assert
      expect(() => failedValueObject.getOrCrash(), throwsA(isA<UnexpectedValueError>()));
    });
  });
}
