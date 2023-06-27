// ignore_for_file: file_names
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';
import 'package:rapi2/domain/features/auth/auth_failure.dart';
import 'package:rapi2/domain/value_objects/core/validation_code.dart';
import 'package:rapi2/domain/value_objects/user_value_objects.dart';
import 'package:rapi2/infraestructure/services/storage/user_storage_service.dart';
import 'package:rapi2/infraestructure/features/auth/auth_facade.dart';
import 'package:rapi2/infraestructure/network/api/auth_api_client.dart';
import 'package:mockito/mockito.dart';
import 'package:rapi2/infraestructure/network/api/server_responses.dart';
import '../../device/mocks/auth_management_service_mock.dart';
import '../../network/api/mocks/dio_provider_mock.dart';
import '../../network/api/mocks/get_storage.mocks.dart';

void main() {
  late MockAuthManagementService authManagementService;
  late MockDioProvider mockDioProvider;
  late AuthApiClient authApiClient;
  late AuthFacade authFacade;
  late MockGetStorage getStorage;
  late UserStorageService userStorageService;

  const testName = Name(firstName: 'gabriel', lastName: 'chorens');

  final testPhoneNumber = PhoneNumber(
      callCode: NumberAsString('505'),
      phoneNumber: NumberAsString('85883441'),
      countryCode: 'NI');
  final testPassword = Password('321654987');

  final testEmail = Email('gabrielchorens@gmail.com');

  const testFirebaseToken = FirebaseToken();

  setUp(() async {
    mockDioProvider = MockDioProvider();
    authApiClient = AuthApiClient(mockDioProvider);
    getStorage = MockGetStorage();
    userStorageService = UserStorageService(getStorage);
    authManagementService = MockAuthManagementService();
    authFacade = AuthFacade(authApiClient, userStorageService, authManagementService);
  });

  group('login', () {
    test('Should perform login and return Unit when Success', () async {
      // Arrange

      const testData = {
        "phone_number": "85883441",
        "name": "gabriel",
        "last_name": "chorens",
        "country_code": "NI",
        "call_code": "505",
        "currency": "USD",
        "email": "gabrielchorens@gmail.com",
        "auth_token":
            "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwaG9uZV9udW1iZXIiOiI4NTg4MzQ0MSIsImlkIjoxMDEsImNhbGxfY29kZSI6IjUwNSIsImNvdW50cnlfY29kZSI6Ik5JIiwiaWF0IjoxNjg2MzYyMDU0fQ.mXjAJvhTFKbxFpG1HFtZRkvjzoEmxW-70DvScdFyGvc"
      };

      when(mockDioProvider.dio.post(any, data: anyNamed('data'))).thenAnswer(
          (_) async => Response(
              data: testData,
              statusCode: 200,
              requestOptions: RequestOptions(path: '')));

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
        'Should perform login and return InvalidPhoneNumberAndPasswordCombination provided bad Password',
        () async {
      // Arrange

      when(mockDioProvider.dio.post(any, data: anyNamed('data'))).thenThrow(
        DioException(
          requestOptions: RequestOptions(path: 'any'),
          type: DioExceptionType.badResponse,
          response: Response(
            statusCode: 400,
            data: {'message': 'Invalid Credentials'},
            requestOptions: RequestOptions(path: 'any'),
          ),
        ),
      );

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
            InvalidPhoneNumberAndPasswordCombination(),
          )));
    });

    test('Should perform login and return ServerError.',
        //We are simulating a 404 error that cant exist since the phone number is validated before sending the request
        () async {
      // Arrange
      when(mockDioProvider.dio.post(any, data: anyNamed('data'))).thenThrow(
        DioException(
          requestOptions: RequestOptions(path: 'any'),
          type: DioExceptionType.badResponse,
          response: Response(
            statusCode: 404,
            data: {'message': 'User not found'},
            requestOptions: RequestOptions(path: 'any'),
          ),
        ),
      );

      // Act
      final result = await authFacade.login(
        phoneNumber: testPhoneNumber,
        password: testPassword,
        firebaseToken: testFirebaseToken,
      );

      // Assert
      expect(result is Left, true);
      expect(result.fold((l) => l, (_) => _) is ServerError, true);
      expect(result.fold((l) => l.failureTrace, (_) => _) is NotFound, true);    
    });
  });

  group('sign up', () {
    test('Should return Unit when all apropiate values have been sended',
        () async {
      // Arrange
      when(mockDioProvider.dio.post(any, data: anyNamed('data'))).thenAnswer(
          (_) async => Response(
              data: {'message': 'User created successfully'},
              statusCode: 201,
              requestOptions: RequestOptions(path: '')));

      // Act
      final result = await authFacade.signUp(
        fullName: testName,
        phoneNumber: testPhoneNumber,
        password: testPassword,
        firebaseToken: testFirebaseToken,
      );

      // Assert
      expect(result is Right, true);
      expect(result, equals(const Right(unit)));
    });

    test(
        'Should return AlreadyRegisteredValue in the unreal case of an already registered phone number',
        () async {
      // Arrange
      when(mockDioProvider.dio.post(any, data: anyNamed('data'))).thenThrow(
        DioException(
          requestOptions: RequestOptions(path: 'any'),
          type: DioExceptionType.badResponse,
          response: Response(
            statusCode: 400,
            data: {
              'message': ['phone_number: Already exist']
            },
            requestOptions: RequestOptions(path: 'any'),
          ),
        ),
      );

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
            AlreadyRegisteredValue(),
          )));
    });
  });

  group('check email availability', () {
    test('Should return Unit if the email is available', () async {
      // Arrange
      when(mockDioProvider.dio.post(any, data: anyNamed('data'))).thenAnswer(
          (_) async => Response(
              data: {'email': false},
              statusCode: 200,
              requestOptions: RequestOptions(path: '')));
      // Act
      final result = await authFacade.checkEmailAvailability(
        emailAddress: testEmail,
      );

      // Assert
      expect(result, equals(const Right(unit)));
    });

    test(
        'Should return AlreadyRegisteredValue if the email is already in use',
        () async {
      // Arrange
      when(mockDioProvider.dio.post(any, data: anyNamed('data'))).thenAnswer(
          (_) async => Response(
              data: {'email': true},
              statusCode: 200,
              requestOptions: RequestOptions(path: '')));

      // Act
      final result = await authFacade.checkEmailAvailability(
        emailAddress: testEmail,
      );

      // Assert
      expect(result, equals(const Left(AlreadyRegisteredValue())));
    });
  });

  group('check phone number availability', () {
    test('Should return Unit if the phone number is available', () async {
      // Arrange
      when(mockDioProvider.dio.post(any, data: anyNamed('data'))).thenAnswer(
          (_) async => Response(
              data: {'phone_number': false},
              statusCode: 200,
              requestOptions: RequestOptions(path: '')));

      // Act
      final result = await authFacade.checkPhoneNumberAvailability(
        phoneNumber: testPhoneNumber,
      );

      // Assert
      expect(result, equals(const Right(unit)));
    });

    test(
        'Should return AlreadyRegisteredValue if the phone number is already in use',
        () async {
      // Arrange
      when(mockDioProvider.dio.post(any, data: anyNamed('data'))).thenAnswer(
          (_) async => Response(
              data: {'phone_number': true},
              statusCode: 200,
              requestOptions: RequestOptions(path: '')));

      // Act
      final result = await authFacade.checkPhoneNumberAvailability(
        phoneNumber: testPhoneNumber,
      );

      // Assert
      expect(result, equals(const Left(AlreadyRegisteredValue())));
    });
  });

  //We are not testing resend verification code because there is not much to test with the actual API at 6/9/2023.

  group('check verification code', () {
    final testValidationCode = ValidationCode('12345');
    test('Should return Unit if the validation code is correct', () async {
      // Arrange
      when(mockDioProvider.dio.post(any, data: anyNamed('data'))).thenAnswer(
          (_) async => Response(
              data: 'true',
              statusCode: 200,
              requestOptions: RequestOptions(path: '')));

      // Act
      final result = await authFacade.checkVerificationCode(
        phoneNumber: testPhoneNumber,
        validationCode: testValidationCode,
      );

      // Assert
      expect(result, equals(const Right(unit)));
    });

    test(
        'Should return InvalidValidationCode if the validation code is incorrect',
        () async {
      // Arrange
      when(mockDioProvider.dio.post(any, data: anyNamed('data'))).thenAnswer(
          (_) async => Response(
              data: 'false',
              statusCode: 200,
              requestOptions: RequestOptions(path: '')));

      // Act
      final result = await authFacade.checkVerificationCode(
        phoneNumber: testPhoneNumber,
        validationCode: testValidationCode,
      );

      // Assert
      expect(result is Left, true);
      expect(
          result,
          equals(const Left(
            InvalidVerificationCodeAndPhoneNumberCombination(),
          )));
    });
  });

  // group('logout', () {
  //   test('Should return Unit if the logout was successful', () async {
  //     // Arrange
  //     when(mockDioProvider.dio.post(any, data: anyNamed('data'))).thenAnswer(
  //         (_) async => Response(
  //             data: {},
  //             statusCode: 200,
  //             requestOptions: RequestOptions(path: '')));

  //     mockDioProvider.setAuthToken('test');

  //     // Act
  //     final result = await authFacade.logout();

  //     // Assert
  //     expect(result, equals(const Right(unit)));
  //   });
  // });
}
