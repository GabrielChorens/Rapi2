import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rapi2/application/core/services/cubit/connection_status_cubit.dart';
import '../../features/auth/welcome/welcome_page.dart';
import '../../features/home/home_page.dart';
import '../../features/splash_screen/splash_screen_page.dart';
import '../atomic_design/organisms/connection_check_page.dart';

final class RootRouter {
  const RootRouter();

  GoRouter get router {
    return GoRouter(
      redirect: (context, state) async {
      
        bool isNotInitialScreenNorConnectionFailureScreen =
            state.location != '/splash' &&
                !state.location.startsWith('/connection');

        if (isNotInitialScreenNorConnectionFailureScreen) {
          return await context
              .read<ConnectionStatusCubit>()
              .checkOnlineStatus()
              .then((_) {
            bool isOffline = context.read<ConnectionStatusCubit>().state ==
                const ConnectionStatusState.offline();
            if (isOffline) {
              return '/connection/${Uri.encodeComponent(state.location)}';
            }
            return null;
          });
        }else{
          return null;
        }
      },
      initialLocation: '/splash',
      redirectLimit: 50,
      routes: [
        GoRoute(
          path: '/connection/:pendingRoute',
          builder: (BuildContext context, GoRouterState state) =>
              ConnectionCheck(
                  pendingRoute: state.pathParameters['pendingRoute']),
        ),
        GoRoute(
          path: '/splash',
          builder: (BuildContext context, GoRouterState state) =>
              const SplashScreen(),
        ),
        GoRoute(
          path: '/home',
          builder: (BuildContext context, GoRouterState state) =>
              const HomePage(),
        ),
        GoRoute(
          path: '/welcome',
          builder: (BuildContext context, GoRouterState state) =>
              const WelcomePage(),
        ),
      ],
    );
  }
}
