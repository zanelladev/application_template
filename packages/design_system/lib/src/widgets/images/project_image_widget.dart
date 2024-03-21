import 'package:flutter/material.dart';

class ProjectImage extends StatelessWidget {
  final String path;

  const ProjectImage({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      package: 'design_system',
    );
  }
}
