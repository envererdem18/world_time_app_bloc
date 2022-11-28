import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../features/detail/timezone_detail_view.dart';
import '../../features/home/view/home_view.dart';
import 'router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page|Screen|View|Sheet,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeView, initial: true),
    AutoRoute(page: TimezoneDetailView),
  ],
)
class $AppRouter {}

final appRouter = Routing();

class Routing extends AppRouter {
  Future<T?> openCupertinoDialog<T>(
    Widget child, {
    bool barrierDismissible = true,
  }) async {
    return showCupertinoDialog<T>(
      context: navigatorKey.currentState!.overlay!.context,
      barrierDismissible: barrierDismissible,
      builder: (context) {
        return child;
      },
    );
  }

  Future<T?> openDialog<T>(
    Widget child, {
    bool barrierDismissible = false,
    bool useSafeArea = false,
  }) async {
    return showDialog<T>(
      barrierDismissible: barrierDismissible,
      useSafeArea: useSafeArea,
      context: navigatorKey.currentState!.overlay!.context,
      builder: (context) {
        return child;
      },
    );
  }

  Future<void> onpenSnackBar(
    String content, {
    SnackBarType type = SnackBarType.success,
  }) async {
    final context = navigatorKey.currentState!.overlay!.context;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          content,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Colors.white,
              ),
        ),
        elevation: 0,
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        backgroundColor:
            type == SnackBarType.success ? Colors.lightBlue : Colors.red,
      ),
    );
  }
}

enum SnackBarType {
  error,
  success,
}
