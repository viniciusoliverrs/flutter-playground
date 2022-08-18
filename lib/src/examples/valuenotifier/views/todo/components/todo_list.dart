// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_playground/src/examples/valuenotifier/models/task_model.dart';

class TodoList extends StatelessWidget {
  final List<TaskModel> tasks;

  const TodoList({
    Key? key,
    required this.tasks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
         ListView.builder(
          itemCount: tasks.length,
          shrinkWrap: true,
          itemBuilder: (_, index) {
            final task = tasks[index];
            return ListTile(
              title: Text(task.title),
              trailing: IconButton(
                icon: const Icon(Icons.remove),
                onPressed: () {},
              ),
            );
          },
        );
  }
}
