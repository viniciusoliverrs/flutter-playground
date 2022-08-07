import 'package:flutter/material.dart';
import 'package:playground_app/counter_controller.dart';
import 'package:provider/provider.dart';

import 'counter_store.dart';
import 'home.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterController>(
          create: (_) => CounterController(store: CounterStore()),
        ),
      ],
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
