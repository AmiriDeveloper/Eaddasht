import 'package:eaddasht/task.dart';
import 'package:flutter/material.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "go shopping"),
    Task(name: "buey a car"),
    Task(name: "read a book "),
  ];

  void addTask(String AddText) {
    tasks.add(Task(name: AddText));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.doneChnge();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
