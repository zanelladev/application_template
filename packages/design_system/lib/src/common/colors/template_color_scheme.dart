import 'package:flutter/material.dart';

import '../constants/template_colors.dart';

class TemplateColorScheme extends ColorScheme {
  const TemplateColorScheme({
    super.brightness = Brightness.dark,
    super.primary = TemplateColors.black,
    super.onPrimary = TemplateColors.white,
    super.secondary = TemplateColors.black,
    super.onSecondary = TemplateColors.white,
    super.error = TemplateColors.white,
    super.onError = TemplateColors.black,
    super.background = TemplateColors.black,
    super.onBackground = TemplateColors.white,
    super.surface = TemplateColors.black,
    super.onSurface = TemplateColors.white,
    super.surfaceVariant = TemplateColors.white,
  });
}
