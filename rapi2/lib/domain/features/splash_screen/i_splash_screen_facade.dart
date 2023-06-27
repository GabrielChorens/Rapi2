import 'package:dartz/dartz.dart';

import '../../entities/user.dart';
import 'splash_screen_failure.dart';

abstract interface class ISplashScreenFacade {
  Future<Either<SplashScreenFailure, User>> getUserIfItsStoraged();
  Future<void> setGlobalUser({
    required User user,
  });
}
