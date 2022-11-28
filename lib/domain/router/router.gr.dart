// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/cupertino.dart' as _i5;
import 'package:flutter/material.dart' as _i4;
import 'package:world_time_app_bloc/domain/entities/timezone_detail.dart'
    as _i6;
import 'package:world_time_app_bloc/features/detail/timezone_detail_view.dart'
    as _i2;
import 'package:world_time_app_bloc/features/home/view/home_view.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeView(),
      );
    },
    TimezoneDetailRoute.name: (routeData) {
      final args = routeData.argsAs<TimezoneDetailRouteArgs>();
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i2.TimezoneDetailView(
          key: args.key,
          detail: args.detail,
        ),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        _i3.RouteConfig(
          TimezoneDetailRoute.name,
          path: '/timezone-detail-view',
        ),
      ];
}

/// generated route for
/// [_i1.HomeView]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.TimezoneDetailView]
class TimezoneDetailRoute extends _i3.PageRouteInfo<TimezoneDetailRouteArgs> {
  TimezoneDetailRoute({
    _i5.Key? key,
    required _i6.TimezoneDetail detail,
  }) : super(
          TimezoneDetailRoute.name,
          path: '/timezone-detail-view',
          args: TimezoneDetailRouteArgs(
            key: key,
            detail: detail,
          ),
        );

  static const String name = 'TimezoneDetailRoute';
}

class TimezoneDetailRouteArgs {
  const TimezoneDetailRouteArgs({
    this.key,
    required this.detail,
  });

  final _i5.Key? key;

  final _i6.TimezoneDetail detail;

  @override
  String toString() {
    return 'TimezoneDetailRouteArgs{key: $key, detail: $detail}';
  }
}
