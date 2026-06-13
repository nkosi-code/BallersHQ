import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,

    scaffoldBackgroundColor:
        const Color(0xFF050505),

    primaryColor:
        const Color(0xFFE10600),

    colorScheme: const ColorScheme.dark(
      primary: Color(0xFFE10600),
      secondary: Color(0xFF7A00FF),
    ),

    cardColor:
        const Color(0xFF1A1A1A),

    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Color(0xFF120021),
    ),
  );
}