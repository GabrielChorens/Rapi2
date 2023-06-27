import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rapi2/domain/entities/user.dart';
import 'package:rapi2/domain/features/auth/i_auth_facade.dart';
import 'package:rapi2/domain/features/splash_screen/splash_screen_failure.dart';
import '../../../domain/features/splash_screen/i_splash_screen_facade.dart';
import '../../services/storage/user_storage_service.dart';

@LazySingleton(as: ISplashScreenFacade)
class SplashScreenFacade implements ISplashScreenFacade {
  final UserStorageService _userStorageService;
  final IAuthFacade _iAuthFacade;

  SplashScreenFacade(this._userStorageService,
      this._iAuthFacade);

  @override
  Future<Either<SplashScreenFailure, User>> getUserIfItsStoraged() async {
    final result = await _userStorageService.getUser();
    return result.fold(
        () => left(const UserNotFound()),
        (user) => right(user.toDomain()));
  }

  @override
  Future<void> setGlobalUser({
    required User user
  }) async {
     await _iAuthFacade.setUser(user: user);
  }
}
