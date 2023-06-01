import 'package:flutter_test/flutter_test.dart';
import 'package:rapi2/domain/entities/business.dart';
import 'package:rapi2/domain/entities/product.dart';
import 'package:rapi2/domain/value_objects/address_value_objects/coordinate.dart';
import 'package:rapi2/domain/value_objects/business_value_objects/rating.dart';

void main() {
  group('Business', () {
    test('should create a valid Business instance', () {
      // Arrange
      const int id = 1;
      const String name = 'Business Name';
      const String description = 'Business Description';
      const String phoneNumber = '1234567890';
      final Rating rating = Rating(4); // rating is a int between 0 and 5
      const String address = '123, Main Street, New York';
      Coordinate coordinates = Coordinate(40.712776, -74.005974); // New York coordinates
      const int deliveryTime = 30; // delivery time in minutes
      const bool bookingEnabled = true;
      const String businessPictureURL = 'http://example.com/picture.jpg';
      const List<Product> products = [];

      // Act
      final business = Business(
        id: id,
        name: name,
        description: description,
        phoneNumber: phoneNumber,
        rating: rating,
        address: address,
        coordinates: coordinates,
        deliveryTime: deliveryTime,
        bookingEnabled: bookingEnabled,
        businessPictureURL: businessPictureURL, 
        products: products,
      );

      // Assert
      expect(business.id, id);
      expect(business.name, name);
      expect(business.description, description);
      expect(business.phoneNumber, phoneNumber);
      expect(business.rating, rating);
      expect(business.address, address);
      expect(business.coordinates, coordinates);
      expect(business.deliveryTime, deliveryTime);
      expect(business.bookingEnabled, bookingEnabled);
      expect(business.businessPictureURL, businessPictureURL);
      expect(business.products, products);
    });
  });
}
