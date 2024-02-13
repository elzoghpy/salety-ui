import 'package:flutter/material.dart';
import 'package:selaty/constants/resources/font_manger.dart';
import 'package:selaty/constants/resources/mycolors.dart';
import 'package:selaty/constants/resources/values_manger.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors
    primaryColor: MyColors.green,
    primaryColorLight: MyColors.green,
    primaryColorDark: MyColors.green,
    disabledColor: Colors.grey,
    splashColor: MyColors.green,
    // ripple effect color
    // cardview theme
    cardTheme: const CardTheme(
        color: MyColors.lightgrey,
        shadowColor: Colors.grey,
        elevation: AppSize.s4),
    // app bar theme
    appBarTheme: const AppBarTheme(
        centerTitle: true,
        color: MyColors.green,
        elevation: AppSize.s4,
        shadowColor: MyColors.green,
        titleTextStyle:
            TextStyle(fontSize: FontSize.s16, color: MyColors.lightgrey)),
    // button theme
    buttonTheme: const ButtonThemeData(
        shape: StadiumBorder(),
        disabledColor: Colors.grey,
        buttonColor: MyColors.green,
        splashColor: MyColors.green),

    // elevated button them
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            foregroundColor: MyColors.lightgrey,
            backgroundColor: MyColors.green,
            textStyle: const TextStyle(
                color: MyColors.lightgrey, fontSize: FontSize.s17),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s12)))),

    textTheme: TextTheme(
      displayLarge: TextStyle(color: Colors.grey[300], fontSize: FontSize.s16),
      headlineLarge:
          const TextStyle(color: Colors.grey, fontSize: FontSize.s16),
      headlineMedium:
          const TextStyle(color: Colors.grey, fontSize: FontSize.s14),
      titleMedium:
          const TextStyle(color: MyColors.green, fontSize: FontSize.s16),
      labelSmall:
          const TextStyle(color: MyColors.green, fontSize: FontSize.s16),
      titleSmall:
          const TextStyle(color: MyColors.green, fontSize: FontSize.s14),
      bodyLarge: const TextStyle(color: Colors.grey),
      bodySmall: const TextStyle(color: Colors.grey, fontSize: FontSize.s14),
      bodyMedium: const TextStyle(color: Colors.grey, fontSize: FontSize.s12),
    ),

    // input decoration theme (text form field)
    inputDecorationTheme: const InputDecorationTheme(
      // content padding
      contentPadding: EdgeInsets.all(AppPadding.p8),
      // hint style
      hintStyle: TextStyle(color: MyColors.green, fontSize: FontSize.s16),
      labelStyle: TextStyle(
        color: Colors.grey,
        fontSize: FontSize.s16,
      ),
      errorStyle: TextStyle(color: Colors.grey),

      // enabled border style
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: AppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),

      // focused border style
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.green, width: AppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),

      // error border style
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.red, width: AppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
      // focused border style
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: MyColors.green, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),
      ),
    ),
    // label style
  );
}
