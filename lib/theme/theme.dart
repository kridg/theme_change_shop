import 'package:flutter/material.dart';

ThemeData lightMode= ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      surface: Colors.grey.shade300,
      primary: Colors.grey.shade200,
      secondary: Colors.white,
      inversePrimary: Colors.grey.shade700,
    ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(color: Colors.black), // Titles or AppBar text
    bodyMedium: TextStyle(color: Colors.black87), // Regular body text
    labelLarge: TextStyle(color: Colors.black54), // Labels or subtitles
    labelSmall: TextStyle(color: Colors.white), // Button text
  )
);

ThemeData darkMode= ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      surface: Colors.grey.shade900,
      primary: Colors.grey.shade800,
      secondary: Colors.grey.shade700,
    ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(color: Colors.white), // Titles or AppBar text
    bodyMedium: TextStyle(color: Colors.white70), // Regular body text
    labelLarge: TextStyle(color: Colors.white60), // Labels or subtitles
    labelSmall: TextStyle(color: Colors.white), // Button text
  ),);