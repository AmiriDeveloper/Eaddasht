// ignore_for_file: non_constant_identifier_names

import 'package:eaddasht/task_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddTasksScreen extends StatelessWidget {
  final Function AddTextCallBack;
  AddTasksScreen(this.AddTextCallBack);

  @override
  Widget build(BuildContext context) {
    String? AddText;
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.indigo[400],
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              AddText = newText;
            },
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false).addTask(AddText!);
              Navigator.pop(context);
            },
            style: TextButton.styleFrom(
                backgroundColor: Colors.teal[400], primary: Colors.white),
            child: const Text("Add"),
          ),
        ],
      ),
    );
  }
}
