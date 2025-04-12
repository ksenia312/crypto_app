import 'package:crypto_app/shared/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {
  static final dark = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.blue,
      onPrimary: AppColors.white,
      secondary: AppColors.gray,
      onSecondary: AppColors.white,
      error: AppColors.red,
      onError: AppColors.white,
      surface: AppColors.black,
      onSurface: AppColors.gray,
    ),
    appBarTheme: AppBarTheme(
      foregroundColor: AppColors.lightBlue,
      backgroundColor: AppColors.darkGray,
      surfaceTintColor: Colors.transparent,
    ),
    listTileTheme: _listTheme(tileColor: AppColors.darkerGray),
    inputDecorationTheme: _inputTheme(
      fillColor: AppColors.black,
      hintColor: AppColors.gray,
    ),
    textTheme: _textTheme,
  );
  static final light = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.blue,
      onPrimary: AppColors.black,
      secondary: AppColors.lightBlue,
      onSecondary: AppColors.white,
      error: AppColors.red,
      onError: AppColors.white,
      surface: AppColors.white,
      onSurface: AppColors.black,
    ),
    appBarTheme: const AppBarTheme(
      foregroundColor: AppColors.lightBlue,
      backgroundColor: AppColors.lighterBlue,
      surfaceTintColor: Colors.transparent,
    ),
    listTileTheme: _listTheme(tileColor: AppColors.lighterBlue),
    inputDecorationTheme: _inputTheme(
      fillColor: AppColors.white,
      hintColor: AppColors.gray,
    ),
    textTheme: _textTheme,
  );

  static final _textTheme = GoogleFonts.openSansTextTheme().copyWith(
    headlineLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
    headlineMedium: TextStyle(fontSize: 18),
    headlineSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    bodyLarge: TextStyle(fontSize: 16),
    bodyMedium: TextStyle(fontSize: 14),
    bodySmall: TextStyle(fontSize: 12),
  );

  static _inputTheme({
    required Color fillColor,
    required Color hintColor,
  }) =>
      InputDecorationTheme(
        fillColor: fillColor,
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
        filled: true,
        hintStyle: _textTheme.bodyLarge?.copyWith(color: hintColor),
      );

  static _listTheme({required Color tileColor}) => ListTileThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        tileColor: tileColor,
      );
}
