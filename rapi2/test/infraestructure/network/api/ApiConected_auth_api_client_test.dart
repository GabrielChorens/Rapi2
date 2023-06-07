// ignore_for_file: file_names

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rapi2/domain/value_objects/user_value_objects.dart';
import 'package:rapi2/infraestructure/network/api/auth_api_client.dart';
import 'package:rapi2/infraestructure/network/api/server_responses.dart';
import 'package:rapi2/infraestructure/network/dio_provider.dart';

void main() {
  late AuthApiClient authApiClient;
  late DioProvider dioProvider;

  setUp(() {
    dioProvider = DioProvider();
    authApiClient = AuthApiClient(dioProvider);
  });

  group('login', () {
    test(
        'Should answer ServerSuccess if the credentials are valid as well as set the auth token precisely',
        () async {
      //Arrange
      final testPhoneNumber = PhoneNumber(
        phoneNumber: NumberAsString("85883441"),
        callCode: NumberAsString("505"),
        countryCode: "NI",
      );
      final testPassword = Password("12345678");
      //Act
      final result = await authApiClient.login(
        phoneNumber: testPhoneNumber,
        password: testPassword,
      );
      //Assert
      expect(result.isRight(), true);
      String resultAuthToken =
          result.fold((l) => '', (r) => r.data['auth_token']);
      expect('Bearer $resultAuthToken',
          equals(dioProvider.dio.options.headers['Authorization']));
    });

    test(
        'Should throw ApiConnectionFailure.notFound if the phone number does not exist',
        () async {
      //Arrange
      final testPhoneNumber = PhoneNumber(
        phoneNumber: NumberAsString("12345678"),
        callCode: NumberAsString("505"),
        countryCode: "NI",
      );
      final testPassword = Password("12345678");
      //Act
      final result = await authApiClient.login(
        phoneNumber: testPhoneNumber,
        password: testPassword,
      );
      //Assert
      expect(result, equals(left(const ApiConnectionFailure.notFound())));
    });

    test(
        'Should throw ApiConnectionFailure.badRequest if the password is incorrect',
        () async {
      final testPhoneNumber = PhoneNumber(
        phoneNumber: NumberAsString("85883441"),
        callCode: NumberAsString("505"),
        countryCode: "NI",
      );
      final testPassword = Password("321654987");

      final result = await authApiClient.login(
        phoneNumber: testPhoneNumber,
        password: testPassword,
      );

      expect(
          result,
          equals(left(const ApiConnectionFailure.badRequest(
              detailedMessage: 'Invalid Credentials'))));
    });
  });

  group('signUp', () {
    test(
        'Should throw an ApiConecctionFailure.badRequest when an already registered user tries to Sign Up',
        () async {
      //Arrange
      const testName = Name(firstName: "gabriel", lastName: "chorens");
      final testPhoneNumber = PhoneNumber(
        phoneNumber: NumberAsString("85883441"),
        callCode: NumberAsString("505"),
        countryCode: "NI",
      );
      final testPassword = Password("12345678");
      //Act
      final result = await authApiClient.signUp(
        name: testName,
        phoneNumber: testPhoneNumber,
        password: testPassword,
      );
      //Assert
      expect(
          result,
          equals(left(const ApiConnectionFailure.badRequest(
              detailedMessage: 'phone_number: Already exist'))));
    });
  });

  group('checkEmailAvailability', () {
    test(
        'Should answer ServerSuccess if the email its not registered in the database',
        () async {
      //Arrange
      final testEmail = Email('chorensgabriel@gmail.com');

      //Act
      final result = await authApiClient.checkEmailAvailability(
        email: testEmail,
      );
      //Assert
      expect(result.isRight(), true);
    });

    test(
        'Should throw ApiConnectionFailure.alreadyRegisteredValue if the email its already registered',
        () async {
      //Arrange

      final testEmail = Email('gabrielchorens@gmail.com');

      //Act
      final result = await authApiClient.checkEmailAvailability(
        email: testEmail,
      );
      //Assert
      expect(result, equals(left(const ApiConnectionFailure.alreadyRegisteredValue())));
    });
  });
}
