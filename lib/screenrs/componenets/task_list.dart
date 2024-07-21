import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/task_provider.dart'; // Assuming this is the correct path
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final taskProvider = context.watch<TaskProvider>(); 

    return Expanded(
      flex: 5,
      child: Container(
        child: ListView.builder(
          padding: EdgeInsets.only(left: 16),
          itemCount: taskProvider.tasks.length,
          itemBuilder: (context, index) {
            final task = taskProvider.tasks[index];
            return Container(
              child: Dismissible(
                key: Key(index.toString()),
                background:Container(
                  color: Theme.of(context).colorScheme.error,
                  child: const Icon(
                    Icons.delete,
                    color: Colors.white,
                    size: 40,
                    ),
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(right: 20),
                ) ,
                direction: DismissDirection.endToStart,
                onDismissed: (direction){
                  taskProvider.removeTasks(index);
                },
                child: ListTile(
                  title: Text(
                    task.title,
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  trailing: Image(
                    image: AssetImage(task.completed ? 'assets/icons/completed.png' : 'assets/icons/non-completed.png'),
                  ),
                  onTap: () {
                    taskProvider.makeTaskCompleted(index);
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
