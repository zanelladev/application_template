import 'package:flutter/widgets.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

import 'src/app_injections.dart';
import 'src/app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  usePathUrlStrategy();

  AppInjections.registerBinds();

  runApp(const AppWidget());
}
