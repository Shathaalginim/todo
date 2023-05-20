import 'package:flutter/material.dart';
import 'package:todo_app/Widgets/Task_list.dart';
import 'package:provider/provider.dart';

import '../Models/Task_Data.dart';

class Tasks_list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context, index) {
            return Task_list(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkboxChange: (newValue) {
                taskData.updateTask(taskData.tasks[index]);
              },
              // listTileDelete: () {
              //   taskData.deleteTask(taskData.tasks[index]);
              // },
            );
          },
        );
      },
    );
  }
}
