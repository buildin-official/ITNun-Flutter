import 'package:flutter/material.dart';
import 'package:itnun/common/di/get_it.dart';
import 'package:itnun/common/router.dart';
import 'package:itnun/common/theme.dart';

void main() async {
  await configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: theme,
    );
  }
}
