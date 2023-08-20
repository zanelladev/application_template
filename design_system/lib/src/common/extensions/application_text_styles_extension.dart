import 'package:flutter/material.dart';

class ApplicationTextStylesExtension
    extends ThemeExtension<ApplicationTextStylesExtension> {
  final TextStyle headlineSLight;
  final TextStyle headlineSDark;
  final TextStyle smallTextDark;
  final TextStyle smallTextGrey;

  const ApplicationTextStylesExtension({
    required this.headlineSLight,
    required this.headlineSDark,
    required this.smallTextDark,
    required this.smallTextGrey,
  });

  @override
  ThemeExtension<ApplicationTextStylesExtension> copyWith() {
    return this;
  }

  @override
  ThemeExtension<ApplicationTextStylesExtension> lerp(
      covariant ThemeExtension<ApplicationTextStylesExtension>? other,
      double t) {
    return this;
  }
}
