import 'package:flutter/material.dart';
import 'package:muslim/features/splash/presentation/views/widgets/splash_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return SplashBody();
  }
}
