import 'package:dartz/dartz.dart';
import '../../../domain/entities/user.dart';
import '../../../domain/features/auth/auth_failure.dart';
import '../../../domain/features/auth/i_auth_facade.dart';
import '../../../domain/value_objects/core/validation_code.dart';
import '../../../domain/value_objects/user_value_objects.dart';
import '../../device/services/storage/user_storage_service.dart';
import '../../network/api/auth_api_client.dart';

import '../../data_transfer_objects/user_dto.dart';

/// This class is the implementation of the [IAuthFacade] interface.
/// It meets the requirements of the domain interface and
/// matches the value objects from domain to their primitive types
/// in order to execute the [AuthApiClient] injected instance.
/// It discrimininates between results from the api and
/// return the corresponding success or failure option.

class AuthFacade implements IAuthFacade {
  final AuthApiClient _authApiClient;
  final UserStorageService _userStorageService;

  AuthFacade(this._authApiClient, this._userStorageService);

  /// This method is the implementation of the [IAuthFacade.login] method.
  /// It communicates with the [AuthApiClient.login] method and
  /// returns either an [AuthFailure] or a [User] instance created trough
  /// [UserDTO.fromJson] method with the [data] recieved from [AuthApiClient.login].

  @override
  Future<Either<AuthFailure, Unit>> login({
    required PhoneNumber phoneNumber,
    required Password password,
    FirebaseToken firebaseToken = const FirebaseToken(),
  }) async {
    final String phoneNumberStr = phoneNumber.phoneNumber.getOrCrash();
    final String callCodeStr = phoneNumber.callCode.getOrCrash();
    final String countryCodeStr = phoneNumber.countryCode;
    final String passwordStr = password.getOrCrash();
    final String firebaseTokenStr = firebaseToken.firebaseToken;

    final result = await _authApiClient.login(
      phoneNumber: phoneNumberStr,
      callCode: callCodeStr,
      countryCode: countryCodeStr,
      password: passwordStr,
      firebaseToken: firebaseTokenStr,
    );

    return result.fold(
      (failure) {
        final String failureType = failure.typeDescription;
        if (failureType == 'bad_request') {
          return left(
            const AuthFailure.invalidPhoneNumberAndPasswordCombination(),
          );
        } else {
          return left(AuthFailure.serverError(failureDescription: failureType));
        }
      },
      (success) async {
        final userDto = UserDTO.fromJson(success.data);
        await _userStorageService.saveUser(userDto);
        return right(unit);
      },
    );
  }

  /// This method is the implementation of the [IAuthFacade.signUp] method.
  /// It communicates with the [AuthApiClient.signUp] method and
  /// returns either an [AuthFailure] or a [Unit] (enhanced void from dartz).
  /// It also discriminates between the different types of failures and
  /// returns the corresponding [AuthFailure].

  @override
  Future<Either<AuthFailure, Unit>> signUp({
    required Name fullName,
    required PhoneNumber phoneNumber,
    required Password password,
    Email? email,
    FirebaseToken firebaseToken = const FirebaseToken(),
  }) async {
    final String firstNameStr = fullName.firstName;
    final String lastNameStr = fullName.lastName;
    final String phoneNumberStr = phoneNumber.phoneNumber.getOrCrash();
    final String callCodeStr = phoneNumber.callCode.getOrCrash();
    final String countryCodeStr = phoneNumber.countryCode;
    final String passwordStr = password.getOrCrash();
    final String? emailStr = email?.getOrCrash();
    final String firebaseTokenStr = firebaseToken.firebaseToken;

    final result = await _authApiClient.signUp(
      firstName: firstNameStr,
      lastName: lastNameStr,
      phoneNumber: phoneNumberStr,
      callCode: callCodeStr,
      countryCode: countryCodeStr,
      password: passwordStr,
      email: emailStr,
      firebaseToken: firebaseTokenStr,
    );

    return result.fold(
      (failure) {
        final String failureType = failure.typeDescription;
        if (failureType == 'bad_request') {
          return left(const AuthFailure.alreadyRegisteredValue());
        } else {
          return left(AuthFailure.serverError(failureDescription: failureType));
        }
      },
      (_) => right(unit),
    );
  }

  /// This method is the implementation of the [IAuthFacade.checkEmailAvailability] method.
  /// It returns an [AuthFailure.alreadyRegisteredValue] if the email is already registered
  /// or an [AuthFailure.serverError] in the case of any other error that contains the error type in itself.
  /// In case of success it returns a [Unit] (enhanced void from dartz).

  @override
  Future<Either<AuthFailure, Unit>> checkEmailAvailability({
    required Email emailAddress,
  }) async {
    final String emailStr = emailAddress.getOrCrash();

    final result = await _authApiClient.checkEmailAvailability(
      email: emailStr,
    );

    return result.fold((failure) {
      final String failureType = failure.typeDescription;
      if (failureType == 'already_registered_value') {
        return left(const AuthFailure.alreadyRegisteredValue());
      } else {
        return left(AuthFailure.serverError(failureDescription: failureType));
      }
    }, (_) => right(unit));
  }

  /// This method is the implementation of the [IAuthFacade.checkPhoneNumberAvailability] method.
  /// It returns an [AuthFailure.alreadyRegisteredValue] if the phone number is already registered
  /// or an [AuthFailure.serverError] in the case of any other error that contains the error type in itself.
  /// In case of success it returns a [Unit] (enhanced void from dartz).

  @override
  Future<Either<AuthFailure, Unit>> checkPhoneNumberAvailability({
    required PhoneNumber phoneNumber,
  }) async {
    final String phoneNumberStr = phoneNumber.getOrCrash();

    final result = await _authApiClient.checkPhoneNumberAvailability(
      phoneNumber: phoneNumberStr,
    );

    return result.fold((failure) {
      final String failureType = failure.typeDescription;
      if (failureType == 'already_registered_value') {
        return left(const AuthFailure.alreadyRegisteredValue());
      } else {
        return left(AuthFailure.serverError(failureDescription: failureType));
      }
    }, (_) => right(unit));
  }

  /// This method is the implementation of the [IAuthFacade.resendVerificationCode] method.
  /// It communicates with the [AuthApiClient.requestValidationCode] in order to resend the verification code.
  /// It recieves a [PhoneNumber] and returns an [AuthFailure.serverError] in the case of any error.
  /// In case of success it returns a [Unit] (enhanced void from dartz).

  @override
  Future<Either<AuthFailure, Unit>> resendVerificationCode({
    required PhoneNumber phoneNumber,
  }) async {
    final String phoneNumberStr = phoneNumber.getOrCrash();

    final result = await _authApiClient.requestValidationCode(
      phoneNumber: phoneNumberStr,
    );

    return result.fold((failure) {
      final String failureType = failure.typeDescription;
      return left(AuthFailure.serverError(failureDescription: failureType));
    }, (_) => right(unit));
  }

  /// This method is the implementation of the [IAuthFacade.checkVerificationCode] method.
  /// It communicates with the [AuthApiClient.checkValidationCode] in order to check the verification code.
  /// It recieves a [PhoneNumber] and a [ValidationCode] and returns an [AuthFailure.invalidVerificationCodeAndPhoneNumberCombination]
  /// in case the Phone Number and the Validation Code don't match or an [AuthFailure.serverError] in the case of any other error.
  /// In case of success it returns a [Unit] (enhanced void from dartz).
  
  @override
  Future<Either<AuthFailure, Unit>> checkVerificationCode({
    required PhoneNumber phoneNumber,
    required ValidationCode validationCode,
  }) async {
    final String phoneNumberStr = phoneNumber.phoneNumber.getOrCrash();
    final String callCodeStr = phoneNumber.callCode.getOrCrash();
    final String validationCodeStr = validationCode.getOrCrash();

    final result = await _authApiClient.checkValidationCode(
      phoneNumber: phoneNumberStr,
      callCode: callCodeStr,
      validationCode: validationCodeStr,
    );

    return result.fold((failure) {
      final String failureType = failure.typeDescription;
      if (failureType == 'invalid_value') {
        return left(const AuthFailure
            .invalidVerificationCodeAndPhoneNumberCombination());
      } else {
        return left(AuthFailure.serverError(failureDescription: failureType));
      }
    }, (_) => right(unit));
  }


  /// This method is the implementation of the [IAuthFacade.logout] method.
  /// It communicates with the [AuthApiClient.logout] method and based on the already stored token
  /// it logs out the user. It returns an [AuthFailure.serverError] in the case of any error.
  
  @override
  Future<Either<AuthFailure, Unit>> logout() async {

    final result = await _authApiClient.logout();

    return result.fold((failure) {
      final String failureType = failure.typeDescription;
      return left(AuthFailure.serverError(failureDescription: failureType));
    }, (_) => right(unit));

  }
  
}
