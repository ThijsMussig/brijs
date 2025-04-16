import 'package:flutter/material.dart';
import 'task.dart'; // Importeer het Task-model

class TaskTile extends StatelessWidget {
  final Task task;
  final Function(bool?)? toggleCheckbox;

  const TaskTile({required this.task, required this.toggleCheckbox, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.name,
        style: TextStyle(
          fontSize: 18.0,
          decoration: task.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: task.isDone,
        onChanged: toggleCheckbox,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3.0), // Maakt het wat ronder
        ),
        side: const BorderSide(
          color: Colors.grey, // Grijze omlijning
          width: 2.0,
        ),
        activeColor: Colors.lightBlueAccent,
        checkColor: Colors.white,
      ),
    );
  }
}
