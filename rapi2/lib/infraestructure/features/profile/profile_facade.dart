import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rapi2/domain/entities/address.dart';
import 'package:rapi2/domain/entities/user.dart';
import 'package:rapi2/domain/features/profile/i_profile_facade.dart';
import 'package:rapi2/domain/features/profile/profile_failure.dart';
import 'package:rapi2/domain/value_objects/address_value_objects.dart';
import 'package:rapi2/domain/value_objects/user_value_objects.dart';
import 'package:rapi2/infraestructure/data_transfer_objects/entities/address_dto.dart';
import 'package:rapi2/infraestructure/services/storage/image_path_picker.dart';
import 'package:rapi2/infraestructure/features/profile/repositories/address_respository.dart';
import 'package:rapi2/infraestructure/features/profile/repositories/user_profile_repository.dart';

import '../../data_transfer_objects/value_objects/user_value_objects_DTOs.dart';

@LazySingleton(as: IProfileFacade)
class ProfileFacade implements IProfileFacade {
  final AddressRepository _addressRepository;
  final UserProfileRepository _userProfileRepository;
  final ImagePathPicker _imagePathPicker;

  ProfileFacade(this._addressRepository, this._userProfileRepository,
      this._imagePathPicker);

  //Address

  @override
  Future<Either<ProfileFailure, Unit>> createAddress({
    required AddressValueObject address,
  }) {
    final addressValueObjectDTO = AddressValueObjectDTO.fromDomain(address);
    return _addressRepository.createAddress(address: addressValueObjectDTO);
  }

  @override
  Future<Either<ProfileFailure, KtList<Address>>> getAddresses() async {
    final result = await _addressRepository.getAddresses();
    return result.fold((profileFailure) => left(profileFailure), (addressDTOs) {
      final addresses = addressDTOs.map((addressDTO) => addressDTO.toDomain());
      return right(addresses);
    });
  }

  @override
  Future<Either<ProfileFailure, Unit>> updateAddress({
    required Address address,
  }) {
    final addressDTO = AddressDTO.fromDomain(address);
    return _addressRepository.updateAddress(address: addressDTO);
  }

  @override
  Future<Either<ProfileFailure, Unit>> deleteAddress({
    required Address address,
  }) {
    final AddressDTO addressDTO = AddressDTO.fromDomain(address);
    return _addressRepository.deleteAddress(address: addressDTO);
  }

  //User

  @override
  Future<Either<ProfileFailure, User>> getUser() async {
    final userDTO = await _userProfileRepository.getUser();

    return userDTO.fold((profileFailure) => left(profileFailure), (userDTO) {
      final user = userDTO.toDomain();
      return right(user);
    });
  }

  @override
  Future<Either<ProfileFailure, Unit>> updateName({
    required Name name,
  }) {
    final nameDTO = NameDTO.fromDomain(name);
    return _userProfileRepository.updateName(name: nameDTO);
  }

  @override
  Future<Either<ProfileFailure, Unit>> updatePhoneNumber({
    required PhoneNumber phoneNumber,
  }) {
    final phoneNumberDTO = PhoneNumberDTO.fromDomain(phoneNumber);
    return _userProfileRepository.updatePhoneNumber(
        phoneNumber: phoneNumberDTO);
  }

  @override
  Future<Either<ProfileFailure, Unit>> updatePassword({
    required Password password,
    required Password newPassword,
  }) {
    final passwordDTO = PasswordDTO.fromDomain(password);
    final newPasswordDTO = PasswordDTO.fromDomain(newPassword);
    return _userProfileRepository.updatePassword(
        password: passwordDTO, newPassword: newPasswordDTO);
  }

  @override
  Future<Either<ProfileFailure, Unit>> updateEmail({
    required Email email,
  }) {
    final emailDTO = EmailDTO.fromDomain(email);
    return _userProfileRepository.updateEmail(email: emailDTO);
  }

  @override
  Future<Either<ProfileFailure, Unit>> updateCurrency({
    required Currencies currency,
  }) {
    final currencyDTO = CurrenciesDTO.fromDomain(currency);
    return _userProfileRepository.updateCurrency(currency: currencyDTO);
  }

  @override
  Future<Either<ProfileFailure, String>> pickImageFromCamera() async {
    final imagePathResult = await _imagePathPicker.pickImageFromCamera();
    return imagePathResult.fold(
        (failure) => left(ImageSelectionFailure(failureTrace: failure)),
        (string) => right(string));
  }

  @override
  Future<Either<ProfileFailure, String>> pickImageFromGallery() async {
        final imagePathResult = await _imagePathPicker.pickImageFromGallery();
    return imagePathResult.fold(
        (failure) => left(ImageSelectionFailure(failureTrace: failure)),
        (string) => right(string));
  }

  @override
  Future<Either<ProfileFailure, Unit>> updateProfilePicture({
    required String profilePicturePath,
  }) {
    return _userProfileRepository.updateProfilePicture(
        profilePicturePath: profilePicturePath);
  }

  @override
  Future<Either<ProfileFailure, Unit>> logout() {
    return _userProfileRepository.logout();
  }
}
