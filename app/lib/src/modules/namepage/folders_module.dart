import 'package:dependencies/dependencies.dart';
import 'presenter/ui/namepage_page.dart';

class NamePageModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute,
            child: (_, __) => const NamePagePage()),
      ];
}
