import 'package:clean_arch/presentation/font_manager.dart';
import 'package:flutter/material.dart';

TextStyle _getTextStyle(
    double fontSize, String fontFamily, FontWeight weight, Color color) {
  return TextStyle(
    fontFamily: fontFamily,
    fontSize: fontSize,
    fontWeight: weight,
    color: color,
  );
}

TextStyle getRegularStyle(
        {double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(
        fontSize, FontManager.fontFamily, FontWeightManager.regular, color);

TextStyle getLightStyle(
        {double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(
        fontSize, FontManager.fontFamily, FontWeightManager.regular, color);

TextStyle getMediumStyle(
        {double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(
        fontSize, FontManager.fontFamily, FontWeightManager.medium, color);

TextStyle getBoldStyle(
        {double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(
        fontSize, FontManager.fontFamily, FontWeightManager.bold, color);

TextStyle getSemiBoldStyle(
        {double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(
        fontSize, FontManager.fontFamily, FontWeightManager.semiBold, color);
