import 'package:flutter_test/flutter_test.dart';
import 'package:rapi2/domain/entities/user.dart';
import 'package:rapi2/domain/value_objects/user_value_objects/number_as_string.dart';
import 'package:rapi2/domain/value_objects/user_value_objects/user_value_objects_barrel.dart';


void main() {
  group('User', () {
    test('should create a valid user', () {
      // Arrange
      const name = 'John';
      const lastName = 'Doe';
      final phoneNumber = PhoneNumber(callCode: NumberAsString('123'), phoneNumber: NumberAsString('1234567890'), countryCode: 'US');
      final email = Email('john.doe@example.com');
      final password = Password('password123');
      const profilePictureURL = '';
      const authToken = '';
      final currency = Currencies('USD');

      // Act
      final user = User(
        name: name,
        lastName: lastName,
        phoneNumber: phoneNumber,
        email: email,
        password: password,
        profilePictureURL: profilePictureURL, 
        authToken: authToken,
        currency: currency,
      );

      // Assert
      expect(user.name, name);
      expect(user.lastName, lastName);
      expect(user.phoneNumber, phoneNumber);
      expect(user.email, email);
      expect(user.password, password);
      expect(user.profilePictureURL, profilePictureURL);
      expect(user.authToken, authToken);
      expect(user.currency, currency);
    });
  });
}
