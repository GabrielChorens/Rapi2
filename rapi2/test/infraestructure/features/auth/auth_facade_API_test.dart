// ignore_for_file: file_names
import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';
import 'package:rapi2/domain/features/auth/auth_failure.dart';
import 'package:rapi2/domain/value_objects/user_value_objects.dart';
import 'package:rapi2/infraestructure/device/services/storage/user_storage_service.dart';
import 'package:rapi2/infraestructure/features/auth/auth_facade.dart';
import 'package:rapi2/infraestructure/network/api/auth_api_client.dart';
import 'package:rapi2/infraestructure/network/dio_provider.dart';

import '../../network/api/mocks/get_storage.mocks.dart';

void main() {


  late DioProvider dioProvider;
  late AuthApiClient authApiClient;
  late AuthFacade authFacade;
  late MockGetStorage getStorage;
  late UserStorageService userStorageService;

  setUp(() {
    dioProvider = DioProvider();
    authApiClient = AuthApiClient(dioProvider);
    getStorage = MockGetStorage();
    userStorageService = UserStorageService(getStorage);
    authFacade = AuthFacade(authApiClient, userStorageService);
  });

  const testFirebaseToken = FirebaseToken();

  group('login', () {
    ///We are testing the api interaction part of the facade since the storage part is tested in the storage service test.
    test('Should perform login and return Unit when its success', () async {
      // Arrange
      final testPhoneNumber = PhoneNumber(
          callCode: NumberAsString('505'),
          phoneNumber: NumberAsString('85883441'),
          countryCode: 'NI');
      final testPassword = Password('12345678');

      // Act
      final result = await authFacade.login(
        phoneNumber: testPhoneNumber,
        password: testPassword,
        firebaseToken: testFirebaseToken,
      );

      // Assert
      expect(result is Right, true);
    });

    test(
        'Should perform login and return AuthFailure.invalidPhoneNumberAndPasswordCombination provided bad Password',
        () async {
      // Arrange
      final testPhoneNumber = PhoneNumber(
          callCode: NumberAsString('505'),
          phoneNumber: NumberAsString('85883441'),
          countryCode: 'NI');
      final testPassword = Password('321654987');

      // Act
      final result = await authFacade.login(
        phoneNumber: testPhoneNumber,
        password: testPassword,
        firebaseToken: testFirebaseToken,
      );

      // Assert
      expect(result is Left, true);
      expect(
          result,
          equals(const Left(
            AuthFailure.invalidPhoneNumberAndPasswordCombination(),
          )));
    });

    test('Should perform login and return AuthFailure.serverError.',
        //We are simulating a 404 error that cant exist since the phone number is validated before sending the request
        () async {
      // Arrange
      final testPhoneNumber = PhoneNumber(
          callCode: NumberAsString('505'),
          phoneNumber: NumberAsString('12345678'),
          countryCode: 'NI');
      final testPassword = Password('12345678');

      // Act
      final result = await authFacade.login(
        phoneNumber: testPhoneNumber,
        password: testPassword,
        firebaseToken: testFirebaseToken,
      );

      // Assert
      expect(result is Left, true);
      expect(
          result,
          equals(const Left(
            AuthFailure.serverError(failureDescription: 'not_found'),
          )));
    });
  });

  group('sign up', () {
    //We are not testing the success case in order to not pollute the database with test data.
    test(
        'Should return AuthFailure.alreadyRegisteredValue in the unreal case of an already registered phone number',
        () async {
      // Arrange
      const testName = Name(firstName: 'gabriel', lastName: 'chorens');
      final testPhoneNumber = PhoneNumber(
          callCode: NumberAsString('505'),
          phoneNumber: NumberAsString('12345678'),
          countryCode: 'NI');
      final testPassword = Password('12345678');

      // Act
      final result = await authFacade.signUp(
        fullName: testName,
        phoneNumber: testPhoneNumber,
        password: testPassword,
        firebaseToken: testFirebaseToken,
      );

      // Assert
      expect(result is Left, true);
      expect(
          result,
          equals(const Left(
            AuthFailure.alreadyRegisteredValue(),
          )));
    });
  });

  group('check email availability', () {
    test('Should return Unit if the email is available', () async {
      // Arrange
      final testEmail = Email('garburolak@gmail.com');

      // Act
      final result = await authFacade.checkEmailAvailability(
        emailAddress: testEmail,
      );

      // Assert
      expect(result, equals(const Right(unit)));
    });

    test(
        'Should return AuthFailure.alreadyRegisteredValue if the email is already in use',
        () async {
      // Arrange
      final testEmail = Email('gabrielchorens@gmail.com');

      // Act
      final result = await authFacade.checkEmailAvailability(
        emailAddress: testEmail,
      );

      // Assert
      expect(result, equals(const Left(AuthFailure.alreadyRegisteredValue())));
    });
  });

  group('check phone number availability', () {
    test('Should return Unit if the phone number is available', () async {
      // Arrange
      final testPhoneNumber = PhoneNumber(
          callCode: NumberAsString('505'),
          phoneNumber: NumberAsString('12345678'),
          countryCode: 'NI');

      // Act
      final result = await authFacade.checkPhoneNumberAvailability(
        phoneNumber: testPhoneNumber,
      );

      // Assert
      expect(result, equals(const Right(unit)));
    });

    test(
        'Should return AuthFailure.alreadyRegisteredValue if the phone number is already in use',
        () async {
      // Arrange
      final testPhoneNumber = PhoneNumber(
          callCode: NumberAsString('505'),
          phoneNumber: NumberAsString('85883441'),
          countryCode: 'NI');

      // Act
      final result = await authFacade.checkPhoneNumberAvailability(
        phoneNumber: testPhoneNumber,
      );

      // Assert
      expect(result, equals(const Left(AuthFailure.alreadyRegisteredValue())));
    });
  });

  //We are not testing resend verification code because there is not much to test with the actual API at 6/9/2023.

  //We are not testing against the real api check Validation code since at 6/9/2023 the API is not sending verifications codes.
  //All results against the api are successes. Will be tested on the mocked tests.

  group('logout', () {
    test('Should return Unit if the logout was successful', () async {
      // Arrange
      final testPhoneNumber = PhoneNumber(
          callCode: NumberAsString('505'),
          phoneNumber: NumberAsString('85883441'),
          countryCode: 'NI');
      final testPassword = Password('12345678');

      // Act
      await authFacade.login(
        phoneNumber: testPhoneNumber,
        password: testPassword,
        firebaseToken: testFirebaseToken,
      );
      final result = await authFacade.logout();

      // Assert
      expect(result, equals(const Right(unit)));
    });
  });
}
