import 'package:flutter/material.dart';

class ProjectTextStylesExtension extends ThemeExtension<ProjectTextStylesExtension> {
  final TextStyle title;
  final TextStyle header;
  final TextStyle subHeader;
  final TextStyle label;
  final TextStyle caption;

  ProjectTextStylesExtension({
    required this.title,
    required this.header,
    required this.subHeader,
    required this.label,
    required this.caption,
  });

  @override
  ProjectTextStylesExtension copyWith({
    TextStyle? title,
    TextStyle? header,
    TextStyle? subHeader,
    TextStyle? label,
    TextStyle? caption,
  }) {
    return ProjectTextStylesExtension(
      title: title ?? this.title,
      header: header ?? this.header,
      subHeader: subHeader ?? this.subHeader,
      label: label ?? this.label,
      caption: caption ?? this.caption,
    );
  }

  @override
  ThemeExtension<ProjectTextStylesExtension> lerp(
    covariant ThemeExtension<ProjectTextStylesExtension>? other,
    double t,
  ) {
    return this;
  }
}
