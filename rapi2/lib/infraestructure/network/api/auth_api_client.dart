import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'server_responses.dart';
import '../dio_provider.dart';

@lazySingleton
class AuthApiClient {
  final DioProvider _dioProvider;

  ///Api client for the authentication endpoints
  ///Injectable with [DioProvider].

  AuthApiClient(this._dioProvider);

  ///Login endpoint. It requires String parameters [phoneNumber], [callCode], [countryCode] and [password].
  ///If the login is successful, it returns a [ServerSuccess] with the response data.
  ///If the login fails, it returns an [ApiConnectionFailure].
  ///It sets the auth token in the [DioProvider] if the login is successful.

  Future<Either<ApiConnectionFailure, ServerSuccess>> login({
    required String phoneNumber,
    required String callCode,
    required String countryCode,
    required String password,
    required String firebaseToken,
  }) async {
    try {
      Response response = await _dioProvider.dio.post(
        '/auth/login',
        data: {
          'phone_number': phoneNumber,
          'call_code': callCode,
          'country_code': countryCode,
          'password': password,
          'firebase_token': firebaseToken,
        },
      );
      Map<String, dynamic> responseData = response.data;
      return right(
        ServerSuccess(data: responseData),
      );
    } on DioException catch (e) {
      return left(
        ApiConnectionFailure.fromDioException(e),
      );
    }
  }

  ///Sign up endpoint.
  ///It requires [firstName], [lastName], [phoneNumber], [callCode], [countryCode], [email] and [password].
  ///If the sign up is successful, it returns a [ServerSuccess].
  ///If the sign up fails, it returns an [ApiConnectionFailure].

  Future<Either<ApiConnectionFailure, ServerSuccess>> signUp({
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String callCode,
    required String countryCode,
    required String password,
    String? email,
    required String firebaseToken,
  }) async {
    try {
      await _dioProvider.dio.post(
        '/auth/sign-up',
        data: {
          'name': firstName,
          'last_name': lastName,
          'phone_number': phoneNumber,
          'call_code': callCode,
          'country_code': countryCode,
          'password': password,
          'email': email,
          'firebase_token': firebaseToken,
        },
      );
      return right(
        const ServerSuccess(),
      );
    } on DioException catch (e) {
      return left(
        ApiConnectionFailure.fromDioException(e),
      );
    }
  }

  ///Check values Endpoint. It requires String [email].
  ///Returns a [ServerSuccess] if the email is not registered.
  ///Throws an [ApiConnectionFailure.alreadyRegisteredValue] if the email is already registered.
  ///Throws an [ApiConnectionFailure] if the request fails.

  Future<Either<ApiConnectionFailure, ServerSuccess>> checkEmailAvailability({
    required String email,
  }) async {
    try {
      Response response = await _dioProvider.dio.post(
        '/auth/check-values',
        data: {
          'email': email,
        },
      );
      if (response.data['email'] == false) {
        return right(
          const ServerSuccess(),
        );
      } else {
        return left(
          const AlreadyRegistered(),
        );
      }
    } on DioException catch (e) {
      return left(
        ApiConnectionFailure.fromDioException(e),
      );
    }
  }

  ///Check values Endpoint. It requires a String [phoneNumber].
  ///Returns a [ServerSuccess] if the phone number is not registered.
  ///Throws an [ApiConnectionFailure.alreadyRegisteredValue] if the phone number is already registered.
  ///Throws an [ApiConnectionFailure] if the request fails.

  Future<Either<ApiConnectionFailure, ServerSuccess>>
      checkPhoneNumberAvailability({
    required String phoneNumber,
  }) async {
    try {
      Response response = await _dioProvider.dio.post(
        '/auth/check-values',
        data: {
          'phone_number': phoneNumber,
        },
      );
      if (response.data['phone_number'] == false) {
        return right(
          const ServerSuccess(),
        );
      } else {
        return left(
          const AlreadyRegistered(),
        );
      }
    } on DioException catch (e) {
      return left(
        ApiConnectionFailure.fromDioException(e),
      );
    }
  }

  ///Request validation code endpoint. It requires a String [phoneNumber].
  ///IMPORTANT NOTE: This endpoints works with the full phone Number meaning:
  ///It sends a validation code to the phone number.
  ///Returns a [ServerSuccess] if the request was successful.
  ///Throws an [ApiConnectionFailure] if the request was unsuccessful.

  Future<Either<ApiConnectionFailure, ServerSuccess>> requestValidationCode({
    required String phoneNumber,
  }) async {
    try {
      await _dioProvider.dio.post(
        '/auth/request-validation-code',
        data: {
          'phone_number': phoneNumber,
        },
      );
      return right(
        const ServerSuccess(),
      );
    } on DioException catch (e) {
      return left(
        ApiConnectionFailure.fromDioException(e),
      );
    }
  }

  ///Check validation code endpoint. It requires a String [phoneNumber], [callCode] and [validationCode].
  ///It checks if the validation code is correct.
  ///Returns a [ServerSuccess] if the validation code is correct.
  ///Throws an [ApiConnectionFailure.invalidValue] if the validation code is incorrect.
  ///Throws an [ApiConnectionFailure] if the request was unsuccessful.

  Future<Either<ApiConnectionFailure, ServerSuccess>> checkValidationCode({
    required String countryCode,
    required String phoneNumber,
    required String callCode,
    required String validationCode,
  }) async {
    try {
      Response response = await _dioProvider.dio.post(
        '/auth/check-validation-code',
        data: {
          'country_code': countryCode,
          'phone_number': phoneNumber,
          'call_code': callCode,
          'validation_code': validationCode,
        },
      );
      if (response.data == 'true') {
        return right(
          const ServerSuccess(),
        );
      } else {
        return left(
          const InvalidValue(),
        );
      }
    } on DioException catch (e) {
      return left(
        ApiConnectionFailure.fromDioException(e),
      );
    }
  }
}
