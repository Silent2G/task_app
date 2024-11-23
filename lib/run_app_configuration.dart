import 'package:flutter/material.dart';
import 'package:task_app/app.dart';
import 'package:task_app/core/constants.dart';
import 'package:task_app/injection.dart';

Future<void> runAppConfiguration() async {
  if (Constants.isNotEmpty) {
    await _config();

    return runApp(const App());
  }
}

Future<void> _config() async {
  // TODO add some stage configuration, DI setup, etc

  configureInjection();
  await getIt.allReady();
}
