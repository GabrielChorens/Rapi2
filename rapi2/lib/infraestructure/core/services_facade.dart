import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:rapi2/domain/core/service_failure.dart';

import '../../domain/core/i_services_facade.dart';
import '../services/connectivity/internet_connection_status_service.dart';
import '../services/location/location_service.dart';
import '../services/location/location_service_responses.dart';

@LazySingleton(as: IServicesFacade)
class ServicesFacade implements IServicesFacade {
  final InternetConnectionStatusService _internetConnectionStatusService;
  final LocationService _locationService;

  ServicesFacade(this._internetConnectionStatusService, this._locationService);

  ///Implementation of the [IServicesFacade.activateLocationService] method.
  ///This method uses the [LocationService.enableLocation] method to activate the location service.
  ///It can prompt the permission dialog to the user attempting to activate the location service.
  ///It should ultimately open the location settings. In case the user denies the permission even being asked it
  ///will return a [LocationPermissionDenied] failure.
  ///Other type of failures will return unknown failure because they should not happen.
  ///If the location service is activated it will return unit.

  @override
  Future<Either<ServiceFailure, Unit>> activateLocationService() async {
    final result = await _locationService.enableLocation();
    return result.fold(
      (failure) async {
        switch (failure) {
          case PermissionDenied() || PermissionDeniedForever():
            return left(const LocationPermissionDenied());
          case ConfigurationFailure() || UnknownError() || Disabled():
            return left(LocationServiceUnknownError(failureTrace: failure));
        }
      },
      (_) => right(unit),
    );
  }

  ///Implementation of the [IServicesFacade.checkLocationServiceStatus] method.
  ///Its simple, it returns either unit when is enabled or a [LocationServiceDisabled] failure when is disabled.
  ///It can return the permission conditions but its not really neccesary until activation.
  ///It exahuastively checks the possible failures and returns a [LocationServiceUnknownError] in case of unknown error.

  @override
  Future<Either<ServiceFailure, Unit>> checkLocationServiceStatus() async {
    final result = await _locationService.checkLocationService();
    return result.fold(
      (failure) async {
        switch (failure) {
          case Disabled():
            return left(const LocationServiceDisabled());
          case PermissionDenied() || PermissionDeniedForever():
            return left(const LocationPermissionDenied());
          case ConfigurationFailure() || UnknownError():
            return left(LocationServiceUnknownError(failureTrace: failure));
        }
      },
      (_) => right(unit),
    );
  }

  ///Implementation of the [IServicesFacade.checkConnecctionServiceStatus] method.
  ///It returns either unit when is connected or a [InternetConnectionFailure] failure when is not connected.
  @override
  Future<Either<ServiceFailure, Unit>> checkConnecctionServiceStatus() async {
    final booleanResult = await _internetConnectionStatusService.isConnected();
    return booleanResult
        ? right(unit)
        : left(const InternetConnectionFailure());
  }
}
