import 'package:flutter/material.dart';

class CustomColorScheme extends ColorScheme {
  static const Color primaryColor = Color(0xFF000000);
  static const Color primaryColor2 = Color(0xFF0C0C0C);
  static const Color secondaryColor = Color(0xFFFFFFFF);
  static const Color secondaryColor60 = Color(0x99FFFFFF);
  static const Color primaryDark = Color(0xFF1D1D1D);
  static const Color primaryMedium = Color(0xFF232323);
  static const Color primaryLight = Color(0xFF313131);
  static const Color primaryExtraLight = Color(0xFF757575);
  static const Color secondaryDark = Color(0xFF666666);
  static const Color secondaryMediumDark = Color(0xFFAAAAAA);

  const CustomColorScheme({
    Color primaryColor = primaryColor,
    Color primaryColor2 = primaryColor2,
    Color secondaryColor = secondaryColor,
    Color secondaryColor60 = secondaryColor60,
    Color primaryDark = primaryDark,
    Color primaryMedium = primaryMedium,
    Color primaryLight = primaryLight,
    Color primaryExtraLight = primaryExtraLight,
    Color secondaryDark = secondaryDark,
    Color secondaryMediumDark = secondaryMediumDark,
  }) : super(
            primary: primaryColor,
            onPrimary: primaryColor2,
            secondary: secondaryColor,
            onSecondary: secondaryColor60,
            background: primaryDark,
            onBackground: primaryMedium,
            surface: primaryLight,
            onSurface: primaryExtraLight,
            brightness: Brightness.dark,
            onError: secondaryMediumDark,
            error: secondaryDark);
}
