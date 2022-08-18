import 'package:flutter_playground/src/examples/valuenotifier/models/task_model.dart';

abstract class TaskState {
  abstract List<TaskModel> tasks;
}

class TaskInitial implements TaskState {
  @override
  List<TaskModel> tasks;
  TaskInitial(this.tasks);
}

class TaskLoading implements TaskState {
  @override
  List<TaskModel> tasks = [];
}
