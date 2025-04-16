import 'package:flutter/material.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart'; // Import Task model
import 'task_tile.dart';
import 'task.dart';// Import TaskTile widget

class TaskList extends StatelessWidget {
  final List<Task> tasks;
  final Function(bool?, int) toggleTaskDone;

  const TaskList({required this.tasks, required this.toggleTaskDone, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          task: tasks[index],
          toggleCheckbox: (bool? value) {
            toggleTaskDone(value, index);
          },
        );
      },
    );
  }
}
