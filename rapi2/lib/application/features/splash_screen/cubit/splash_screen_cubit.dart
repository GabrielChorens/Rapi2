import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/features/splash_screen/i_splash_screen_facade.dart';

part 'splash_screen_state.dart';
part 'splash_screen_cubit.freezed.dart';

@injectable
class SplashScreenCubit extends Cubit<SplashScreenState> {
  final ISplashScreenFacade _iSplashScreenFacade;
  SplashScreenCubit(this._iSplashScreenFacade)
      : super(const SplashScreenState.initial());

  Future<void> manageAuthStatus() async {
    final result = await _iSplashScreenFacade.getUserIfItsStoraged();
    result.fold(
      (l) => emit(const SplashScreenState.userUnauthenticated()),
      (user) async {
        await _iSplashScreenFacade.setGlobalUser(user: user);
        emit(const SplashScreenState.userAuthenticated());
      },
    );
  }
}
