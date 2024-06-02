import 'package:flutter/material.dart';

class ThemeConfig {
  ThemeData getTheme() {
    return ThemeData(
      scaffoldBackgroundColor: const Color.fromARGB(255, 17, 17, 18),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color.fromARGB(221, 21, 20, 20),
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
