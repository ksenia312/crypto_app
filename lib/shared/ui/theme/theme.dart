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
    listTileTheme: ListTileThemeData(
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      tileColor: AppColors.darkerGray,
      titleTextStyle: _textTheme.headlineSmall?.copyWith(color: AppColors.white),
      subtitleTextStyle: _textTheme.bodySmall?.copyWith(color: AppColors.gray),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.black,
      border: InputBorder.none,
      enabledBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      focusedBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      filled: true,
      hintStyle: _textTheme.bodyLarge?.copyWith(color: AppColors.gray),
    ),
    textTheme: _textTheme,
  );

  static final _textTheme = GoogleFonts.openSansTextTheme().copyWith(
    headlineMedium: TextStyle(fontSize: 18),
    headlineSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    bodyLarge: TextStyle(fontSize: 16),
    bodyMedium: TextStyle(fontSize: 14),
    bodySmall: TextStyle(fontSize: 12),
  );
}
