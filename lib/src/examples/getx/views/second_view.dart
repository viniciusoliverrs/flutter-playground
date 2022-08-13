
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SecondView extends StatelessWidget {
  const SecondView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX'),
      ),
      body: Center(
        child: Text('Second View'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar('Snackbar', 'This is a snackbar');
        },
        child: const Icon(Icons.notifications),
      ),
    );
  }
}