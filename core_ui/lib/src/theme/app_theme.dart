import 'package:flutter/material.dart';

import '../../core_ui.dart';

const LightColors _appColors = LightColors();

final ThemeData lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: _appColors.white,
  appBarTheme: _getAppBarTheme(),
  textTheme: _getTextTheme(),
  textButtonTheme: _getTextButtonTheme(),
  elevatedButtonTheme: _getElevatedButtonThemeData(),
  inputDecorationTheme: _getInputDecorationTheme(),
  bottomNavigationBarTheme: _getBottomNavigationTheme(),
  primaryColor: _appColors.primaryBg,
);

ElevatedButtonThemeData _getElevatedButtonThemeData() {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: _appColors.primaryBg,
      foregroundColor: _appColors.black,
      textStyle: AppFonts.normal13,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimens.BORDER_RADIUS_12),
      ),
    ),
  );
}

AppBarTheme _getAppBarTheme() {
  return AppBarTheme(
    backgroundColor: _appColors.appBarColor,
  );
}

BottomNavigationBarThemeData _getBottomNavigationTheme() {
  return BottomNavigationBarThemeData(
    backgroundColor: _appColors.bottomNavBarColor,
    unselectedIconTheme: IconThemeData(
      color: _appColors.unselectedTabColor,
    ),
    unselectedItemColor: _appColors.unselectedTabColor,
    selectedIconTheme: IconThemeData(
      color: _appColors.selectedTabColor,
    ),
    selectedItemColor: _appColors.selectedTabColor,
  );
}

TextTheme _getTextTheme() {
  return TextTheme(
    titleMedium: AppFonts.normal13,
    bodyMedium: AppFonts.normal13,
    titleLarge: AppFonts.normal20,
    bodyLarge: AppFonts.normal13,
  ).apply(
    bodyColor: _appColors.black,
    displayColor: _appColors.black,
  );
}

TextButtonThemeData _getTextButtonTheme() {
  return TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: _appColors.hyperLinkColor,
      textStyle: AppFonts.normal13,
    ),
  );
}

InputDecorationTheme _getInputDecorationTheme() {
  return InputDecorationTheme(
    hintStyle: AppFonts.normal13.copyWith(color: Colors.grey),
    border: OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(AppDimens.BORDER_RADIUS_12),
      ),
      borderSide: BorderSide(
        color: _appColors.primaryBg,
        width: 2,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(AppDimens.BORDER_RADIUS_12),
      ),
      borderSide: BorderSide(
        color: _appColors.primaryBg,
        width: 2,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(AppDimens.BORDER_RADIUS_12),
      ),
      borderSide: BorderSide(
        color: _appColors.primaryBg,
        width: 2,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(AppDimens.BORDER_RADIUS_6),
      ),
      borderSide: BorderSide(
        color: _appColors.primaryBg,
        width: 2,
      ),
    ),
    labelStyle: AppFonts.normal13.copyWith(color: Colors.black),
  );
}
