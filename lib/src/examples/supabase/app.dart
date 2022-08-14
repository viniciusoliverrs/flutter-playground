
import 'package:flutter/material.dart';
import 'package:flutter_playground/src/examples/supabase/views/splash/splash_view.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Supabase Flutter',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const SplashView(),
    );
  }
}