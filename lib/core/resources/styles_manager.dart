import 'package:flutter/cupertino.dart';
import 'package:muslim/core/resources/color_manager.dart';
import 'package:muslim/core/resources/fonts_manager.dart';

TextStyle _getTextStyle(double fontSize, Color color, FontWeight fontWeight) {
  return TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight);
}

// bold style with read pro font family
TextStyle getBoldStyleWithReadPro({required double fontSize}) {
  return TextStyle(
    fontWeight: FontWeightManager.bold,
    color: ColorManager.white,
    fontFamily: FontsConstants.fontFamily,
    fontSize: fontSize,
  );
}

// bold style
TextStyle getBoldStyle({double fontSize = 16, required Color color}) {
  return _getTextStyle(fontSize, color, FontWeightManager.bold);
}

// semi bold style
TextStyle getSemiBoldStyle({double fontSize = 16, required Color color}) {
  return _getTextStyle(fontSize, color, FontWeightManager.semiBold);
}

// medium style
TextStyle getMediumStyle({double fontSize = 16, required Color color}) {
  return _getTextStyle(fontSize, color, FontWeightManager.medium);
}

// regular style
TextStyle getRegularStyle({double fontSize = 16, required Color color}) {
  return _getTextStyle(fontSize, color, FontWeightManager.regular);
}

// light style
TextStyle getLightStyle({double fontSize = 16, required Color color}) {
  return _getTextStyle(fontSize, color, FontWeightManager.light);
}

// super light style
TextStyle getSuperLightStyle({double fontSize = 16, required Color color}) {
  return _getTextStyle(fontSize, color, FontWeightManager.superLight);
}
