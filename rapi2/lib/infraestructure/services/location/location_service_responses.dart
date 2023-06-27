import '../../../core/error_handle/failure.dart';

///A final class union that represents the success. It may contain the location data.
final class LocationServiceSuccess{
  final Map<String, double>? data;
  const LocationServiceSuccess({
    this.data,
  });
}

///A sealed class that represents the possible failures.
///They are: [Disabled], [PermissionDenied], [PermissionDeniedForever], [ConfigurationFailure], [UnknownError].
sealed class LocationServiceFailure extends Failure{
  const LocationServiceFailure();
}

final class Disabled extends LocationServiceFailure{
  const Disabled();
}
final class PermissionDenied extends LocationServiceFailure{
  const PermissionDenied();
}
final class PermissionDeniedForever extends LocationServiceFailure{
  const PermissionDeniedForever();
}
final class ConfigurationFailure extends LocationServiceFailure{
  const ConfigurationFailure();
}
final class UnknownError extends LocationServiceFailure{
  const UnknownError();
}