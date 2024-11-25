import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task_app/features/splash/presenter/state/splash_bloc.dart';
import 'package:task_app/router/routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state.isLoaded) {
          GoRouter.of(context).pushReplacement(
            state.isRemeberUser ? Routes.home : Routes.login,
          );
        }
      },
      builder: (context, state) {
        return const Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Text(
              'TEST APP',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        );
      },
    );
  }
}
