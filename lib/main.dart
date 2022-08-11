import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_playground/src/examples/modular/app_widget.dart';
import 'package:flutter_playground/src/examples/modular/app_module.dart';

// void main() => BlocOverrides.runZoned(
//       () => runApp(const BlocApp()),
//       blocObserver: AppBlocObserver(),
//     );

// void main() => runApp(const MaterialApp(home: MyHome()));

void main() => runApp(
      ModularApp(
        module: AppModule(),
        child: const AppWidget(),
      ),
    );