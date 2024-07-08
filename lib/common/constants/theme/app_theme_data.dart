import 'package:flutter/material.dart';

class AppThemeData {
  static const Color primaryColor = Color(0xFFF9C32C);
  static const Color primaryColorDark = Color(0xFFF9C32C);
  static const Color accentColor = Color(0xFF1D1D1D);
  static const Color backgroundColor = Color(0xFFFFFFFF);
  static const Color surfaceColor = Color(0xFF121212);
  static const Color errorColor = Color(0xFFB00020);
  static const Color onPrimaryColor = Color(0xFFFFFFFF);
  static const Color onSecondaryColor = Color(0xFF000000);
  static const Color onBackgroundColor = Color(0xFF000000);
  static const Color onSurfaceColor = Color(0xFFFFFFFF);
  static const Color onErrorColor = Color(0xFFFFFFFF);

  static const TextStyle displayLarge = TextStyle(
    fontSize: 96,
    fontWeight: FontWeight.bold,
    letterSpacing: -1.5,
    color: onPrimaryColor,
  );
  static const TextStyle displayMedium = TextStyle(
    fontSize: 60,
    fontWeight: FontWeight.bold,
    letterSpacing: -0.5,
    color: onPrimaryColor,
  );
  static const TextStyle displaySmall = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    color: onPrimaryColor,
  );
  static const TextStyle headlineMedium = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.25,
    color: onPrimaryColor,
  );
  static const TextStyle headlineSmall = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    color: onPrimaryColor,
  );
  static const TextStyle titleLarge = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.15,
    color: onPrimaryColor,
  );
  static const TextStyle titleMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.15,
    color: onPrimaryColor,
  );
  static const TextStyle titleSmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.1,
    color: onPrimaryColor,
  );
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.5,
    color: onPrimaryColor,
  );
  static const TextStyle bodyText2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.25,
    color: onPrimaryColor,
  );
  static const TextStyle button = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.25,
    color: onPrimaryColor,
  );
  static const TextStyle caption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.4,
    color: onPrimaryColor,
  );
  static const TextStyle labelSmall = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.normal,
    letterSpacing: 1.5,
    color: onPrimaryColor,
  );

  static final ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    primaryColorDark: primaryColorDark,
    scaffoldBackgroundColor: backgroundColor,
    appBarTheme: const AppBarTheme(
      color: primaryColor,
      iconTheme: IconThemeData(color: onPrimaryColor),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: primaryColor,
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
      primary: primaryColor,
      secondary: accentColor,
      surface: surfaceColor,
      error: errorColor,
      onPrimary: onPrimaryColor,
      onSecondary: onSecondaryColor,
      onSurface: onSurfaceColor,
      onError: onErrorColor,
    ),
  );
}
