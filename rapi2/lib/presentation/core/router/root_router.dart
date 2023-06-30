import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rapi2/presentation/core/router/root_router.gr.dart';
import '../../../application/core/services/cubit/connection_status_cubit.dart';
import '../../../core/injection/dependencies_injection.dart';
import '../atomic_design/molecules/connection_dialog.dart';

@AutoRouterConfig()
class RootRouter extends $RootRouter implements AutoRouteGuard {
  final ConnectionStatusCubit _connectionStatusCubit =
      getIt<ConnectionStatusCubit>();
  StreamSubscription? _connectionStatusSubscription;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    _connectionStatusSubscription?.cancel();
    _connectionStatusSubscription =
        _connectionStatusCubit.stream.listen((states) {
      _connectionStatusCubit.checkOnlineStatus();
      states.when(online: () {
        if (router.navigatorKey.currentContext != null &&
            Navigator.canPop(router.navigatorKey.currentContext!)) {
          Navigator.pop(router.navigatorKey.currentContext!);
        }
        resolver.next(true);
      }, offline: () {
        if (router.navigatorKey.currentContext != null) {
          showDialog(
            context: router.navigatorKey.currentContext!,
            barrierDismissible: false,
            builder: (context) => ConnectionDialog(onRetry: () {
              _connectionStatusCubit.checkOnlineStatus();
            }),
          );
        }
      });
    });
  }

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page, initial: true),
  ];
}
