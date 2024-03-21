import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors/project_color_scheme.dart';
import '../extensions/project_text_styles_extension.dart';

class ProjectTheme {
  static ThemeData get() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: const ProjectColorScheme(),
      extensions: [
        ProjectTextStylesExtension(
          title: GoogleFonts.inter(
            fontSize: 36,
            fontWeight: FontWeight.normal,
            color: ProjectThemeColors.black,
          ),
          header: GoogleFonts.inter(
            fontSize: 20,
            fontWeight: FontWeight.normal,
            color: ProjectThemeColors.black,
          ),
          subHeader: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: ProjectThemeColors.black,
          ),
          label: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: ProjectThemeColors.black,
          ),
          caption: GoogleFonts.inter(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: ProjectThemeColors.black,
          ),
        ),
      ],
    );
  }
}
