import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/stores/counter_store.dart';
import 'pages/home_page.dart';
import 'providers/counter_provider.dart';

class ProviderApp extends StatelessWidget {
  const ProviderApp({Key? key}) : super(key: key);

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
