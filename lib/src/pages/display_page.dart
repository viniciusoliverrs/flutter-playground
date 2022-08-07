import 'package:flutter/material.dart';
import 'package:playground_app/src/providers/counter_provider.dart';
import 'package:provider/provider.dart';

class DisplayPage extends StatelessWidget {
  const DisplayPage({Key? key}) : super(key: key);

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
                Padding(
                  padding: const EdgeInsets.all(18),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios, size: 50),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
