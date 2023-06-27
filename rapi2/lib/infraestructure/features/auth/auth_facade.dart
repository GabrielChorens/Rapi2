import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rapi2/infraestructure/data_transfer_objects/value_objects/user_value_objects_DTOs.dart';
import 'package:rapi2/infraestructure/services/auth_management_service.dart';
import '../../data_transfer_objects/entities/user_dto.dart';
import '../../data_transfer_objects/value_objects/validation_code_DTO.dart';
import '../../network/api/server_responses.dart';
import '../../../domain/entities/user.dart';
import '../../../domain/features/auth/auth_failure.dart';
import '../../../domain/features/auth/i_auth_facade.dart';
import '../../../domain/value_objects/core/validation_code.dart';
import '../../../domain/value_objects/user_value_objects.dart';
import '../../services/storage/user_storage_service.dart';
import '../../network/api/auth_api_client.dart';


/// This class is the implementation of the [IAuthFacade] interface.
/// It meets the requirements of the domain interface and
/// matches the value objects from domain to their primitive types
/// in order to execute the [AuthApiClient] injected instance.
/// It discrimininates between results from the api and
/// return the corresponding success or failure option.

@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  
  final AuthApiClient _authApiClient;
  final UserStorageService _userStorageService;
  final AuthManagementService _authManagementService;
  AuthFacade(this._authApiClient, this._userStorageService, this._authManagementService);

  /// This method is the implementation of the [IAuthFacade.login] method.
  /// It communicates with the [AuthApiClient.login] method and
  /// returns either an [AuthFailure] or a [User] instance created trough
  /// [UserDTO.fromJson] method with the [data] recieved from [AuthApiClient.login].

  @override
  Future<Either<AuthFailure, User>> login({
    required PhoneNumber phoneNumber,
    required Password password,
    FirebaseToken firebaseToken = const FirebaseToken(),
  }) async {
    final (
      phoneNumberDTO,
      passwordDTO,
      firebaseTokenDTO,
    ) = (
      PhoneNumberDTO.fromDomain(phoneNumber),
      PasswordDTO.fromDomain(password),
      FirebaseTokenDTO.fromDomain(firebaseToken),
    );

    final result = await _authApiClient.login(
      phoneNumber: phoneNumberDTO.phoneNumber,
      callCode: phoneNumberDTO.callCode,
      countryCode: phoneNumberDTO.countryCode,
      password: passwordDTO.password,
      firebaseToken: firebaseTokenDTO.firebaseToken,
    );

    return result.fold(
      (failure) {
        if (failure is BadRequest) {
          return left(
            const InvalidPhoneNumberAndPasswordCombination(),
          );
        } else {
          return left(
              ServerError(failureTrace: failure));
        }
      },
      (success) async {
        if (success.data.isEmpty) {
          return left(const ServerError());
        }else{
          final userDto = UserDTO.fromJson(success.data);
          return right(userDto.toDomain());
        }
      },
    );
  }

    
  @override
  Future<void> setUser({required User user}) async {
    final userDto = UserDTO.fromDomain(user);
    await _authManagementService.establishUser(userDto);
  }
  
  @override
  Future<void> storageUser({required User user}) async {
    final userDto = UserDTO.fromDomain(user);
    await _userStorageService.saveUser(userDto);
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
    final (
      fullNameDTO,
      phoneNumberDTO,
      passwordDTO,
      emailDTO,
      firebaseTokenDTO,
    ) = (
      NameDTO.fromDomain(fullName),
      PhoneNumberDTO.fromDomain(phoneNumber),
      PasswordDTO.fromDomain(password),
      email != null ? EmailDTO.fromDomain(email) : null,
      FirebaseTokenDTO.fromDomain(firebaseToken),
    );

    final result = await _authApiClient.signUp(
      firstName: fullNameDTO.firstName,
      lastName: fullNameDTO.lastName,
      phoneNumber: phoneNumberDTO.phoneNumber,
      callCode: phoneNumberDTO.callCode,
      countryCode: phoneNumberDTO.countryCode,
      password: passwordDTO.password,
      email: emailDTO?.email,
      firebaseToken: firebaseTokenDTO.firebaseToken,
    );

    return result.fold(
      (failure) {
        if (failure is BadRequest) {
          return left(const AlreadyRegisteredValue());
        } else {
          return left(
              ServerError(failureTrace: failure));
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
    final emailDTO = EmailDTO.fromDomain(emailAddress);

    final result = await _authApiClient.checkEmailAvailability(
      email: emailDTO.email,
    );

    return result.fold((failure) {
      if (failure is AlreadyRegistered) {
        return left(const AlreadyRegisteredValue());
      } else {
        return left(ServerError(failureTrace: failure));
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
    final phoneNumberDTO = PhoneNumberDTO.fromDomain(phoneNumber);

    final result = await _authApiClient.checkPhoneNumberAvailability(
      phoneNumber: phoneNumberDTO.fullPhoneNumber,
    );

    return result.fold((failure) {
      if (failure is AlreadyRegistered) {
        return left(const AlreadyRegisteredValue());
      } else {
        return left(ServerError(failureTrace: failure));
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
    final phoneNumberDTO = PhoneNumberDTO.fromDomain(phoneNumber);

    final result = await _authApiClient.requestValidationCode(
      phoneNumber: phoneNumberDTO.fullPhoneNumber,
    );

    return result.fold((failure) {
      return left(ServerError(failureTrace: failure));
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
    final (
      phoneNumberDTO,
      validationCodeDTO,
    ) = (
      PhoneNumberDTO.fromDomain(phoneNumber),
      ValidationCodeDTO.fromDomain(validationCode),
    );

    final result = await _authApiClient.checkValidationCode(
      countryCode: phoneNumberDTO.countryCode,
      callCode: phoneNumberDTO.callCode,
      phoneNumber: phoneNumberDTO.phoneNumber,
      validationCode: validationCodeDTO.validationCode,
    );

    return result.fold((failure) {
      if (failure is InvalidValue) {
        return left(const InvalidVerificationCodeAndPhoneNumberCombination());
      } else {
        return left(ServerError(failureTrace: failure));
      }
    }, (_) => right(unit));
  }

}
