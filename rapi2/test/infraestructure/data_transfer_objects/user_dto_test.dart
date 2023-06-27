import 'package:flutter_test/flutter_test.dart';
import 'package:rapi2/domain/entities/user.dart';
import 'package:rapi2/domain/value_objects/user_value_objects.dart';
import 'package:rapi2/infraestructure/data_transfer_objects/entities/user_dto.dart';


void main() {
  group('UserDTO all values provided', () {

    final testUser = User(
      fullName: const Name(firstName: 'John', lastName: 'Doe'),
      phoneNumber: PhoneNumber(
          callCode: NumberAsString('1'),
          phoneNumber: NumberAsString('1234567890'),
          countryCode: 'US'),
      email: Email('john.doe@example.com'),
      currency: Currencies('USD'),
      authToken: 'authToken123',
      profilePictureURL: 'https://example.com/profile.jpg',
    );

    test('Should correctly convert from domain', () {
      // Act
      final result = UserDTO.fromDomain(testUser);

      // Assert
      expect(result.name, equals(testUser.fullName.firstName));
      expect(result.lastName, equals(testUser.fullName.lastName));
      expect(result.phoneNumber, equals(testUser.phoneNumber.phoneNumber.getOrCrash()));
      expect(result.callCode, equals(testUser.phoneNumber.callCode.getOrCrash()));
      expect(result.countryCode, equals(testUser.phoneNumber.countryCode));
      expect(result.email, equals(testUser.email?.getOrCrash()));
      expect(result.currency, equals(testUser.currency?.getOrCrash()));
      expect(result.authToken, equals(testUser.authToken));
      expect(result.profilePictureURL, equals(testUser.profilePictureURL));
    });

    test('Should correctly convert to domain', () {
      // Arrange
      final userDto = UserDTO.fromDomain(testUser);

      // Act
      final result = userDto.toDomain();

      // Assert
      expect(result, equals(testUser));
    });

    test('Should correctly convert from JSON', () {
      // Arrange
      final json = {
        'user_id': 123,
        'name': 'John',
        'last_name': 'Doe',
        'phone_number': '1234567890',
        'call_code': '1',
        'country_code': 'US',
        'email': 'john.doe@example.com',
        'auth_token': 'authToken123',
        'currency': 'USD',
        'profile_picture': 'https://example.com/profile.jpg',
      };

      // Act
      final result = UserDTO.fromJson(json);

      // Assert
      expect(result, equals(UserDTO.fromDomain(testUser)));
    });
  });

  group('UserDTO with null values', () {
  final testUser = User(
    fullName: const Name(firstName: 'John', lastName: 'Doe'),
    phoneNumber: PhoneNumber(
        callCode: NumberAsString('1'),
        phoneNumber: NumberAsString('1234567890'),
        countryCode: 'US'),
    email: null,
    currency: null,
    authToken: null,
    profilePictureURL: null,
  );

  test('Should correctly convert from domain', () {
    // Act
    final result = UserDTO.fromDomain(testUser);

    // Assert
    expect(result.name, equals(testUser.fullName.firstName));
    expect(result.lastName, equals(testUser.fullName.lastName));
    expect(result.phoneNumber, equals(testUser.phoneNumber.phoneNumber.getOrCrash()));
    expect(result.callCode, equals(testUser.phoneNumber.callCode.getOrCrash()));
    expect(result.countryCode, equals(testUser.phoneNumber.countryCode));
    expect(result.email, equals(testUser.email?.getOrCrash()));
    expect(result.currency, equals(testUser.currency?.getOrCrash()));
    expect(result.authToken, equals(testUser.authToken));
    expect(result.profilePictureURL, equals(testUser.profilePictureURL));
  });

  test('Should correctly convert to domain', () {
    // Arrange
    final userDto = UserDTO.fromDomain(testUser);

    // Act
    final result = userDto.toDomain();

    // Assert
    expect(result, equals(testUser));
  });

  test('Should correctly convert from JSON', () {
    // Arrange
    final json = {
      'user_id': 123,
      'name': 'John',
      'last_name': 'Doe',
      'phone_number': '1234567890',
      'call_code': '1',
      'country_code': 'US',
      'email': null,
      'auth_token': null,
      'currency': null,
      'profile_picture': null,
    };

    // Act
    final result = UserDTO.fromJson(json);

    // Assert
    expect(result, equals(UserDTO.fromDomain(testUser)));
  });
});

}
