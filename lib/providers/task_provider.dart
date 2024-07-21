import 'package:flutter/material.dart';
import '../models/task.dart';
class TaskProvider extends ChangeNotifier {

  List<Task> _tasks = [
    Task(
      title: 'My first task',
      completed: false,
    ),
  ];
  List<Task> get tasks {
    return _tasks;
  }
  void addTasks(task){
    _tasks.add(task);
    notifyListeners();
  }
  void removeTasks(index){
   _tasks.removeAt(index);
  notifyListeners();
  }
  void makeTaskCompleted(index){
    _tasks[index].completed = !_tasks[index].completed;
    notifyListeners();
  }
}
