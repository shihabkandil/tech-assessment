import 'package:flutter/material.dart';
import 'common/constants/theme/app_theme_data.dart';
import 'common/core/injector/locator.dart';
import 'common/core/router/app_router.dart';

void main() {

  configureDependencies();

  runApp(
    App(appRouter: AppRouter()),
  );
}

class App extends StatelessWidget {
  const App({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppThemeData.lightTheme,
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
