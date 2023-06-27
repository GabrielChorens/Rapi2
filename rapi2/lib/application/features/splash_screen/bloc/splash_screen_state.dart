part of 'splash_screen_bloc.dart';

@freezed
class SplashScreenState with _$SplashScreenState {
  const factory SplashScreenState.initial() = _Initial;
  const factory SplashScreenState.userAuthenticated() = _UserAuthenticated;
  const factory SplashScreenState.userUnauthenticated() = _UserUnauthenticated;
  const factory SplashScreenState.locationEnabled() = _LocationEnabled;
  const factory SplashScreenState.locationDisabled() = _LocationDisabled;
  const factory SplashScreenState.locationPermisionsDenied() = _LocationPermisionsDenied;
  const factory SplashScreenState.locationUnknownError() = _LocationUnknownError;
}
