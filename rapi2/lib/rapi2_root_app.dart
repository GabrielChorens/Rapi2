import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rapi2/application/core/services/cubit/connection_status_cubit.dart';
import 'package:rapi2/application/core/services/cubit/location_service_cubit.dart';
import 'package:rapi2/core/injection/dependencies_injection.dart';
import 'package:rapi2/presentation/core/theme.dart';

import 'presentation/core/router/router.dart';

class Rapi2ClientApp extends StatelessWidget {
  const Rapi2ClientApp({super.key});

  final _router = const RootRouter();
  final _rapi2Themes = const Rapi2Themes();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LocationServiceCubit>(
          create: (context) => getIt<LocationServiceCubit>(),
        ),
        BlocProvider<ConnectionStatusCubit>(
          create: (context) => getIt<ConnectionStatusCubit>(),
        )
      ],
      child: MaterialApp.router(
        title: 'Rapi2 Client App',
        routerConfig: _router.router,
        debugShowCheckedModeBanner: false,
        theme: _rapi2Themes.rapi2Light,
        darkTheme: _rapi2Themes.rapi2Dark,
      ),
    );
  }
}
