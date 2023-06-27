part of 'splash_screen_bloc.dart';

@freezed
class SplashScreenEvent with _$SplashScreenEvent {
  const factory SplashScreenEvent.appStarted() = _AppStarted;
  const factory SplashScreenEvent.activateLocationSelected() = _ActivateLocationSelected;
  const factory SplashScreenEvent.ignoredLocationActivationSelection() = _IgnoredLocationActivationSelection;
  const factory SplashScreenEvent.checkUserAuthenticationStatus() = _CheckUserAuthenticationStatus;
}