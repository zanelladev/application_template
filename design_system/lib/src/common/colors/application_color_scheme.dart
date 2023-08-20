import 'package:flutter/material.dart';

class ApplicationThemeColors {
  static const black = Color(0xff060807);
  static const darkGrey = Color(0xFF131718);
  static const secondaryDarkGrey = Color(0xff1d1e20);
  static const secondaryGrey = Color(0xff5d5e60);
  static const secondaryLightGrey = Color(0xff9ea1a0);
  static const salmon = Color(0xffcd4f4f);
  static const white = Color(0xfff0f2f1);
  static const error = Color(0xffCC1100);
  static const lightBlue = Color(0xffd6dfde);
}

class ApplicationColorScheme extends ColorScheme {
  final Color darkBackground;
  final Color secondaryDarkColor;
  final Color lightBackground;
  final Color secondaryGrey;
  final Color secondaryLightGrey;

  const ApplicationColorScheme({
    super.brightness = Brightness.dark,
    super.primary = ApplicationThemeColors.salmon,
    super.onPrimary = ApplicationThemeColors.darkGrey,
    super.secondary = ApplicationThemeColors.darkGrey,
    super.onSecondary = ApplicationThemeColors.lightBlue,
    super.error = ApplicationThemeColors.error,
    super.onError = ApplicationThemeColors.white,
    super.background = ApplicationThemeColors.darkGrey,
    super.onBackground = ApplicationThemeColors.white,
    super.surface = ApplicationThemeColors.white,
    super.onSurface = ApplicationThemeColors.darkGrey,
    this.darkBackground = ApplicationThemeColors.darkGrey,
    this.lightBackground = ApplicationThemeColors.white,
    this.secondaryDarkColor = ApplicationThemeColors.secondaryDarkGrey,
    this.secondaryGrey = ApplicationThemeColors.secondaryGrey,
    this.secondaryLightGrey = ApplicationThemeColors.secondaryLightGrey,
    super.surfaceVariant = ApplicationThemeColors.secondaryDarkGrey,
  });
}
