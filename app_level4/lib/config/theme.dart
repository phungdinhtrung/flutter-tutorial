import 'package:flutter/material.dart';

class ThemeConfig {
  ThemeData getTheme() {
    return ThemeData(
      scaffoldBackgroundColor: const Color.fromARGB(255, 96, 94, 232),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color.fromARGB(221, 67, 65, 65),
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      colorScheme: const ColorScheme.light(
        primary: Color.fromARGB(255, 4, 65, 6),
        brightness: Brightness.dark,
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          color: Colors.white,
          fontFamily: 'Poppins',
        ),
        bodyMedium: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
