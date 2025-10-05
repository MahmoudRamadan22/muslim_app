import 'package:flutter/material.dart';
import 'package:muslim/core/resources/color_manager.dart';
import 'package:muslim/core/resources/fonts_manager.dart';
import 'package:muslim/core/resources/styles_manager.dart';
import 'package:muslim/core/resources/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors
    primaryColor: ColorManager.primary,
    splashColor: ColorManager.medGreen,
    scaffoldBackgroundColor: ColorManager.primary,
    //card theme
    cardTheme: CardThemeData(
      elevation: AppSize.s8,
      shadowColor: ColorManager.shadePrimary,
    ),
    // app bar theme
    appBarTheme: AppBarTheme(
      backgroundColor: ColorManager.primary,
      titleTextStyle: getBoldStyleWithReadPro(fontSize: FontSizeManager.s18),
    ),
    // icon button theme
    textTheme: TextTheme(
      // for splash we use display large and display small
      displayLarge: getBoldStyleWithReadPro(fontSize: FontSizeManager.s32),
      displaySmall: getBoldStyle(
        color: ColorManager.greyText,
        fontSize: FontSizeManager.s18,
      ),
      // for headlines we use headline medium
      headlineMedium: getMediumStyle(
        color: ColorManager.white,
        fontSize: FontSizeManager.s16,
      ),
      // for اسماء السور والاجزاء
      bodyMedium: getRegularStyle(
        color: ColorManager.white,
        fontSize: FontSizeManager.s16,
      ),
      bodySmall: getRegularStyle(
        color: ColorManager.greyText,
        fontSize: FontSizeManager.s16,
      ),
      // for zekr home page
      bodyLarge: getBoldStyle(
        color: ColorManager.white,
        fontSize: FontSizeManager.s18,
      ),
    ),
  );
}
