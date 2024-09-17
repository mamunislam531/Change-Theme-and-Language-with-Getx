import 'package:flutter/material.dart';

class AppTheme {
  ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blue,
      centerTitle: true,
      titleTextStyle: TextStyle(
          color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),
    ),
      scaffoldBackgroundColor: Colors.white
    // colorScheme: ColorScheme(
    //     brightness: brightness,
    //     primary: primary,
    //     onPrimary: onPrimary,
    //     secondary: secondary,
    //     onSecondary: onSecondary,
    //     error: error,
    //     onError: onError,
    //     surface: surface,
    //     onSurface: onSurface)
  );

  ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
      centerTitle: true,
      titleTextStyle: TextStyle(
          color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),
    ),
      scaffoldBackgroundColor: Colors.black
  );
}
