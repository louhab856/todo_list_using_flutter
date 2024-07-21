import 'package:flutter/material.dart';
import 'package:flutter_application_1/screenrs/componenets/Welcome.dart';
import './add_tasks_button.dart';
import './task_list.dart';
class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Welcome(name:'louhab ',avatar: 'assets/icons/avatar.png'),
        AddTaskButton(),
        TaskList()
      ],
    );
  }
}