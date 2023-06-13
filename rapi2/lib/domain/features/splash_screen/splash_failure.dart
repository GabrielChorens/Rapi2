import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_failure.freezed.dart';

@freezed
class SplashFailure with _$SplashFailure {
  const factory SplashFailure.noUserFound({
    @Default('no_user_found') String failureDescription,
  }) = NoUserFound;
  const factory SplashFailure.locationPermissionDenied({
    @Default('location_permission_denied') String failureDescription,
  }) = LocationPermissionDenied;
  const factory SplashFailure.locationServiceDisabled({
    @Default('location_service_disabled') String failureDescription,
  }) = LocationServiceDisabled;
}
