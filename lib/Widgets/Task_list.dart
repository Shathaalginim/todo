import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Task_list extends StatefulWidget {
  @override
  State<Task_list> createState() => _Task_listState();
}

class _Task_listState extends State<Task_list> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          "taskTitle",
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: TaskCheckBox(isChecked, (bool? newvalue) {
          setState(() {
            isChecked = newvalue!;
          });
        }));
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool? checkBoxState;
  final void Function(bool?) checkboxChange;

  TaskCheckBox(
    this.checkBoxState,
    this.checkboxChange,
  );

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.teal[400],
      value: checkBoxState,
      onChanged: checkboxChange,
    );
  }
}
