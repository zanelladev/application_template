import 'package:flutter/material.dart';

class ProjectThemeColors {
  static const primary = Color(0xff166281);
  static const white = Color(0xffffffff);
  static const grey = Color.fromARGB(255, 95, 95, 95);
  static const black = Color(0xff27262a);
  static const red = Colors.red;
}

class ProjectColorScheme extends ColorScheme {
  const ProjectColorScheme({
    super.brightness = Brightness.dark,
    super.primary = ProjectThemeColors.primary,
    super.onPrimary = ProjectThemeColors.white,
    super.secondary = ProjectThemeColors.black,
    super.onSecondary = ProjectThemeColors.white,
    super.error = ProjectThemeColors.red,
    super.onError = ProjectThemeColors.white,
    super.background = ProjectThemeColors.white,
    super.onBackground = ProjectThemeColors.primary,
    super.surface = ProjectThemeColors.white,
    super.onSurface = ProjectThemeColors.primary,
    super.surfaceVariant = ProjectThemeColors.primary,
  });
}
