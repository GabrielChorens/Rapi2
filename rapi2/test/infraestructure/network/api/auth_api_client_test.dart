import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rapi2/infraestructure/network/api/auth_api_client.dart';
import 'package:rapi2/infraestructure/network/api/server_responses.dart';
import 'package:mockito/mockito.dart';
import 'mocks/dio_provider_mock.dart';

void main() {
  late MockDioProvider mockDioProvider;
  late AuthApiClient authApiClient;

  const String testFirstName = 'test';
  const String testLastName = 'test';
  const String testEmail = 'chorensgabriel@gmail.com';
  const String testPhoneNumber = '85883441';
  const String testCallCode = '505';
  const String testCountryCode = 'NI';
  const String testPassword  = '12345678';
  const String testFirebaseToken = '';
  const String testValidationCode = 'test';


  const String testFullPhoneNumber = '+$testCallCode$testPhoneNumber';

  setUp(() {
    mockDioProvider = MockDioProvider();
    authApiClient = AuthApiClient(mockDioProvider);
  });

  group('login', () {
    test(
        'Should answer ServerSuccess if the credentials are valid',
        () async {
      //Arrange
      Map<String, dynamic> testData = {};

      // Configura el método post para que devuelva una respuesta exitosa
      when(mockDioProvider.dio.post(any, data: anyNamed('data'))).thenAnswer(
          (_) async => Response(
              data: testData,
              statusCode: 200,
              requestOptions: RequestOptions(path: '')));

      //Act
      final result = await authApiClient.login(
        phoneNumber: testPhoneNumber,
        callCode: testCallCode,
        countryCode: testCountryCode,
        password: testPassword,
        firebaseToken: testFirebaseToken,
      );

      //Assert
      expect(result.isRight(), isTrue);
      result.fold(
        (l) => null,
        (r) => expect(r, isA<ServerSuccess>()),
      );
    });

    test(
        'Should throw ApiConnectionFailure.notFound if the phone number does not exist',
        () async {
      //Arrange
      when(mockDioProvider.dio.post(any, data: anyNamed('data'))).thenThrow(
        DioError(
          requestOptions: RequestOptions(path: 'any'),
          type: DioErrorType.badResponse,
          response: Response(
            statusCode: 404,
            data: {'message': 'User not found'},
            requestOptions: RequestOptions(path: 'any'),
          ),
        ),
      );
      //Act
      final result = await authApiClient.login(
        phoneNumber: testPhoneNumber,
        callCode: testCallCode,
        countryCode: testCountryCode,
        password: testPassword,
        firebaseToken: testFirebaseToken,
      );

      //Assert
      expect(result, equals(left(const ApiConnectionFailure.notFound())));
    });

    test(
        'Should throw ApiConnectionFailure.badRequest if the password is incorrect',
        () async {
      //Arrange
      when(mockDioProvider.dio.post(any, data: anyNamed('data'))).thenThrow(
        DioError(
          requestOptions: RequestOptions(path: 'any'),
          type: DioErrorType.badResponse,
          response: Response(
            statusCode: 400,
            data: {'message': 'Invalid Credentials'},
            requestOptions: RequestOptions(path: 'any'),
          ),
        ),
      );

      //Act
      final result = await authApiClient.login(
        phoneNumber: testPhoneNumber,
        callCode: testCallCode,
        countryCode: testCountryCode,
        password: testPassword,
        firebaseToken: testFirebaseToken,
      );

      //Assert
      expect(
          result,
          equals(left(const ApiConnectionFailure.badRequest(
              detailedMessage: 'Invalid Credentials'))));
    });
  });

  group('signUp', () {
      test(
        'Should answer Serversuccess when appropiate values are sended',
        () async {
      //Arrange
     when(mockDioProvider.dio.post(any, data: anyNamed('data'))).thenAnswer(
          (_) async => Response(
              data: {'message': 'User created successfully'},
              statusCode: 201,
              requestOptions: RequestOptions(path: '')));

      //Act
      final result = await authApiClient.signUp(
        firstName: testFirstName,
        lastName: testLastName,
        phoneNumber: testPhoneNumber,
        callCode: testCallCode,
        countryCode: testCountryCode,
        email: testEmail,
        password: testPassword,
        firebaseToken: testFirebaseToken,
      );

      //Assert
      expect(result.isRight(), isTrue);
      result.fold(
        (l) => null,
        (r) => expect(r, isA<ServerSuccess>()),
      );
    });

    test(
        'Should throw an ApiConecctionFailure.badRequest when an already registered user tries to Sign Up',
        () async {
      //Arrange
      when(mockDioProvider.dio.post(any, data: anyNamed('data'))).thenThrow(
        DioError(
          requestOptions: RequestOptions(path: 'any'),
          type: DioErrorType.badResponse,
          response: Response(
            statusCode: 400,
            data: {'message': ['phone_number: Already exist']},
            requestOptions: RequestOptions(path: 'any'),
          ),
        ),
      );

      //Act
      final result = await authApiClient.signUp(
        firstName: testFirstName,
        lastName: testLastName,
        phoneNumber: testPhoneNumber,
        callCode: testCallCode,
        countryCode: testCountryCode,
        email: testEmail,
        password: testPassword,
        firebaseToken: testFirebaseToken,
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
        when(mockDioProvider.dio.post(any, data: anyNamed('data'))).thenAnswer(
          (_) async => Response(
              data: {'email': false},
              statusCode: 200,
              requestOptions: RequestOptions(path: '')));

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
         when(mockDioProvider.dio.post(any, data: anyNamed('data'))).thenAnswer(
          (_) async => Response(
              data: {'email': true},
              statusCode: 200,
              requestOptions: RequestOptions(path: '')));

      //Act
      final result = await authApiClient.checkEmailAvailability(
        email: testEmail,
      );
      //Assert
      expect(result, equals(left(const ApiConnectionFailure.alreadyRegisteredValue())));
    });
  });

   group('checkPhoneNumberAvailability', () {
    test(
        'Should answer ServerSuccess if the phone number its not registered in the database',
        () async {
      //Arrange
         when(mockDioProvider.dio.post(any, data: anyNamed('data'))).thenAnswer(
          (_) async => Response(
              data: {'phone_number': false},
              statusCode: 200,
              requestOptions: RequestOptions(path: '')));

      //Act
      final result = await authApiClient.checkPhoneNumberAvailability(
        phoneNumber: testFullPhoneNumber,
      );
      //Assert
      expect(result.isRight(), true);
    });

    test(
        'Should throw ApiConnectionFailure.alreadyRegisteredValue if the phone number its already registered',
        () async {
      //Arrange
         when(mockDioProvider.dio.post(any, data: anyNamed('data'))).thenAnswer(
          (_) async => Response(
              data: {'phone_number': true},
              statusCode: 200,
              requestOptions: RequestOptions(path: '')));

      //Act
      final result = await authApiClient.checkPhoneNumberAvailability(
        phoneNumber: testFullPhoneNumber,
      );
      //Assert
      expect(result,
          equals(left(const ApiConnectionFailure.alreadyRegisteredValue())));
    });
  });

  //No need to test request validation code since it can only accept an already validated Phone Number 

   group('Check validation code', () {
    test(
        'Should answer ServerSuccess if the validation code is correct according to the phone number',
        () async {
      //Arrange
       when(mockDioProvider.dio.post(any, data: anyNamed('data'))).thenAnswer(
          (_) async => Response(
              data: 'true',
              statusCode: 200,
              requestOptions: RequestOptions(path: '')));

      //Act
      final result = await authApiClient.checkValidationCode(
        phoneNumber: testPhoneNumber,
        callCode: testCallCode,
        validationCode: testValidationCode,
      );
      //Assert
      expect(result, equals(right(const ServerSuccess())) );
    });

    //At the moment 6/7/2023 the server does not return any error if the validation code is incorrect
    
  });
}
