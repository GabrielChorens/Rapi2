part of 'location_service_cubit.dart';

@freezed
class LocationServiceState with _$LocationServiceState {
  const factory LocationServiceState.initial() = _Initial;
   const factory LocationServiceState.locationOn() = _LocationOn;
  const factory LocationServiceState.locationOff() = _LocationOff;
  const factory LocationServiceState.locationPermissionDenied() =
      _LocationPermissionDenied;
  const factory LocationServiceState.unknownError() = _UnknownError;
}
