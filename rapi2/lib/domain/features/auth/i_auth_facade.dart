import 'package:dartz/dartz.dart';

import '../../entities/user.dart';
import '../../value_objects/user_value_objects.dart';
import '../../value_objects/core/validation_code.dart';
import 'auth_failure.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> signUp({
    required Name fullName,
    required PhoneNumber phoneNumber,
    required Password password,
    required Email email,
    FirebaseToken firebaseToken = const FirebaseToken(),
  });

  Future<Either<AuthFailure, User>> login({
    required PhoneNumber phoneNumber,
    required Password password,
    FirebaseToken firebaseToken = const FirebaseToken(),
  });

  Future<Either<AuthFailure, bool>> checkPhoneNumberIsAlreadyRegistered({
    required PhoneNumber phoneNumber,
  });

  Future<Either<AuthFailure, bool>> checkEmailIsAlreadyRegistered({
    required Email emailAddress,
  });

  Future<Either<AuthFailure, Unit>> resendVerificationCode({
    required PhoneNumber phoneNumber,
  });
  Future<Either<AuthFailure, bool>> checkVerificationCode({
    required PhoneNumber phoneNumber,
    required ValidationCode validationCode,
  });

  Future<Either<AuthFailure, Unit>> logout();
}
