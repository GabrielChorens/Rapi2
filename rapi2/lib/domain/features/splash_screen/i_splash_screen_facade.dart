import 'package:dartz/dartz.dart';
import 'package:rapi2/domain/features/splash_screen/splash_failure.dart';

abstract class ISplashScreenFacade{
  Future<Either<SplashFailure, Unit>> checkUserItsRegistered();
  Future<Either<SplashFailure, Unit>> checkLocationService();
  Future<Either<SplashFailure, Unit>> activateLocationService();
}