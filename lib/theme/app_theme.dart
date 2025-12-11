import 'package:flutter/material.dart';

class AppTheme {
  // App palette (compile-time constants)
  static const Color pastelPink   = Color(0xFFF9DDE2);
  static const Color pastelBlue   = Color(0xFFDDECF9);
  static const Color pastelYellow = Color(0xFFFFF3C4);
  static const Color textDark     = Color(0xFF3A3A3A);

  static ThemeData light() {
    final ColorScheme scheme = ColorScheme.fromSeed(
      seedColor: pastelPink,
      primary: pastelPink,
      secondary: pastelBlue,
      surface: Colors.white,          // ✅ use surface instead of background
      brightness: Brightness.light,
    );

    return ThemeData(
      colorScheme: scheme,
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.white,

      textTheme: const TextTheme(
        headlineMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: textDark,
        ),
        bodyMedium: TextStyle(
          fontSize: 16,
          color: textDark,
        ),
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: pastelPink,
        foregroundColor: textDark,
        elevation: 0,
        centerTitle: true,
      ),

      cardTheme: CardThemeData(
        color: pastelYellow.withValues(alpha: 0.6),   // ✅ modern alpha usage
        elevation: 2,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        clipBehavior: Clip.antiAlias,
        surfaceTintColor: Colors.transparent,
        shadowColor: pastelBlue.withValues(alpha: 0.3), // ✅ modern alpha usage
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: pastelPink,
          foregroundColor: textDark,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: pastelBlue.withValues(alpha: 0.25), // ✅ replaced withValues
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: pastelBlue),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: pastelPink, width: 2),
        ),
      ),
    );
  }
}