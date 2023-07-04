import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rapi2/application/core/services/cubit/location_service_cubit.dart';
import 'package:rapi2/application/features/splash_screen/cubit/splash_screen_cubit.dart';
import 'package:rapi2/core/injection/dependencies_injection.dart';
import 'package:rapi2/i18n/generated/translations.g.dart';
import 'package:dartz/dartz.dart' as dartz;

import '../../core/presentation_funcionalities/show_snack_Bar_mixin.dart';
import 'molecules/location_prompt_dialog.dart';

final class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with ShowSnackBarMixin {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      context.read<LocationServiceCubit>().checkLocationStatus();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SplashScreenCubit>(),
      child: MultiBlocListener(
        listeners: [
          BlocListener<LocationServiceCubit, LocationServiceState>(
            listener: (context, state) {
              state.map(
                initial: (_) {},
                locationOn: (_) =>
                    context.read<SplashScreenCubit>().manageAuthStatus(),
                locationOff: (_) async {
                  await showDialog<dartz.Unit?>(
                    context: context,
                    builder: (context) => LocationPromptDialog(
                      onActivate: () {
                        Navigator.of(context).pop(dartz.unit);
                      },
                      onDismiss: () {
                        Navigator.of(context).pop(null);
                      },
                    ),
                    barrierDismissible: false,
                  ).then((result) => result == dartz.unit
                      ? context.read<LocationServiceCubit>().activateLocation()
                      : context.read<SplashScreenCubit>().manageAuthStatus());
                },
                locationPermissionDenied: (_) {
                  showSnackBar(context, i18n.core.permissions);
                  context.read<SplashScreenCubit>().manageAuthStatus();
                },
                unknownError: (_) {
                  showSnackBar(context, i18n.core.unknown_error);
                  context.read<SplashScreenCubit>().manageAuthStatus();
                },
              );
            },
          ),
          BlocListener<SplashScreenCubit, SplashScreenState>(
            listener: (context, state) {
              state.map(
                initial: (_) {},
                userAuthenticated: (_) {
                  context.go('/home');
                },
                userUnauthenticated: (_) {
                  context.go('/welcome');
                },
              );
            },
          ),
        ],
        child: const _SplashBackground(),
      ),
    );
  }
}

class _SplashBackground extends StatelessWidget {
  const _SplashBackground();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        'assets/frames/splash_screen_frame.png',
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
