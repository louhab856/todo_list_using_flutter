import 'package:flutter/material.dart';
import './task_form.dart';
class AddTaskButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return TaskForm();
          },
        );
      },
      child: Icon(Icons.add),
      backgroundColor: Colors.pink,
    );
  }
}
