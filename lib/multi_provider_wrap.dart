import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/features/splash/presenter/state/splash_cubit.dart';

class MultiProviderWrap extends StatelessWidget {
  const MultiProviderWrap({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<SplashCubit>(create: (_) => SplashCubit()..init()),
          // Add global providers
        ],
        child: child,
      );
}
