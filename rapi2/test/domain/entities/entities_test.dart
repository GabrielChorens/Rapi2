import 'package:flutter_test/flutter_test.dart';
import 'package:rapi2/domain/entities/address.dart';
import 'package:rapi2/domain/entities/business.dart';
import 'package:rapi2/domain/entities/product.dart';
import 'package:rapi2/domain/entities/user.dart';
import 'package:rapi2/domain/value_objects/address_value_objects.dart';
import 'package:rapi2/domain/value_objects/bussiness_value_objects.dart';
import 'package:rapi2/domain/value_objects/user_value_objects.dart';

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

  group('Product', () {
    test('should create a valid product', () {
      // Arrange
      const id = 1;
      const name = 'Test Product';
      const description = 'This is a test product';
      const price = 99.99;
      const deliveryTime = 2;
      const pictureURL = 'http://example.com/test.jpg';

      // Act
      const product = Product(
        id: id,
        name: name,
        description: description,
        price: price,
        deliveryTime: deliveryTime,
        pictureURL: pictureURL,
      );

      // Assert
      expect(product.id, id);
      expect(product.name, name);
      expect(product.description, description);
      expect(product.price, price);
      expect(product.deliveryTime, deliveryTime);
      expect(product.pictureURL, pictureURL);
    });
  });

  group('User', () {
    test('should create a valid user', () {
      // Arrange
      const fullName = Name(firstName: 'John', lastName: 'Doe');
      final phoneNumber = PhoneNumber(
          callCode: NumberAsString('123'),
          phoneNumber: NumberAsString('1234567890'),
          countryCode: 'US');
      final email = Email('john.doe@example.com');
      const profilePictureURL = '';
      const authToken = '';
      final currency = Currencies('USD');

      // Act
      final user = User(
        fullName: fullName,
        phoneNumber: phoneNumber,
        email: email,
        profilePictureURL: profilePictureURL,
        authToken: authToken,
        currency: currency,
      );

      // Assert
      expect(user.fullName, fullName);
      expect(user.phoneNumber, phoneNumber);
      expect(user.email, email);
      expect(user.profilePictureURL, profilePictureURL);
      expect(user.authToken, authToken);
      expect(user.currency, currency);
    });

    test('should create a valid user even without all fields', () {
      // Arrange
      const fullName = Name(firstName: 'John', lastName: 'Doe');
      final phoneNumber = PhoneNumber(
          callCode: NumberAsString('123'),
          phoneNumber: NumberAsString('1234567890'),
          countryCode: 'US');


      // Act
      final user = User(
        fullName: fullName,
        phoneNumber: phoneNumber,
      );

      // Assert
      expect(user.fullName, fullName);
      expect(user.phoneNumber, phoneNumber);
    });
  });
  
}
