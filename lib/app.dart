import 'package:flutter/material.dart';
import 'package:task_app/router/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routerDelegate: AppRouter.router.routerDelegate,
        routeInformationParser: AppRouter.router.routeInformationParser,
        title: 'App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      );
}
