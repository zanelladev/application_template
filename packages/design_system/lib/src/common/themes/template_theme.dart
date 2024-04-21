import 'package:flutter/material.dart';

import '../colors/template_color_scheme.dart';
import '../extensions/template_text_styles_extension.dart';

class TemplateTheme {
  static ThemeData get() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: const TemplateColorScheme(),
      extensions: [
        TemplateTextStylesExtension.get(),
      ],
    );
  }
}
