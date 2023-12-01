import 'package:clean_arch/presentation/font_manager.dart';
import 'package:flutter/material.dart';

TextStyle _getTextStyle(
    double size, String fontFamily, FontWeight weight, Color color) {
  return TextStyle(
    fontFamily: fontFamily,
    fontSize: size,
    fontWeight: weight,
    color: color,
  );
}

TextStyle getRegularStyle({double size = FontSize.s12, required Color color}) =>
    _getTextStyle(
        size, FontManager.fontFamily, FontWeightManager.regular, color);

TextStyle getLightStyle({double size = FontSize.s12, required Color color}) =>
    _getTextStyle(
        size, FontManager.fontFamily, FontWeightManager.regular, color);

TextStyle getMediumStyle({double size = FontSize.s12, required Color color}) =>
    _getTextStyle(
        size, FontManager.fontFamily, FontWeightManager.medium, color);

TextStyle getBoldStyle({double size = FontSize.s12, required Color color}) =>
    _getTextStyle(size, FontManager.fontFamily, FontWeightManager.bold, color);

TextStyle getSemiBoldStyle(
        {double size = FontSize.s12, required Color color}) =>
    _getTextStyle(
        size, FontManager.fontFamily, FontWeightManager.semiBold, color);
