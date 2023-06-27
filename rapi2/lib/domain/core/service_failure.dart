import '../../core/error_handle/failure.dart';
///This class is the base class for all the failures that can happen in the services.
///They are: [LocationPermissionDenied], [LocationServiceDisabled], [LocationServiceUnknownError] and [InternetConnectionFailure].
sealed class ServiceFailure extends Failure{
  const ServiceFailure();
}

final class LocationPermissionDenied extends ServiceFailure{
  const LocationPermissionDenied();
}
final class LocationServiceDisabled extends ServiceFailure{
  const LocationServiceDisabled();
}
final class LocationServiceUnknownError extends ServiceFailure{
  @override
  final Failure? failureTrace;
  const LocationServiceUnknownError({this.failureTrace});
}
final class InternetConnectionFailure extends ServiceFailure{
  const InternetConnectionFailure();
}
