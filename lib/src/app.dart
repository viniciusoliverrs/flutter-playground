import 'package:flutter/material.dart';
import 'package:playground_app/src/providers/counter_provider.dart';
import 'package:provider/provider.dart';

import 'pages/home_page.dart';
import 'stores/counter_store.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterProvider>(
          create: (_) => CounterProvider(store: CounterStore()),
        ),
      ],
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
