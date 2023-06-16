import 'package:flutter/material.dart';

ThemeData defaultTheme = ThemeData(
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      color: Colors.white,
      fontFamily: "Roboto",
      fontSize: 40,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      color: Color.fromARGB(255, 130, 130, 134),
      fontFamily: "Roboto",
      fontSize: 20,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: TextStyle(
      color: Colors.white,
      fontFamily: "Roboto",
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
  ),
  colorScheme: const ColorScheme(
    background: Colors.black,
    brightness: Brightness.dark,
    error: Colors.red,
    onBackground: Colors.white,
    onError: Colors.white,
    onPrimary: Colors.black,
    onSecondary: Colors.black,
    onSurface: Colors.black,
    primary: Colors.black,
    secondary: Colors.black,
    surface: Colors.black,
  ),
);
