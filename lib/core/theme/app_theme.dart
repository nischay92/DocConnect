import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../ui/theme/app_colors.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData get light {
    final colorScheme = const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primaryBlue,
      onPrimary: Colors.white,
      secondary: AppColors.primaryTeal,
      onSecondary: Colors.white,
      error: AppColors.error,
      onError: Colors.white,
      surface: AppColors.neutralSurface,
      onSurface: AppColors.neutralTextPrimary,
      outline: AppColors.neutralBorder,
      shadow: Colors.black12,
      tertiary: AppColors.accentGold,
      onTertiary: Colors.black,
      surfaceTint: AppColors.primaryBlue,
      primaryContainer: AppColors.primaryBlue,
      secondaryContainer: AppColors.primaryTeal,
      onPrimaryContainer: Colors.white,
      onSecondaryContainer: Colors.white,
      onSurfaceVariant: AppColors.neutralTextSecondary,
      surfaceContainerHighest: AppColors.neutralSurface,
      inverseSurface: AppColors.primaryBlue,
      inversePrimary: Colors.white,
      scrim: Colors.black45,
    );

    final baseTextTheme = GoogleFonts.interTextTheme();

    return ThemeData(
      colorScheme: colorScheme,
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.neutralBackground,
      textTheme: baseTextTheme.apply(
        bodyColor: AppColors.neutralTextPrimary,
        displayColor: AppColors.neutralTextPrimary,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.neutralSurface,
        foregroundColor: AppColors.neutralTextPrimary,
        elevation: 0,
        titleTextStyle: baseTextTheme.titleLarge,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.neutralSurface,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.neutralBorder),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.neutralBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.primaryTeal, width: 1.5),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.error, width: 1.5),
        ),
        labelStyle: baseTextTheme.bodyMedium?.copyWith(
          color: AppColors.neutralTextSecondary,
        ),
        hintStyle: baseTextTheme.bodySmall?.copyWith(
          color: AppColors.neutralTextSecondary,
        ),
        prefixIconColor: AppColors.primaryBlue,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryBlue,
          foregroundColor: Colors.white,
          textStyle: baseTextTheme.labelLarge,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: AppColors.primaryBlue,
        actionTextColor: Colors.white,
        contentTextStyle: baseTextTheme.bodyMedium?.copyWith(color: Colors.white),
      ),
      cardTheme: CardThemeData(
        color: AppColors.neutralSurface,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: AppColors.neutralSurface,
        selectedColor: AppColors.primaryTeal.withAlpha((0.12 * 255).round()),
        disabledColor: AppColors.neutralBorder,
        labelStyle: baseTextTheme.bodyMedium!,
        secondaryLabelStyle: baseTextTheme.bodyMedium!,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      ),
      splashFactory: InkRipple.splashFactory,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}
