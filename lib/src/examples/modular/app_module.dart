import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_playground/src/examples/modular/second_page.dart';

import 'home_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute("/", child: (_, args) => const HomePage()),
        ChildRoute("/second", child: (_, args) => const SecondPage()),
      ];
}
