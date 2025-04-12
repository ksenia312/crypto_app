import 'package:crypto_app/shared/ui/theme/colors.dart';
import 'package:flutter/material.dart';

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
      onSurface: AppColors.lightBlue,
    ),
    appBarTheme: AppBarTheme(
      foregroundColor: AppColors.lightBlue,
      backgroundColor: AppColors.darkGray,
    ),
  );
}
