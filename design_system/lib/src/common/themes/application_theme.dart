import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import '../../../design_system.dart';
import '../colors/application_color_scheme.dart';

class ApplicationTheme {
  static final light = ThemeData(
    useMaterial3: true,
    colorScheme: const ApplicationColorScheme(),
    extensions: [
      ApplicationTextStylesExtension(
        headlineSLight: GoogleFonts.montserrat(
          fontSize: 32,
          color: ApplicationThemeColors.white,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.8,
        ),
        headlineSDark: GoogleFonts.montserrat(
          fontSize: 32,
          color: ApplicationThemeColors.black,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.8,
        ),
        smallTextDark: GoogleFonts.montserrat(
          fontSize: 15,
          color: ApplicationThemeColors.darkGrey,
          fontWeight: FontWeight.w600,
        ),
        smallTextGrey: GoogleFonts.montserrat(
          fontSize: 14,
          color: ApplicationThemeColors.secondaryLightGrey,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}
