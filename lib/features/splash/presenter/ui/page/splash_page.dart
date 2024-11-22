import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task_app/features/splash/presenter/state/splash_cubit.dart';
import 'package:task_app/router/routes.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state.isLoaded) {
          GoRouter.of(context).pushReplacement(Routes.login);
        }
      },
      builder: (context, state) {
        return const Scaffold(
          backgroundColor: Colors.blue,
          body: Center(
            child: Text(
              'SPLASH',
              style: TextStyle(
                fontSize: 36,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        );
      },
    );
  }
}
