import 'package:flutter/material.dart';
import 'package:playground_app/counter_controller.dart';
import 'package:provider/provider.dart';

class DisplayPage extends StatelessWidget {
  const DisplayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterController>(builder: (__, provider, _) {
      return Scaffold(
        body: Center(
          child: Text(
            "${provider.store.number}",
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      );
    });
  }
}
