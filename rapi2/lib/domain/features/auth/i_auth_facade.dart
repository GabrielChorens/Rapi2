import 'package:dartz/dartz.dart';
import '../../entities/user.dart';
import '../../value_objects/user_value_objects/user_value_objects_barrel.dart';
import '../../value_objects/validation_code.dart';
import './auth_failure.dart';


abstract class IAuthFacade{
  Future<Either<AuthFailure, Unit>> registerNewUser({
    required String name,
    required String lastName,
    required PhoneNumber phoneNumber,
    required Password password,
    required Currencies currency,
    required Email email,
    String profilePictureURL = '',
    FirebaseToken firebaseToken = const FirebaseToken(),
  });
  Future<Either<AuthFailure, User>> signInWithPhoneNumberAndPassword({
    required PhoneNumber phoneNumber,
    required Password password,
    FirebaseToken firebaseToken = const FirebaseToken(),
  });
  Future<Either<AuthFailure, Unit>> sendVerificationCode({
    required PhoneNumber phoneNumber,
  });
  Future<Either<AuthFailure, bool>> checkVerificationCode({
    required PhoneNumber phoneNumber,
    required ValidationCode validationCode,
  });

  Future<Either<AuthFailure, Unit>> logout();
  /*Future<Either<AuthFailure, bool>> checkPhoneNumberIsAlreadyRegistered({
    required PhoneNumber phoneNumber,
  });
  Future<Either<AuthFailure, bool>> checkEmailIsAlreadyRegistered({
    required Email emailAddress,
  });*/
}