import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task_app/features/home/presenter/state/home_cubit.dart';
import 'package:task_app/features/home/presenter/ui/page/home_screen.dart';
import 'package:task_app/features/login/presenter/state/login_cubit.dart';
import 'package:task_app/features/login/presenter/ui/page/login_screen.dart';
import 'package:task_app/features/splash/presenter/ui/page/splash_page.dart';
import 'package:task_app/router/routes.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

class AppRouter {
  static final GoRouter router = GoRouter(
    debugLogDiagnostics: kDebugMode,
    navigatorKey: _rootNavigatorKey,
    initialLocation: Routes.splash,
    routes: [
      GoRoute(
        path: Routes.splash,
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (context, state) => _defaultTransition(
          context: context,
          state: state,
          child: const SplashPage(),
        ),
      ),
      GoRoute(
        path: Routes.login,
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (context, state) => _defaultTransition(
          context: context,
          state: state,
          child: BlocProvider(
            create: (_) => LoginCubit(),
            child: const LoginScreen(),
          ),
        ),
      ),
      GoRoute(
        path: Routes.home,
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (context, state) => _defaultTransition(
          context: context,
          state: state,
          child: BlocProvider(
            create: (_) => HomeCubit()..init(),
            child: const HomeScreen(),
          ),
        ),
      ),
    ],
  );
}

CustomTransitionPage _defaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
  bool fullscreenDialog = false,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    fullscreenDialog: fullscreenDialog,
    transitionsBuilder: (_, animation, __, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
  );
}
