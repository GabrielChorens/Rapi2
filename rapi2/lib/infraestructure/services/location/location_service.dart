import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'location_service_responses.dart';

@lazySingleton
class LocationService {

  /// Checks if the location service is enabled on the device.
  /// First checks for the permissions wich in case there are not granted it will return the corresponding failure:
  /// [PermissionDenied] or [PermissionDeniedForever].
  /// It will return [UnknownError] in case any platform error occurs.
  /// If the permissions are granted it will check if the location service is enabled and return the corresponding 
  /// success [LocationServiceSuccess] or failure [Disabled].

  Future<Either<LocationServiceFailure, LocationServiceSuccess>>
      checkLocationService() {
    return _checkLocationPermission().then((permissionResult) {
      return permissionResult.fold(
        (failure) => Future.value(left(failure)),
        (_) => _checkLocationServiceEnabled(),
      );
    });
  }

  /// Requests the location permission to the user.
  /// If the permission is denied forever it will return [PermissionDeniedForever].
  /// If the permission is denied it will request the permission to the user and return the corresponding success
  /// [LocationServiceSuccess] or failures: [PermissionDenied] or
  /// [PermissionDeniedForever].
  /// It will return [UnknownError] in case any platform error occurs.
  /// If the permission is granted in the first place it will return [LocationServiceSuccess].
  
  Future<Either<LocationServiceFailure, LocationServiceSuccess>>
      requestLocationPermission() {
    return _checkLocationPermission().then((permissionResult) {
      return permissionResult.fold((failure) {
        if (failure is PermissionDeniedForever) {
          return Future.value(left(failure));
        } else {
          return _handlePermission(Geolocator.requestPermission());
        }
      }, (_) => Future.value(right(const LocationServiceSuccess())));
    });
  }

  /// Tries to enable the location service on the device.
  /// First checks for the permissions wich in case there are not granted it will return the corresponding failure:
  /// [PermissionDenied] or [PermissionDeniedForever].
  /// It will return [UnknownError] in case any platform error occurs.
  /// If the permissions are granted it will try to open the location settings and return the corresponding success
  /// In case its impossible (As for IOs devices) it will try to open the app settings and return the corresponding success
  /// In case nothing works it will return [ConfigurationFailure].
  
  Future<Either<LocationServiceFailure, LocationServiceSuccess>>
      enableLocation() {
    return requestLocationPermission().then(
      (permissionResult) => permissionResult.fold(
        (failure) => Future.value(left(failure)),
        (success) => _openLocationSettings(),
      ),
    );
  }

  /// Tries to get the current location of the device.
  /// First checks for the permissions wich in case there are not granted it will return the corresponding failure:
  /// [PermissionDenied] or [PermissionDeniedForever].
  /// It will return [UnknownError] in case any platform error occurs.
  /// If the permissions are granted it will try to get the current location and return the corresponding success
  
  Future<Either<LocationServiceFailure, LocationServiceSuccess>>
     getCurrentLocation(){
    return _checkLocationPermission().then(
      (permissionResult) => permissionResult.fold(
        (failure) => Future.value(left(failure)),
        (success) => _getCurrentLocation(),
      ),
    );
  }

  ///Utility method that attempts to get the location data from the device.
  ///In case of success it will return the corresponding success [LocationServiceSuccess] with the location data.
  ///It will catch any platform error and return [UnknownError].
  
  Future<Either<LocationServiceFailure, LocationServiceSuccess>>
      _getCurrentLocation() async {
    try {
      final position = await Geolocator.getCurrentPosition();
      return right(LocationServiceSuccess(data: {
        'latitude': position.latitude,
        'longitude': position.longitude,
      }));
    } catch (error) {
      return left(const UnknownError());
    }
  }

  ///Utility method that redirects the bool result of the location service check to be classified as a success or failure.
  
  Future<Either<LocationServiceFailure, LocationServiceSuccess>>
      _checkLocationServiceEnabled() async {
      try {
      final isSuccess = await Geolocator.isLocationServiceEnabled();
      return isSuccess
          ? right(const LocationServiceSuccess())
          : left(const Disabled());
    } catch (error) {
      return left(const UnknownError());
    }
  }

  ///Utility method that redirects the bool result of the location service check to be classified as a success or failure.
  
  Future<Either<LocationServiceFailure, LocationServiceSuccess>>
      _openAppSettings() {
    return _handleSettingsOpeningOperation(Geolocator.openAppSettings());
  }

  ///Utility method that redirects the bool result of the location service check to be classified as a success or failure.
  ///In case the operation fails it will try to open app settings.
  
  Future<Either<LocationServiceFailure, LocationServiceSuccess>>
      _openLocationSettings() {
    return _handleSettingsOpeningOperation(Geolocator.openLocationSettings())
        .then((result) => result.fold(
              (failure) => _openAppSettings(),
              (success) => Future.value(right(const LocationServiceSuccess())),
            ));
  }

  ///Utility method that redirects the location permission result to be classified as a success or failure.
  
  Future<Either<LocationServiceFailure, LocationServiceSuccess>>
      _checkLocationPermission() {
    return _handlePermission(Geolocator.checkPermission());
  }

  ///Utility method that sorts from the location permission result to be classified as the corresponding 
  ///success or failure. It will catch any platform error and return [UnknownError].
  
  Future<Either<LocationServiceFailure, LocationServiceSuccess>>
      _handlePermission(Future<LocationPermission> locationPermission) async {
    try {
      final permission = await locationPermission;
      if (permission == LocationPermission.always ||
          permission == LocationPermission.whileInUse) {
        return right(const LocationServiceSuccess());
      } else if (permission == LocationPermission.deniedForever) {
        return left(
            const PermissionDeniedForever());
      } else {
        return left(const PermissionDenied());
      }
    } catch (error) {
      return left(const UnknownError());
    }
  }

  ///Utility method that sorts from the location service result to be classified as the corresponding
  ///success or failure. It will catch any platform error and return [UnknownError].
  
  Future<Either<LocationServiceFailure, LocationServiceSuccess>>
      _handleSettingsOpeningOperation(Future<bool> operation) async {
    try {
      final isSuccess = await operation;
      return isSuccess
          ? right(const LocationServiceSuccess())
          : left(const ConfigurationFailure());
    } catch (error) {
      return left(const UnknownError());
    }
  }

}
