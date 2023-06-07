import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rapi2/domain/value_objects/user_value_objects.dart';
import 'package:rapi2/infraestructure/network/api/auth_api_client.dart';
import 'package:rapi2/infraestructure/network/api/server_responses.dart';
import 'package:mockito/mockito.dart';
import 'mocks/dio_provider_mock.dart';

void main() {
  late MockDioProvider mockDioProvider;
  late AuthApiClient authApiClient;

  const Name testName = Name(firstName: "test", lastName: "test");

  final Email testEmail = Email('chorensgabriel@gmail.com');

  final PhoneNumber testPhoneNumber = PhoneNumber(
    phoneNumber: NumberAsString("85883441"),
    callCode: NumberAsString("505"),
    countryCode: "NI",
  );
  final Password testPassword = Password("12345678");

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
        password: testPassword,
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
        password: testPassword,
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
        password: testPassword,
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
        name: testName,
        phoneNumber: testPhoneNumber,
        password: testPassword,
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

}
