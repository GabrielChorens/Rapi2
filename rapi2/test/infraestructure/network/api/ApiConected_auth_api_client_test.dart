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

  const FirebaseToken firebaseToken = FirebaseToken();
  final String testFirebaseToken = firebaseToken.firebaseToken;

  setUp(() {
    dioProvider = DioProvider();
    authApiClient = AuthApiClient(dioProvider);
  });

  group('login', () {
    test(
        'Should answer ServerSuccess if the credentials are valid as well as set the auth token precisely',
        () async {

      //Arrange
      const String testPhoneNumber = '85883441';
      const String testCallCode = '505';
      const String testCountryCode = 'NI';
      const String testPassword = '12345678';

      //Act
      final result = await authApiClient.login(
        phoneNumber: testPhoneNumber,
        callCode: testCallCode,
        countryCode: testCountryCode,
        password: testPassword,
        firebaseToken: testFirebaseToken,
      );

      //Assert
      expect(result.isRight(), true);
    });

    test(
        'Should throw ApiConnectionFailure.notFound if the phone number does not exist',
        () async {

      //Arrange
      const String testPhoneNumber = '85620600';
      const String testCallCode = '505';
      const String testCountryCode = 'NI';
      const String testPassword = '12345678';

      //Act
      final result = await authApiClient.login(
        phoneNumber: testPhoneNumber,
        callCode: testCallCode,
        countryCode: testCountryCode,
        password: testPassword,
        firebaseToken: testFirebaseToken,
      );

      //Assert
      expect(result, equals(left(const NotFound())));
    });

    test(
        'Should throw ApiConnectionFailure.badRequest if the password is incorrect',
        () async {

      //Arrange
      const String testPhoneNumber = '85883441';
      const String testCallCode = '505';
      const String testCountryCode = 'NI';
      const String testPassword = '321654987';

      //Act
      final result = await authApiClient.login(
        phoneNumber: testPhoneNumber,
        callCode: testCallCode,
        countryCode: testCountryCode,
        password: testPassword,
        firebaseToken: testFirebaseToken,
      );

      //Assert
    
      expect(result.fold((l) => l, (_) => _) is BadRequest, true);
      expect(result.fold((l) => l.failureTrace, (r) => null), equals(const MessageFromServer(message: 'Invalid Credentials')));
    });
  });

  group('signUp', () {
    //At 6/19/2023 Api did not emits an error when a user tries to Sign Up with an already registered phone number

    // test(
    //     'Should throw an ApiConecctionFailure.badRequest when an already registered user tries to Sign Up',
    //     () async {

    //   //Arrange
    //   const String testFirstName = 'gabriel';
    //   const String testLastName = 'chorens';
    //   const String testPhoneNumber = '85883441';
    //   const String testCallCode = '505';
    //   const String testCountryCode = 'NI';
    //   const String testPassword = '12345678';
 
    //   //Act
    //   final result = await authApiClient.signUp(
    //     firstName: testFirstName,
    //     lastName: testLastName,
    //     phoneNumber: testPhoneNumber,
    //     callCode: testCallCode, 
    //     countryCode: testCountryCode,
    //     password: testPassword,
    //     firebaseToken: testFirebaseToken,
    //   );

    //   //Assert
    //   expect(result.fold((l) => l, (_) => _) is BadRequest, true);
    //   expect(result.fold((l) => l.getDescription(), (r) => null), equals('bad_request ||| detailedMessage: phone_number: Already exist'));

    // });
  });

  group('checkEmailAvailability', () {
    test(
        'Should answer ServerSuccess if the email its not registered in the database',
        () async {

      //Arrange
      const String testEmail = 'chorensgabriel@gmail.com';

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
      const String testEmail = 'gabrielchorens@gmail.com';

      //Act
      final result = await authApiClient.checkEmailAvailability(
        email: testEmail,
      );
      //Assert
      expect(result,
          equals(left(const AlreadyRegistered())));
    });
  });

  group('checkPhoneNumberAvailability', () {
    test(
        'Should answer ServerSuccess if the phone number its not registered in the database',
        () async {

      //Arrange
      const String testPhoneNumber = '+50585430600';

      //Act
      final result = await authApiClient.checkPhoneNumberAvailability(
        phoneNumber: testPhoneNumber,
      );

      //Assert
      expect(result.isRight(), true);
    });

    test(
        'Should throw ApiConnectionFailure.alreadyRegisteredValue if the phone number its already registered',
        () async {
      //Arrange
      const String testPhoneNumber = '+50585883441';

      //Act
      final result = await authApiClient.checkPhoneNumberAvailability(
        phoneNumber: testPhoneNumber,
      );
      //Assert
      expect(result,
          equals(left(const AlreadyRegistered())));
    });
  });

  //No need to test request validation code since it can only accept an already validated Phone Number

  group('Check validation code', () {
    test(
        'Should answer ServerSuccess if the validation code is correct according to the phone number',
        () async {
      //Arrange
      const String testPhoneNumber = '85883441';
      const String testCallCode = '505';
      const String testValidationCode = '123';
      const String testCountryCode = 'NI';
      
      //Act
      final result = await authApiClient.checkValidationCode(
        countryCode: testCountryCode,
        phoneNumber: testPhoneNumber,
        callCode: testCallCode,
        validationCode: testValidationCode,
      );
      //Assert
      expect (result.fold((l) => l,(r) => r), isA<ServerSuccess>());
    });

    //At the moment 6/7/2023 the server does not return any error if the validation code is incorrect
  });
}
