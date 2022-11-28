import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:world_time_app_bloc/features/home/bloc/home_bloc.dart';

import '../domain/router/router.dart';
import '../injection.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (_) => getIt<HomeBloc>()..add(const HomeEvent.getTimezones()),
        ),
      ],
      child: MaterialApp.router(
        title: 'World Time App',
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerDelegate: appRouter.delegate(
          navigatorObservers: () => [AutoRouteObserver()],
        ),
        routeInformationProvider: appRouter.routeInfoProvider(),
        routeInformationParser: appRouter.defaultRouteParser(),
      ),
    );
  }
}
