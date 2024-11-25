import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task_app/features/home/domain/entity/user_entity.dart';
import 'package:task_app/features/home/presenter/state/home_bloc.dart';
import 'package:task_app/features/home/presenter/ui/page/home_screen.dart';
import 'package:task_app/features/login/presenter/state/login_bloc.dart';
import 'package:task_app/features/login/presenter/ui/page/login_screen.dart';
import 'package:task_app/features/splash/presenter/state/splash_bloc.dart';
import 'package:task_app/features/splash/presenter/ui/page/splash_screen.dart';
import 'package:task_app/features/user_detail/presenter/state/user_detail_bloc.dart';
import 'package:task_app/features/user_detail/presenter/ui/page/user_detail_screen.dart';
import 'package:task_app/router/routes.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    debugLogDiagnostics: kDebugMode,
    initialLocation: Routes.splash,
    routes: [
      GoRoute(
        path: Routes.splash,
        pageBuilder: (context, state) => _defaultTransition(
          context: context,
          state: state,
          child: BlocProvider(
            create: (_) => SplashBloc()..add(const SplashEvent.started()),
            child: const SplashScreen(),
          ),
        ),
      ),
      GoRoute(
        path: Routes.login,
        pageBuilder: (context, state) => _defaultTransition(
          context: context,
          state: state,
          child: BlocProvider(
            create: (_) => LoginBloc(),
            child: const LoginScreen(),
          ),
        ),
      ),
      GoRoute(
        path: Routes.home,
        pageBuilder: (context, state) => _defaultTransition(
          context: context,
          state: state,
          child: BlocProvider(
            create: (_) => HomeBloc()..add(const HomeEvent.fetchUsers()),
            child: const HomeScreen(),
          ),
        ),
      ),
      GoRoute(
        path: Routes.userDetail,
        pageBuilder: (context, state) {
          final userJson = state.extra as Map<String, dynamic>;
          final user = UserEntity.fromJson(userJson);

          return _defaultTransition(
            context: context,
            state: state,
            child: BlocProvider(
              create: (_) => UserDetailBloc(user: user),
              child: const UserDetailScreen(),
            ),
          );
        },
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
