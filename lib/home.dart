import 'package:flutter/material.dart';
import 'package:playground_app/counter_controller.dart';
import 'package:provider/provider.dart';

import 'display_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterController>(builder: (__, countProvider, _) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Column(
          children: [
            Center(
              child: Text('${countProvider.store.number}'),
            ),
            ElevatedButton(
              child: const Text('Next'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DisplayPage(),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: countProvider.increment,
          child: const Icon(Icons.add),
        ),
      );
    });
  }
}
