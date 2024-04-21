import 'package:go_router/go_router.dart';

import 'core/routes/routes.dart';
import 'core/services/injector/injector.dart';
import 'modules/splash/presenter/controller/splash_controller.dart';
import 'modules/splash/presenter/pages/splash_page.dart';

class AppRouter {
  static final AppRouter instance = AppRouter._internal();

  factory AppRouter() => instance;

  AppRouter._internal();

  GoRouter get router {
    return GoRouter(
      debugLogDiagnostics: true,
      initialLocation: Routes.splash.path,
      routes: _routes,
    );
  }

  List<GoRoute> get _routes {
    return [
      GoRoute(
        path: Routes.splash.path,
        builder: (_, __) => SplashPage(
          controller: Injector.retrive<SplashController>(),
        ),
      ),
    ];
  }
}
