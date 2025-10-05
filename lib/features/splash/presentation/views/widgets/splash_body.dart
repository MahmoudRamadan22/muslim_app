import 'dart:async';
import 'package:flutter/material.dart';
import 'package:muslim/core/resources/routes_manager.dart';
import 'package:muslim/core/resources/strings_manager.dart';
import 'package:muslim/core/resources/values_manager.dart';
import 'package:muslim/features/splash/presentation/views/widgets/splash_logo.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with TickerProviderStateMixin {
  Timer? _timer;
  late AnimationController _controller1;
  late Animation<Offset> _animation1;
  late AnimationController _controller2;
  late Animation<Offset> _animation2;

  @override
  void initState() {
    _timer = Timer(Duration(seconds: 2), goNext);
    initAnimation();
    super.initState();
  }

  @override
  void dispose() {
    _controller1.stop();
    _controller2.stop();
    _timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SplashLogo(),
            SizedBox(height: AppSpacing.sp19),
            SlideTransition(
              position: _animation1,
              child: Text(
                AppStrings.appName,
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            SizedBox(height: AppSpacing.sp19),
            SlideTransition(
              position: _animation2,
              child: Text(
                AppStrings.nextStringBelowName,
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
            SizedBox(height: AppSpacing.sp19),
          ],
        ),
      ),
    );
  }

  void initAnimation() {
    _controller1 = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _animation1 = Tween<Offset>(
      begin: Offset(0, 1),
      end: Offset(0, 0),
    ).animate(_controller1);
    _controller1.forward();
    _controller2 = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    _animation2 = Tween<Offset>(
      begin: Offset(0, 3),
      end: Offset(0, 0),
    ).animate(_controller1);
    _controller2.forward();
  }

  void goNext() {
    Navigator.pushNamed(context, Routes.homeRoute);
  }
}
