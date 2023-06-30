import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rapi2/application/core/services/cubit/location_service_cubit.dart';
import 'package:rapi2/application/features/splash_screen/cubit/splash_screen_cubit.dart';
import 'package:rapi2/core/injection/dependencies_injection.dart';
import 'package:rapi2/i18n/generated/translations.g.dart';

import '../../core/presentation_funcionalities/show_snack_Bar_mixin.dart';
import 'molecules/location_prompt_dialog.dart';

@RoutePage()
final class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with ShowSnackBarMixin {
  late final LocationServiceCubit _locationServiceCubit;
  late final SplashScreenCubit _splashScreenCubit;

  @override
  void initState() {
    super.initState();
    _locationServiceCubit = getIt<LocationServiceCubit>();
    _splashScreenCubit = getIt<SplashScreenCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => _locationServiceCubit,
        ),
        BlocProvider(
          create: (context) => _splashScreenCubit,
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<LocationServiceCubit, LocationServiceState>(
            listener: (context, state) {
              state.map(
                initial: (_) => _locationServiceCubit.checkLocationStatus(),
                locationOn: (_) => _splashScreenCubit.manageAuthStatus(),
                locationOff: (_) => showDialog(
                  context: context,
                  builder: (context) => LocationPromptDialog(onActivate: () {
                    _locationServiceCubit.activateLocation();
                  }),
                  barrierDismissible: false,
                ),
                locationPermissionDenied: (_) =>
                    showSnackBar(context, i18n.core.permissions),
                unknownError: (_) =>
                    showSnackBar(context, i18n.core.unknown_error),
              );
            },
          ),
          BlocListener<SplashScreenCubit, SplashScreenState>(
            listener: (context, state) {
              state.map(initial: (_){}, userAuthenticated: (_){
                
              }, userUnauthenticated: (_){});
            },
          ),
        ],
        child: Scaffold(
          body: Image.asset(
            'assets/frames/splash_screen_frame.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
        )
      ),
    );
  }
}
