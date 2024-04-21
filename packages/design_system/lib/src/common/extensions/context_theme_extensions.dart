import 'package:flutter/material.dart';

import 'template_text_styles_extension.dart';

extension ContextThemeExtension on BuildContext {
  TemplateTextStylesExtension get texts => Theme.of(this).extension<TemplateTextStylesExtension>()!;
  ColorScheme get colors => Theme.of(this).colorScheme;
}
