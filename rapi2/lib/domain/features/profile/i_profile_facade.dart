import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'profile_failure.dart';

import '../../entities/address.dart';
import '../../entities/user.dart';
import '../../value_objects/address_value_objects.dart';
import '../../value_objects/user_value_objects.dart';

abstract class IProfileFacade {

  //Address

  Future<Either<ProfileFailure, Unit>> createAddress({
      required AddressValueObject address,
  });

  Future<Either<ProfileFailure, KtList<Address>>> getAddresses();

  Future<Either<ProfileFailure, Unit>> updateAddress({
      required Address address,
  });

  Future<Either<ProfileFailure, Unit>> deleteAddress({
      required Address address,
  });

  //User

  Future<Either<ProfileFailure, User>> getUser();


  Future<Either<ProfileFailure, Unit>> updateCurrency({
      required Currencies currency,
  });

  Future<Either<ProfileFailure, Unit>> updateName({
      required Name name,
  });

  Future<Either<ProfileFailure, Unit>> updateEmail({
      required Email email,
  });

  Future<Either<ProfileFailure, Unit>> updatePassword({
      required Password password,
      required Password newPassword,
  });

  Future<Either<ProfileFailure, Unit>> updatePhoneNumber({
      required PhoneNumber phoneNumber,
  });

  Future<Either<ProfileFailure, String>> pickImageFromCamera();

  Future<Either<ProfileFailure, String>> pickImageFromGallery();

  Future<Either<ProfileFailure, Unit>> updateProfilePicture({
      required String profilePicturePath,
  });

  Future<Either<ProfileFailure, Unit>> logout();


}