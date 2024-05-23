import 'package:flutter/material.dart';

import 'package:finance/src/themes/theme_colours.dart';
import 'package:finance/src/themes/theme_typography.dart';

ThemeData myTheme = ThemeData(
    // APPBAR
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      titleTextStyle: TextStyle(
        color: Colors.white,
      ),
      actionsIconTheme: IconThemeData(color: Colors.white),
      toolbarHeight: 56,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white),
    ),

    // COLOURS
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: ThemeColours.primaryColour,
      onPrimary: ThemeColours.primaryColour,
      inversePrimary: Colors.white,
      secondary: ThemeColours.secondaryColour,
      onSecondary: ThemeColours.secondaryColour,
      error: Colors.red,
      onError: Colors.red,
      surface: Colors.black54,
      onSurface: Colors.black,
    ),
    cardColor: const Color.fromRGBO(75, 75, 75, 1),

    // TYPOGRAPHY
    textTheme: TextTheme(
      titleMedium: ThemeTypography.gFonts('Rajdhani', 22, FontWeight.w400, Colors.white),
      titleSmall: ThemeTypography.gFonts('Rajdhani', 14, FontWeight.w300, Colors.white),
      bodyLarge: ThemeTypography.gFonts('Fira Code', 26, FontWeight.w600, Colors.white),
      bodyMedium: ThemeTypography.gFonts('Fira Code', 16, FontWeight.w400, Colors.white),
      bodySmall: ThemeTypography.gFonts('Fira Code', 10, FontWeight.w700, Colors.white),
      labelLarge: ThemeTypography.gFonts('Sora', 12, FontWeight.w400, Colors.white),
      labelMedium: ThemeTypography.gFonts('Sora', 16, FontWeight.w600, Colors.white),
      labelSmall: ThemeTypography.gFonts('Sora', 16, FontWeight.w300, Colors.white),
    ));
