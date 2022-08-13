import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class TodoView extends StatelessWidget {
  TodoView({Key? key}) : super(key: key);
  final txtController = TextEditingController();
  final ctrl = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX TODO'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 180,
                child: TextField(
                  controller: txtController,
                  decoration: const InputDecoration(
                    labelText: 'Todo',
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  String item = txtController.text;
                  if (item.isEmpty) {
                    Get.snackbar(
                      'Info',
                      'Please enter a todo',
                      snackPosition: SnackPosition.TOP,
                      colorText: Colors.red,
                      icon: const Icon(
                        Icons.error,
                        color: Colors.red,
                      ),
                    );
                    return;
                  }
                  Get.find<HomeController>().addItem(txtController.text);
                  txtController.clear();
                },
              ),
            ],
          ),
          GetBuilder<HomeController>(
            builder: (_) {
              return Expanded(
                child: ListView.builder(
                  itemCount: Get.find<HomeController>().items.length,
                  itemBuilder: (context, index) {
                    String item =  Get.find<HomeController>().items[index];
                    return ListTile(
                      title: Text(item),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          Get.find<HomeController>().removeItem(item);
                        },
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
