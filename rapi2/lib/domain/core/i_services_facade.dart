import 'package:dartz/dartz.dart';
import 'package:rapi2/domain/core/service_failure.dart';

///Interface that represents the services that are used in the application.
///They are: [activateLocationService], [checkLocationServiceStatus] and [checkConnecctionServiceStatus].
abstract interface class IServicesFacade{
  Future<Either<ServiceFailure, Unit>> activateLocationService();
  Future<Either<ServiceFailure, Unit>> checkLocationServiceStatus();
  Future<Either<ServiceFailure, Unit>> checkConnecctionServiceStatus();
}