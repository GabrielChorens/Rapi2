import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';
import 'package:rapi2/domain/value_objects/address_value_objects/coordinate.dart';
import 'package:rapi2/domain/value_objects/core/failures/value_failures.dart';

void main() {
  group('Coordinate', () {
    test('should return ValueFailure when longitude is > 180', () {
      // Arrange
      const longitude = 181.0;
      const latitude = 0.0;

      // Act
      final coordinate = Coordinate(longitude, latitude);

      // Assert
      expect(coordinate.value, left(const ValueFailure.invalidCoordinates(detailedFailureMessage: 'longitude: $longitude, latitude: $latitude. Longitude must be between -180 and 180, latitude must be between -90 and 90')));
    });

    test('should return ValueFailure when longitude is < -180', () {
      // Arrange
      const longitude = -181.0;
      const latitude = 0.0;

      // Act
      final coordinate = Coordinate(longitude, latitude);

      // Assert
      expect(coordinate.value, left(const ValueFailure.invalidCoordinates(detailedFailureMessage: 'longitude: $longitude, latitude: $latitude. Longitude must be between -180 and 180, latitude must be between -90 and 90')));
    });

    test('should return ValueFailure when latitude is > 90', () {
      // Arrange
      const longitude = 0.0;
      const latitude = 91.0;

      // Act
      final coordinate = Coordinate(longitude, latitude);

      // Assert
      expect(coordinate.value, left(const ValueFailure.invalidCoordinates(detailedFailureMessage: 'longitude: $longitude, latitude: $latitude. Longitude must be between -180 and 180, latitude must be between -90 and 90')));
    });

    test('should return ValueFailure when latitude is < -90', () {
      // Arrange
      const longitude = 0.0;
      const latitude = -91.0;

      // Act
      final coordinate = Coordinate(longitude, latitude);

      // Assert
      expect(coordinate.value, left(const ValueFailure.invalidCoordinates(detailedFailureMessage: 'longitude: $longitude, latitude: $latitude. Longitude must be between -180 and 180, latitude must be between -90 and 90')));
    });

    test('should create a new Coordinate when input is valid', () {
      // Arrange
      const longitude = 0.0;
      const latitude = 0.0;

      // Act
      final coordinate = Coordinate(longitude, latitude);

      // Assert
      expect(coordinate.value,
          right(const RawCoordinate(longitude: longitude, latitude: latitude)));
    });
  });
}
