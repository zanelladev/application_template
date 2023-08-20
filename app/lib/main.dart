import 'package:flutter/material.dart';
import 'src/app_module.dart';
import 'src/app_widget.dart';
import 'package:dependencies/dependencies.dart';

void main() {
  return runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}
