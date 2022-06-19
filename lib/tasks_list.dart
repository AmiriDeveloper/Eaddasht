import 'package:eaddasht/task_data.dart';
import 'package:eaddasht/tasks_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, TaskData, child) {
        return ListView.builder(
            itemCount: TaskData.tasks.length,
            itemBuilder: (context, index) {
              return TasksTist(
                isChecked: TaskData.tasks[index].isDone,
                taskTitle: TaskData.tasks[index].name,
                checkboxChange: (bool? newValue) {
                  TaskData.updateTask(TaskData.tasks[index]);
                },
                listTileDelet: () {
                  TaskData.deleteTask(TaskData.tasks[index]);
                },
              );
            });
      },
    );
  }
}
