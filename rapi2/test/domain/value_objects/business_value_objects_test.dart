import 'package:flutter_test/flutter_test.dart';
import 'package:rapi2/domain/value_objects/bussiness_value_objects.dart';
import 'package:rapi2/domain/value_objects/core/failures/value_failures.dart';

void main() {
  group('Rating', () {
    test('Should return ValueFailure when input is less than 0', () {
      // Arrange
      const int invalidInput = -1;

      // Act
      final rating = Rating(invalidInput);

      // Assert
      expect(rating.value.fold((f) => f, (_) => null), isA<ValueFailure>());
    });

    test('Should return ValueFailure when input is greater than 5', () {
      // Arrange
      const int invalidInput = 6;

      // Act
      final rating = Rating(invalidInput);

      // Assert
      expect(rating.value.fold((f) => f, (_) => null), isA<ValueFailure>());
    });

    test('Should instantiate Rating when input is within valid range', () {
      // Arrange
      const int validInput = 3;

      // Act
      final rating = Rating(validInput);

      // Assert
      expect(rating.value.fold((_) => null, (r) => r), validInput);   
     });
  });
}
