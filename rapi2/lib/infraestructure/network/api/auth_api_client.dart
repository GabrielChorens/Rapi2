import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:rapi2/infraestructure/network/api/server_responses.dart';

import '../../../domain/value_objects/user_value_objects.dart';
import '../../../domain/value_objects/core/validation_code.dart';
import '../dio_provider.dart';

class AuthApiClient {
  final DioProvider _dioProvider;

  ///Api client for the authentication endpoints
  ///Injectable with [DioProvider].
  
  AuthApiClient(this._dioProvider);


  ///Login endpoint. It requires a [PhoneNumber] and a [Password].
  ///It also accepts an optional [FirebaseToken].
  ///If the login is successful, it returns a [ServerSuccess] with the response data.
  ///If the login fails, it returns an [ApiConnectionFailure].
  ///It sets the auth token in the [DioProvider] if the login is successful.
  
  Future<Either<ApiConnectionFailure, ServerSuccess>> login({
    required PhoneNumber phoneNumber,
    required Password password,
    FirebaseToken firebaseToken = const FirebaseToken(),
  }) async {
    final dio = _dioProvider.dio;
    final phoneNumberStr = phoneNumber.phoneNumber.getOrCrash();
    final callCodeStr = phoneNumber.callCode.getOrCrash();
    final countryCodeStr = phoneNumber.countryCode;
    final passwordStr = password.getOrCrash();
    final firebaseTokenStr = firebaseToken.firebaseToken;
    try {
      Response response = await dio.post(
        '/auth/login',
        data: {
          'phone_number': phoneNumberStr,
          'call_code': callCodeStr,
          'country_code': countryCodeStr,
          'password': passwordStr,
          'firebase_token': firebaseTokenStr,
        },
      );
      Map<String, dynamic> responseData = response.data;
      final String? authToken = responseData['auth_token'];
      if(authToken != null) _dioProvider.setAuthToken(authToken);
      return right(
        ServerSuccess(data: responseData),
      );
    } on DioError catch (e) {
      return left(
        ApiConnectionFailure.fromDioError(e),
      );
    }
  }

  ///Sign up endpoint. It requires a [Name], [PhoneNumber] and a [Password].
  ///It also accepts an optional [Email] and a [FirebaseToken].
  ///If the sign up is successful, it returns a [ServerSuccess].
  ///If the sign up fails, it returns an [ApiConnectionFailure].
  
  Future<Either<ApiConnectionFailure, ServerSuccess>> signUp({
    required Name name,
    required PhoneNumber phoneNumber,
    required Password password,
    Email? email,
    FirebaseToken firebaseToken = const FirebaseToken(),
  }) async {
    final dio = _dioProvider.dio;
    final firstNameStr = name.firstName;
    final lastNameStr = name.lastName;
    final phoneNumberStr = phoneNumber.phoneNumber.getOrCrash();
    final callCodeStr = phoneNumber.callCode.getOrCrash();
    final countryCodeStr = phoneNumber.countryCode;
    final passwordStr = password.getOrCrash();
    final emailStr = email?.getOrCrash();
    final firebaseTokenStr = firebaseToken.firebaseToken;
    try {
      await dio.post(
        '/auth/sign-up',
        data: {
          'name': firstNameStr,
          'last_name': lastNameStr,
          'phone_number': phoneNumberStr,
          'call_code': callCodeStr,
          'country_code': countryCodeStr,
          'password': passwordStr,
          'email': emailStr,
          'firebase_token': firebaseTokenStr,
        },
      );
      return right(
        const ServerSuccess(),
      );
    } on DioError catch (e) {
      return left(
        ApiConnectionFailure.fromDioError(e),
      );
    }
  }

  ///Check values Endpoint. It requires an [Email].
  ///Returns a [ServerSuccess] if the email is not registered.
  ///Throws an [ApiConnectionFailure.alreadyRegisteredValue] if the email is already registered.
  ///Throws an [ApiConnectionFailure] if the request fails.
  
  Future<Either<ApiConnectionFailure, ServerSuccess>>
      checkEmailAvailability({
    required Email email,
  }) async {
    final dio = _dioProvider.dio;
    final emailStr = email.getOrCrash();
    try {
      Response response = await dio.post(
        '/auth/check-values',
        data: {
          'email': emailStr,
        },
      );
      if (response.data['email'] == false) {
        return right(
          const ServerSuccess(),
        );
      } else {
        return left(
          const ApiConnectionFailure.alreadyRegisteredValue(),
        );
      }
    } on DioError catch (e) {
      return left(
        ApiConnectionFailure.fromDioError(e),
      );
    }
  }
  
  ///Check values Endpoint. It requires a [PhoneNumber].
  ///Returns a [ServerSuccess] if the phone number is not registered.
  ///Throws an [ApiConnectionFailure.alreadyRegisteredValue] if the phone number is already registered.
  ///Throws an [ApiConnectionFailure] if the request fails.
  
  Future<Either<ApiConnectionFailure, ServerSuccess>>
      checkPhoneNUmberAlreadyRegistered({
    required PhoneNumber phoneNumber,
  }) async {
    final dio = _dioProvider.dio;
    final phoneNumberStr = phoneNumber.getOrCrash();
    try {
      Response response = await dio.post(
        '/auth/check-values',
        data: {
          'phone_number': phoneNumberStr,
        },
      );
      if (response.data['phone_number'] == false) {
        return right(
          const ServerSuccess(),
        );
      } else {
        return left(
          const ApiConnectionFailure.alreadyRegisteredValue(),
        );
      }
    } on DioError catch (e) {
      return left(
        ApiConnectionFailure.fromDioError(e),
      );
    }
  }

  ///Request validation code endpoint. It requires a [PhoneNumber].
  ///It sends a validation code to the phone number.
  ///Returns a [ServerSuccess] if the request was successful.
  ///Throws an [ApiConnectionFailure] if the request was unsuccessful.
  
  Future<Either<ApiConnectionFailure, ServerSuccess>> requestValidationCode({
    required PhoneNumber phoneNumber,
  }) async {
    final dio = _dioProvider.dio;
    final phoneNumberStr = phoneNumber.getOrCrash();
    try {
      await dio.post(
        '/auth/request-validation-code',
        data: {
          'phone_number': phoneNumberStr,
        },
      );
      return right(
        const ServerSuccess(),
      );
    } on DioError catch (e) {
      return left(
        ApiConnectionFailure.fromDioError(e),
      );
    }
  }
  
  ///Check validation code endpoint. It requires a [PhoneNumber] and a [ValidationCode].
  ///It checks if the validation code is correct.
  ///Returns a [ServerSuccess] if the validation code is correct.
  ///Throws an [ApiConnectionFailure.invalidValue] if the validation code is incorrect.
  ///Throws an [ApiConnectionFailure] if the request was unsuccessful.
  
  Future<Either<ApiConnectionFailure, ServerSuccess>> chekValidationCode({
    required PhoneNumber phoneNumber,
    required ValidationCode validationCode,
  }) async {
    final dio = _dioProvider.dio;
    final callCodeStr = phoneNumber.callCode.getOrCrash();
    final phoneNumberStr = phoneNumber.phoneNumber.getOrCrash();
    final validationCodeStr = validationCode.getOrCrash();
    try {
      Response response = await dio.post(
        '/auth/check-validation-code',
        data: {
          'phone_number': phoneNumberStr,
          'call_code': callCodeStr,
          'validation_code': validationCodeStr,
        },
      );
      if(response.data == true){
        return right(
          const ServerSuccess(),
        );
        }
      else {
        return left(
          const ApiConnectionFailure.invalidValue(),
        );
      }
    } on DioError catch (e) {
      return left(
        ApiConnectionFailure.fromDioError(e),
      );
    }
  }
}
