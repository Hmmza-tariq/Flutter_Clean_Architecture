import 'package:clean_arch/presentation/color_manager.dart';
import 'package:clean_arch/presentation/font_manager.dart';
import 'package:clean_arch/presentation/styles_manager.dart';
import 'package:clean_arch/presentation/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.primaryOpacity70,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.grey1,
      splashColor: ColorManager.primaryOpacity70,
      colorScheme:
          ColorScheme.fromSwatch().copyWith(secondary: ColorManager.grey),

      //Card Theme
      cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: AppSize.s4,
      ),

      //AppBar Theme
      appBarTheme: AppBarTheme(
          color: ColorManager.primary,
          centerTitle: true,
          elevation: AppSize.s4,
          shadowColor: ColorManager.primaryOpacity70,
          titleTextStyle: getRegularStyle(
              color: ColorManager.white, fontSize: AppSize.s16)),

      //Button Theme
      buttonTheme: ButtonThemeData(
        buttonColor: ColorManager.primary,
        splashColor: ColorManager.primaryOpacity70,
        shape: const StadiumBorder(),
        disabledColor: ColorManager.grey1,
      ),

      //Elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: ColorManager.primary,
          textStyle: getRegularStyle(color: ColorManager.white),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s8)),
        ),
      ),

      //Text theme
      textTheme: TextTheme(
          displayLarge: getSemiBoldStyle(
              color: ColorManager.darkGrey, fontSize: FontSize.s16),
          titleMedium: getMediumStyle(
              color: ColorManager.lightGrey, fontSize: FontSize.s14),
          bodySmall: getRegularStyle(color: ColorManager.grey1),
          bodyLarge: getRegularStyle(color: ColorManager.grey)),

      //Input Decoration theme
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(AppPadding.p8),
        hintStyle: getRegularStyle(color: ColorManager.grey1),
        labelStyle: getMediumStyle(color: ColorManager.darkGrey),
        errorStyle: getRegularStyle(color: ColorManager.error),
        enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
            borderSide:
                BorderSide(color: ColorManager.grey, width: AppSize.s1_5)),
        focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
            borderSide:
                BorderSide(color: ColorManager.primary, width: AppSize.s1_5)),
        errorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
            borderSide:
                BorderSide(color: ColorManager.error, width: AppSize.s1_5)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
            borderSide:
                BorderSide(color: ColorManager.primary, width: AppSize.s1_5)),
      ));
}
