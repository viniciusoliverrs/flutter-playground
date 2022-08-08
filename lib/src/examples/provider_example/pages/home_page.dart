import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/counter_provider.dart';
import 'display_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(builder: (__, provider, _) {
      return Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  '${provider.store.number}',
                  style: const TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: provider.decrement,
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
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: provider.increment,
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
