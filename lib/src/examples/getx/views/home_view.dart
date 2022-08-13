import 'package:flutter/material.dart';
import 'package:flutter_playground/src/examples/getx/views/todo_view.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class GetApp extends StatelessWidget {
  const GetApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(() => Text(
                      "${controller.counter}",
                      style: const TextStyle(fontSize: 60),
                    )),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: controller.increment,
                  child: const Text('Increment')),
              ElevatedButton(
                  onPressed: controller.decrement,
                  child: const Text('Decrement')),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(TodoView()),
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
