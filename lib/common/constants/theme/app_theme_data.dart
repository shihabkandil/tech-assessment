import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppThemeData {
  AppThemeData._();

  static const TextStyle displayLarge = TextStyle(
    fontSize: 96,
    fontWeight: FontWeight.bold,
    letterSpacing: -1.5,
    color: AppColors.onPrimaryColor,
  );
  static const TextStyle displayMedium = TextStyle(
    fontSize: 60,
    fontWeight: FontWeight.bold,
    letterSpacing: -0.5,
    color: AppColors.onPrimaryColor,
  );
  static const TextStyle displaySmall = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    color: AppColors.onPrimaryColor,
  );
  static const TextStyle headlineMedium = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.25,
    color: AppColors.onPrimaryColor,
  );
  static const TextStyle headlineSmall = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    color: AppColors.onPrimaryColor,
  );
  static const TextStyle titleLarge = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.15,
    color: AppColors.onPrimaryColor,
  );
  static const TextStyle titleMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.15,
    color: AppColors.onPrimaryColor,
  );
  static const TextStyle titleSmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.1,
    color: AppColors.onPrimaryColor,
  );
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.5,
    color: AppColors.onPrimaryColor,
  );
  static const TextStyle bodyText2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.25,
    color: AppColors.onPrimaryColor,
  );
  static const TextStyle button = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.25,
    color: AppColors.onPrimaryColor,
  );
  static const TextStyle caption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.4,
    color: AppColors.onPrimaryColor,
  );
  static const TextStyle labelSmall = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.normal,
    letterSpacing: 1.5,
    color: AppColors.onPrimaryColor,
  );

  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    primaryColorDark: AppColors.primaryColorDark,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    appBarTheme: const AppBarTheme(
      color: AppColors.primaryColor,
      iconTheme: IconThemeData(color: AppColors.onPrimaryColor),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.primaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    textTheme: const TextTheme(
      displayLarge: displayLarge,
      displayMedium: displayMedium,
      displaySmall: displaySmall,
      headlineMedium: headlineMedium,
      headlineSmall: headlineSmall,
      titleLarge: titleLarge,
      titleMedium: titleMedium,
      titleSmall: titleSmall,
      bodyLarge: bodyLarge,
      labelSmall: labelSmall,
    ),
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryColor,
      secondary: AppColors.accentColor,
      surface: AppColors.surfaceColor,
      error: AppColors.errorColor,
      onPrimary: AppColors.onPrimaryColor,
      onSecondary: AppColors.onSecondaryColor,
      onSurface: AppColors.onSurfaceColor,
      onError: AppColors.onErrorColor,
    ),
  );
}

extension AppThemeExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}
