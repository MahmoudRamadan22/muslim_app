import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:muslim/core/resources/strings_manager.dart';
import 'package:muslim/features/Quran/presentation/views/quran_view.dart';
import 'package:muslim/features/adayaa/presentation/views/adayaa_view.dart';
import 'package:muslim/features/azkar/presentation/views/azkar_view.dart';
import 'package:muslim/features/home/presentation/views/home_view.dart';
import 'package:muslim/features/more/presentation/views/more_view.dart';
import 'package:muslim/features/setting/presentation/views/widgets/setting_view.dart';
import 'package:muslim/features/splash/presentation/views/splash_view.dart';
import 'package:muslim/features/studying/presentation/studying_view.dart';

class Routes {
  static const String splashRoute = '/';
  static const String homeRoute = '/home';
  static const String adayaaRoute = '/adayaa';
  static const String azkarRoute = '/azkar';
  static const String moreRoute = '/more';
  static const String quranRoute = '/quran';
  static const String settingRoute = '/setting';
  static const String studyingRoute = '/studying';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (context) => SplashView());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (context) => HomeView());
      case Routes.adayaaRoute:
        return MaterialPageRoute(builder: (context) => AdayaaView());
      case Routes.azkarRoute:
        return MaterialPageRoute(builder: (context) => AzkarView());
      case Routes.moreRoute:
        return MaterialPageRoute(builder: (context) => MoreView());
      case Routes.quranRoute:
        return MaterialPageRoute(builder: (context) => QuranView());
      case Routes.settingRoute:
        return MaterialPageRoute(builder: (context) => SettingView());
      case Routes.studyingRoute:
        return MaterialPageRoute(builder: (context) => StudyingView());
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text(AppStrings.noRoute)),
          body: Center(child: Text(AppStrings.noRoute)),
        ),
      ),
    );
  }
}
