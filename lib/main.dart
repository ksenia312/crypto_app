import 'dart:async';

import 'package:crypto_app/app/app.dart';
import 'package:crypto_app/di/service_locator.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await configureDependencies();
  runApp(const App());
}
