import 'package:flutter/material.dart';

import 'ui/pages/home/home_page.dart';

class WebApp extends StatelessWidget {
  const WebApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
