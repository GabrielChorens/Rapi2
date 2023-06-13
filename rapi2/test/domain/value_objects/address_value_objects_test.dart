import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';
import 'package:rapi2/domain/value_objects/address_value_objects.dart';
import 'package:rapi2/domain/value_objects/core/failures/value_failures.dart';

void main() {
  group('Coordinate', () {
    test('Should return ValueFailure when longitude is > 180', () {
      // Arrange
      const longitude = 181.0;
      const latitude = 0.0;

      // Act
      final coordinate = Coordinate(longitude, latitude);

      // Assert
      expect(coordinate.value, left(const ValueFailure.invalidCoordinates(detailedFailureMessage: 'longitude: $longitude, latitude: $latitude. Longitude must be between -180 and 180, latitude must be between -90 and 90')));
    });

    test('Should return ValueFailure when longitude is < -180', () {
      // Arrange
      const longitude = -181.0;
      const latitude = 0.0;

      // Act
      final coordinate = Coordinate(longitude, latitude);

      // Assert
      expect(coordinate.value, left(const ValueFailure.invalidCoordinates(detailedFailureMessage: 'longitude: $longitude, latitude: $latitude. Longitude must be between -180 and 180, latitude must be between -90 and 90')));
    });

    test('Should return ValueFailure when latitude is > 90', () {
      // Arrange
      const longitude = 0.0;
      const latitude = 91.0;

      // Act
      final coordinate = Coordinate(longitude, latitude);

      // Assert
      expect(coordinate.value, left(const ValueFailure.invalidCoordinates(detailedFailureMessage: 'longitude: $longitude, latitude: $latitude. Longitude must be between -180 and 180, latitude must be between -90 and 90')));
    });

    test('Should return ValueFailure when latitude is < -90', () {
      // Arrange
      const longitude = 0.0;
      const latitude = -91.0;

      // Act
      final coordinate = Coordinate(longitude, latitude);

      // Assert
      expect(coordinate.value, left(const ValueFailure.invalidCoordinates(detailedFailureMessage: 'longitude: $longitude, latitude: $latitude. Longitude must be between -180 and 180, latitude must be between -90 and 90')));
    });

    test('Should create a new Coordinate when input is valid', () {
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

    group('Address Value Object', () {
    test('should create a valid Address instance', () {
      // Arrange
      Coordinate coordinates = Coordinate(40.712776, -74.005974); // New York coordinates
      const String addressName = 'Home';
      const String addressDetailed = '123, Main Street, New York';
      const String name = 'Home address';

      // Act
      final address = AddressValueObject(
        name: name,
        coordinates: coordinates,
        addressName: addressName,
        addressDetailed: addressDetailed,
      );

      // Assert
      expect(address.coordinates, coordinates);
      expect(address.addressName, addressName);
      expect(address.addressDetailed, addressDetailed);
    });
  });
}