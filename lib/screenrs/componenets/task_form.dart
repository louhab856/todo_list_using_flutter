import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/task_provider.dart';
import 'package:provider/provider.dart';
import '../../models/task.dart';

class TaskForm extends StatefulWidget {
  @override
  _TaskFormState createState() => _TaskFormState();
}

class _TaskFormState extends State<TaskForm> {
  final _formKey = GlobalKey<FormState>();
  final taskTitle = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            right: -40,
            top: -40,
            child: CircleAvatar(
              child: Icon(Icons.close),
              backgroundColor: Colors.red,
            ),
          ),
          Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: newMethod,
                      decoration: InputDecoration(hintText: "add task title"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.of(context).pop();
                          context.read<TaskProvider>().addTasks(
                              Task(title: taskTitle.text, completed: false));
                        }
                      },
                      child: Text('Ajouter'),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  TextEditingController get newMethod => taskTitle;
}
