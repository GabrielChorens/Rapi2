import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rapi2/domain/core/i_services_facade.dart';
import 'package:rapi2/domain/features/splash_screen/i_splash_screen_facade.dart';

import '../../../../domain/core/service_failure.dart';
part 'splash_screen_event.dart';
part 'splash_screen_state.dart';
part 'splash_screen_bloc.freezed.dart';

@injectable
class SplashScreenBloc extends Bloc<SplashScreenEvent, SplashScreenState> {
  final ISplashScreenFacade _splashScreenFacade;
  final IServicesFacade _servicesFacade;

  SplashScreenBloc(
    this._splashScreenFacade,
    this._servicesFacade,
  ) : super(const SplashScreenState.initial()) {
    on<SplashScreenEvent>((event, emit) {
      event.map(
        appStarted: (e) => _onAppStarted(e, emit),
        activateLocationSelected: (e) => _onActivateLocationSelected(e, emit),
        ignoredLocationActivationSelection: (e) => _onIgnoredLocationActivationSelection(e, emit),
        checkUserAuthenticationStatus: (e) => _onCheckUserAuthenticationStatus(e, emit),
      );
    });
  }

  Future<void> _onAppStarted(
    _AppStarted event,
    Emitter<SplashScreenState> emit,
  ) async {
    final locationStatus =
        await _servicesFacade.checkLocationServiceStatus();
    locationStatus.fold((
      serviceFailure,
    ) {
      if (serviceFailure is LocationPermissionDenied) {
        emit(const SplashScreenState.locationPermisionsDenied());
      }
      emit(const SplashScreenState.locationDisabled());
    }, (
      locationEnabled,
    ) {
      emit(const SplashScreenState.locationEnabled());
    });
  }

  Future<void> _onActivateLocationSelected(
    _ActivateLocationSelected event,
    Emitter<SplashScreenState> emit,
  ) async {
    final result = await _servicesFacade.activateLocationService();
    result.fold((serviceFailure) {
      if (serviceFailure is LocationPermissionDenied) {
        emit(const SplashScreenState.locationPermisionsDenied());
      }
      emit(const SplashScreenState.locationUnknownError());
    }, (locationEnabled) {
      emit(const SplashScreenState.locationEnabled());
    });
  }

  Future<void> _onIgnoredLocationActivationSelection(
    _IgnoredLocationActivationSelection event,
    Emitter<SplashScreenState> emit,
  ) async {
    emit(const SplashScreenState.locationDisabled());
  }

  Future<void> _onCheckUserAuthenticationStatus(
    _CheckUserAuthenticationStatus event,
    Emitter<SplashScreenState> emit,
  ) async {
    final user = await _splashScreenFacade.getUserIfItsStoraged();
    user.fold((splashScreenFailure) {
      emit(const SplashScreenState.userUnauthenticated());
    }, (user) {
      _splashScreenFacade.setGlobalUser(user: user);
      emit(const SplashScreenState.userAuthenticated());
    });
  }
}
