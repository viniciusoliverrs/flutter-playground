import 'package:flutter/material.dart';
import 'package:flutter_playground/src/examples/valuenotifier/models/task_model.dart';

import '../states/task_state.dart';

class TaskController extends ValueNotifier<TaskState> {
  List<TaskModel> tasks = [];
  TaskController() : super(TaskInitial([]));

  Future<void> addTask(String title) async{
    value = TaskLoading();
    tasks.add(TaskModel(title, false));
    await Future.delayed(const Duration(seconds: 2));
    value = TaskInitial(tasks);
  }

  removeTask(String id) {}
}
