import 'package:flutter/material.dart';

import 'project_text_styles_extension.dart';

extension ContextThemeExtension on BuildContext {
  ProjectTextStylesExtension get texts => Theme.of(this).extension<ProjectTextStylesExtension>()!;
  ColorScheme get colors => Theme.of(this).colorScheme;
}
