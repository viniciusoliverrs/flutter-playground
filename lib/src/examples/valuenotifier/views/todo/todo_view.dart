import 'package:flutter/material.dart';
import 'package:flutter_playground/src/examples/valuenotifier/controllers/task_controller.dart';
import 'package:flutter_playground/src/examples/valuenotifier/views/todo/components/todo_list.dart';

import '../../states/task_state.dart';

class TodoView extends StatelessWidget {
  TodoView({Key? key}) : super(key: key);
  TaskController controller = TaskController();
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TODO List"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        spreadRadius: 5,
                        blurRadius: 4,
                      )
                    ]),
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                      controller: textController,
                    )),
                    const SizedBox(width: 30),
                    IconButton(
                        onPressed: () async{
                          final title = textController.text;
                          if (title.isEmpty) return;
                          await controller.addTask(title);
                          textController.clear();
                        },
                        icon: const Icon(Icons.add))
                  ],
                ),
              ),
              ValueListenableBuilder<TaskState>(
                  valueListenable: controller,
                  builder: (context, state, child) {
                    if (state is TaskLoading) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    return TodoList(tasks: state.tasks);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
