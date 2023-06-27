import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rapi2/infraestructure/data_transfer_objects/value_objects/user_value_objects_DTOs.dart';
import 'package:rapi2/infraestructure/services/auth_management_service.dart';
import 'package:rapi2/infraestructure/services/storage/user_storage_service.dart';
import 'package:rapi2/infraestructure/network/api/profile_api_client.dart';
import '../../../../domain/features/profile/profile_failure.dart';
import '../../../data_transfer_objects/entities/user_dto.dart';
import '../../../services/user_injection_service.dart';

@lazySingleton
final class UserProfileRepository {
  final ProfileApiClient _profileApiClient;
  final UserStorageService _userStorageService; 
  final GlobalUserDTOGetterOption _globalUserDTOGetterOption;
  final AuthDependencyInjectionService _authDependencyInjectionService;
  final AuthManagementService _authManagementService;

  UserProfileRepository(this._profileApiClient, this._userStorageService,
      this._globalUserDTOGetterOption, this._authDependencyInjectionService, this._authManagementService);

  Future<Either<ProfileFailure, UserDTO>> getUser() async {
    final dependencyInjectionResult =
        await _globalUserDTOGetterOption.currentUser;
    return dependencyInjectionResult.fold(
        () => _getUserFromStorage(), (user) => right(user));
  }

  Future<Either<ProfileFailure, UserDTO>> _getUserFromStorage() async {
    final result = await _userStorageService.getUser();
    return result.fold(() => left(const NoUserFound()), (user) => right(user));
  }

  // Future<Either<ApiConnectionFailure, UserDTO>> _getUserFromAPI() async {
  //   final result = await _profileApiClient.getUser();
  //   return result.fold(
  //     (failure) => Left(failure),
  //     (success) => Right(_parseMeEndpointAnswerToUserDTO(success.data)),
  //   );
  // }

  // ///This is needed because the API returns a different object missing the currency field for the me endpoint
  // UserDTO _parseMeEndpointAnswerToUserDTO(Map<String, dynamic> json) {
  //   return UserDTO(
  //     name: json['name'],
  //     lastName: json['last_name'],
  //     phoneNumber: json['phone_number'],
  //     callCode: json['call_code'],
  //     countryCode: json['country_code'],
  //     currency: null,
  //     email: json['user']['email'],
  //     profilePictureURL: json['profile_picture'],
  //   );
  // }

  // ///This is needed because the API returns a different object missing the currency field for the me endpoint
  // bool _customEqualityBetweenMeDTOandUserDTO(UserDTO meDTO, UserDTO userDTO) {
  //   return meDTO.name == userDTO.name &&
  //       meDTO.lastName == userDTO.lastName &&
  //       meDTO.phoneNumber == userDTO.phoneNumber &&
  //       meDTO.callCode == userDTO.callCode &&
  //       meDTO.countryCode == userDTO.countryCode &&
  //       meDTO.email == userDTO.email &&
  //       meDTO.profilePictureURL == userDTO.profilePictureURL;
  // }

  Future<Either<ProfileFailure, Unit>> _updateFieldsOnStoragedUserAndGlobalDepency({
    String? name,
    String? lastName,
    String? phoneNumber,
    String? callCode,
    String? countryCode,
    String? email,
    String? authToken,
    String? currency,
    String? profilePictureURL,
  }) async {
    final result = await _userStorageService.getUser();

    return result.fold(
      () => left(const NoUserFound()),
      (user) async {
        final UserDTO updatedUser = user.copyWith(
          name: name ?? user.name,
          lastName: lastName ?? user.lastName,
          phoneNumber: phoneNumber ?? user.phoneNumber,
          callCode: callCode ?? user.callCode,
          countryCode: countryCode ?? user.countryCode,
          email: email ?? user.email,
          authToken: authToken ?? user.authToken,
          currency: currency ?? user.currency,
          profilePictureURL: profilePictureURL ?? user.profilePictureURL,
        );

        await _userStorageService.saveUser(updatedUser);
        await _authDependencyInjectionService.setUser(updatedUser);
        return right(unit);
      },
    );
  }

  Future<Either<ProfileFailure, Unit>> updateCurrency({
    required CurrenciesDTO currency,
  }) async {
    final storageResult = await _updateFieldsOnStoragedUserAndGlobalDepency(
      currency: currency.currency,
    );

    return storageResult.fold(
      (failure) => left(failure),
      (unit) async {
        final serverResult = await _profileApiClient.updateCurrency(
          currency: currency.currency,
        );

        return serverResult.fold(
          (apiConnectionFailure) => left(ServerError(
            failureTrace: apiConnectionFailure,
          )),
          (success) => right(unit),
        );
      },
    );
  }

  Future<Either<ProfileFailure, Unit>> updateEmail({
    required EmailDTO email,
  }) async {
    final storageResult = await _updateFieldsOnStoragedUserAndGlobalDepency(
      email: email.email,
    );

    return storageResult.fold(
      (failure) => left(failure),
      (unit) async {
        final serverResult = await _profileApiClient.updateEmail(
          email: email.email,
        );

        return serverResult.fold(
          (apiConnectionFailure) => left(ServerError(
            failureTrace: apiConnectionFailure,
          )),
          (success) => right(unit),
        );
      },
    );
  }

  Future<Either<ProfileFailure, Unit>> updateName({
    required NameDTO name,
  }) async {
    final storageResult = await _updateFieldsOnStoragedUserAndGlobalDepency(
      name: name.firstName,
      lastName: name.lastName,
    );

    return storageResult.fold(
      (failure) => left(failure),
      (unit) async {
        final serverResult = await _profileApiClient.updateName(
          name: name.firstName,
          lastName: name.lastName,
        );

        return serverResult.fold(
          (apiConnectionFailure) => left(ServerError(
            failureTrace: apiConnectionFailure,
          )),
          (success) => right(unit),
        );
      },
    );
  }

  Future<Either<ProfileFailure, Unit>> updatePassword({
    required PasswordDTO password,
    required PasswordDTO newPassword,
  }) async {
    final serverResult = await _profileApiClient.updatePassword(
      currentPassword: password.password,
      newPassword: newPassword.password,
    );

    return serverResult.fold(
      (apiConnectionFailure) => left(ServerError(
        failureTrace: apiConnectionFailure,
      )),
      (success) => right(unit),
    );
  }

  Future<Either<ProfileFailure, Unit>> updatePhoneNumber({
    required PhoneNumberDTO phoneNumber,
  }) async {
    final storageResult = await _updateFieldsOnStoragedUserAndGlobalDepency(
        phoneNumber: phoneNumber.phoneNumber,
        callCode: phoneNumber.callCode,
        countryCode: phoneNumber.countryCode);

    return storageResult.fold(
      (failure) => left(failure),
      (unit) async {
        final serverResult = await _profileApiClient.updatePhoneNumber(
          phoneNumber: phoneNumber.phoneNumber,
          callCode: phoneNumber.callCode,
          countryCode: phoneNumber.countryCode,
        );

        return serverResult.fold(
          (apiConnectionFailure) => left(ServerError(
            failureTrace: apiConnectionFailure,
          )),
          (success) => right(unit),
        );
      },
    );
  }

  Future<Either<ProfileFailure, Unit>> updateProfilePicture(
      {required String profilePicturePath}) async {
    final storageResult = await _updateFieldsOnStoragedUserAndGlobalDepency(
      profilePictureURL: profilePicturePath,
    );

    return storageResult.fold(
      (failure) => left(failure),
      (unit) async {
        final serverResult = await _profileApiClient.updateProfilePicture(
          profilePicturePath: profilePicturePath,
        );

        return serverResult.fold(
          (apiConnectionFailure) => left(ServerError(
            failureTrace: apiConnectionFailure,
          )),
          (success) => right(unit),
        );
      },
    );
  }

  Future<Either<ProfileFailure, Unit>> logout() async {
    await _userStorageService.deleteUser();
    await _authManagementService.clearUser();

    return _profileApiClient.logout().then(
          (result) => result.fold(
            (apiConnectionFailure) => left(ServerError(
              failureTrace: apiConnectionFailure,
            )),
            (success) => right(unit),
          ),
        );
  }
}
