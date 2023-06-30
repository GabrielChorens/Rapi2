import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rapi2/application/core/services/cubit/location_service_cubit.dart';
import 'package:rapi2/core/injection/dependencies_injection.dart';
import 'package:rapi2/presentation/core/theme.dart';
import 'presentation/core/router/root_router.dart';

class Rapi2ClientApp extends StatefulWidget {
  const Rapi2ClientApp({super.key});

  @override
  State<Rapi2ClientApp> createState() => _Rapi2ClientAppState();
}

class _Rapi2ClientAppState extends State<Rapi2ClientApp> {
  late final Rapi2Themes _rapi2Themes;
  late final RootRouter _rootRouter;
  late final LocationServiceCubit _locationServiceCubit;
  

  @override
  void initState() {
    super.initState();
    _rapi2Themes = getIt<Rapi2Themes>();
    _locationServiceCubit = getIt<LocationServiceCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LocationServiceCubit>(
          create: (context) => _locationServiceCubit,
        ),
      ],
      child: MaterialApp.router(
        title: 'Rapi2 Client App',
        routerConfig: _rootRouter.config(),
        debugShowCheckedModeBanner: false,
        theme: _rapi2Themes.rapi2LightThemeData,
        darkTheme: _rapi2Themes.rapi2DarkThemeData,
      ),
    );
  }
}
