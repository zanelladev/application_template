import 'package:flutter/material.dart';

class TemplateThemeColors {
  static const primary = Color(0xff166281);
  static const white = Color(0xffffffff);
  static const grey = Color.fromARGB(255, 95, 95, 95);
  static const black = Color(0xff27262a);
  static const red = Colors.red;
}

class TemplateColorScheme extends ColorScheme {
  const TemplateColorScheme({
    super.brightness = Brightness.dark,
    super.primary = TemplateThemeColors.primary,
    super.onPrimary = TemplateThemeColors.white,
    super.secondary = TemplateThemeColors.black,
    super.onSecondary = TemplateThemeColors.white,
    super.error = TemplateThemeColors.red,
    super.onError = TemplateThemeColors.white,
    super.background = TemplateThemeColors.white,
    super.onBackground = TemplateThemeColors.primary,
    super.surface = TemplateThemeColors.white,
    super.onSurface = TemplateThemeColors.primary,
    super.surfaceVariant = TemplateThemeColors.primary,
  });
}
