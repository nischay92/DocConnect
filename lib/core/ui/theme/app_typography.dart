import 'package:flutter/material.dart';

class AppTypography {
  AppTypography._();

  static const _baseFamily = 'Inter';

  static TextTheme textTheme = const TextTheme(
    displayLarge: TextStyle(
      fontFamily: _baseFamily,
      fontWeight: FontWeight.w600,
      fontSize: 32,
      height: 1.2,
    ),
    displayMedium: TextStyle(
      fontFamily: _baseFamily,
      fontWeight: FontWeight.w600,
      fontSize: 28,
      height: 1.25,
    ),
    displaySmall: TextStyle(
      fontFamily: _baseFamily,
      fontWeight: FontWeight.w600,
      fontSize: 24,
      height: 1.3,
    ),
    headlineMedium: TextStyle(
      fontFamily: _baseFamily,
      fontWeight: FontWeight.w600,
      fontSize: 20,
      height: 1.35,
    ),
    headlineSmall: TextStyle(
      fontFamily: _baseFamily,
      fontWeight: FontWeight.w600,
      fontSize: 18,
      height: 1.4,
    ),
    titleLarge: TextStyle(
      fontFamily: _baseFamily,
      fontWeight: FontWeight.w600,
      fontSize: 16,
      height: 1.4,
    ),
    titleMedium: TextStyle(
      fontFamily: _baseFamily,
      fontWeight: FontWeight.w600,
      fontSize: 14,
      height: 1.45,
    ),
    titleSmall: TextStyle(
      fontFamily: _baseFamily,
      fontWeight: FontWeight.w500,
      fontSize: 13,
      height: 1.45,
    ),
    bodyLarge: TextStyle(
      fontFamily: _baseFamily,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      height: 1.5,
    ),
    bodyMedium: TextStyle(
      fontFamily: _baseFamily,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      height: 1.5,
    ),
    bodySmall: TextStyle(
      fontFamily: _baseFamily,
      fontWeight: FontWeight.w400,
      fontSize: 12,
      height: 1.5,
    ),
    labelLarge: TextStyle(
      fontFamily: _baseFamily,
      fontWeight: FontWeight.w600,
      fontSize: 14,
      height: 1.4,
    ),
    labelMedium: TextStyle(
      fontFamily: _baseFamily,
      fontWeight: FontWeight.w600,
      fontSize: 12,
      height: 1.4,
    ),
    labelSmall: TextStyle(
      fontFamily: _baseFamily,
      fontWeight: FontWeight.w500,
      fontSize: 11,
      height: 1.4,
    ),
  );
}
