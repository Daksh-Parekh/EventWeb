import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WebTheme {
  // This class is non-instantiable.
  WebTheme._();
  // --- LIGHT THEME COLORS ---
  static const Color primaryColor = Color(0xFF06B6D4); // Vibrant & Modern Teal
  static const Color secondaryColor = Color(0xFF4B5563);
  static const Color backgroundColor = Color(0xFFF9FAFB);
  static const Color surfaceColor = Color(0xFFFFFFFF);
  static const Color onPrimaryColor = Color(0xFFFFFFFF);
  static const Color primaryTextColor = Color(0xFF1F2937);
  static const Color errorColor = Color(0xFFDC3545);
  static const Color successColor = Color(0xFF28A745);
  static const Color adminSideMenu = Color(0xFF1E1E1E);

  // --- THEME DEFINITION ---
  // static  ThemeData lightTheme = ThemeData(
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backgroundColor,
      fontFamily: GoogleFonts.inter().fontFamily,

      // colorScheme: const ColorScheme.light(
      //   primary: primaryColor,
      //   secondary: secondaryColor,
      //   basckground: backgroundColor,
      //   surface: surfaceColor,
      //   onPrimary: onPrimaryColor,
      //   onSecondary: onPrimaryColor,
      //   onSurfaceVariant: primaryTextColor,
      //   onSurface: primaryTextColor,
      //   error: Colors.redAccent,
      //   onError: Colors.white,
      // ),

      // --- Add these back for a more polished UI ---
      appBarTheme: AppBarTheme(
        backgroundColor: surfaceColor,
        elevation: 1,
        shadowColor: backgroundColor.withValues(alpha: 0.5),
        titleTextStyle: const TextStyle(
          color: primaryTextColor,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      cardTheme: CardThemeData(
        color: surfaceColor,
        elevation: 2,
        shadowColor: backgroundColor.withValues(alpha: 0.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: onPrimaryColor,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
