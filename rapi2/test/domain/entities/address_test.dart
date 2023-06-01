import 'package:flutter_test/flutter_test.dart';
import 'package:rapi2/domain/entities/address.dart';
import 'package:rapi2/domain/value_objects/address_value_objects/coordinate.dart';

void main() {
  group('Address', () {
    test('should create a valid Address instance', () {
      // Arrange
      const int id = 1;
      Coordinate coordinates = Coordinate(40.712776, -74.005974); // New York coordinates
      const String addressName = 'Home';
      const String addressDetailed = '123, Main Street, New York';

      // Act
      final address = Address(
        id: id,
        coordinates: coordinates,
        addressName: addressName,
        addressDetailed: addressDetailed,
      );

      // Assert
      expect(address.id, id);
      expect(address.coordinates, coordinates);
      expect(address.addressName, addressName);
      expect(address.addressDetailed, addressDetailed);
    });
  });
}
