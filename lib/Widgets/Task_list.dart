import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Task_list extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkboxChange;

  Task_list(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxChange});
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.teal[400],
          value: isChecked,
          onChanged: checkboxChange,
        ));
  }
}
