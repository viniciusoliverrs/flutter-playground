import 'package:flutter/material.dart';

import 'views/todo/todo_view.dart';

class ValueApp extends StatelessWidget {
  const ValueApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoView(),
    );
  }
}
