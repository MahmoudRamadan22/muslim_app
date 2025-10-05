import 'package:flutter/material.dart';
import 'package:muslim/core/resources/routes_manager.dart';
import 'package:muslim/core/resources/theme_manager.dart';
import 'package:muslim/features/splash/presentation/views/splash_view.dart';

class Muslim extends StatelessWidget {
  const Muslim._internal();
  static final Muslim _instance = Muslim._internal();
  factory Muslim() => _instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
      theme: getApplicationTheme(),
      onGenerateRoute: (settings) => RouteGenerator.getRoute(settings),
    );
  }
}
