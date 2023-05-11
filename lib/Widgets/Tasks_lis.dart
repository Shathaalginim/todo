import 'package:flutter/material.dart';
import 'package:todo_app/Widgets/Task_list.dart';

import '../Models/task.dart';

class Tasks_list extends StatefulWidget {
  const Tasks_list({
    super.key,
  });

  @override
  State<Tasks_list> createState() => _Tasks_listState();
}

class _Tasks_listState extends State<Tasks_list> {
  List<Task> tasks = [
    Task(name: "Go to the shop"),
    Task(name: "clean"),
    Task(name: "Learn flutter")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return Task_list(
              taskTitle: tasks[index].name,
              isChecked: tasks[index].isDone,
              checkboxChange: (newvalue) {
                setState(() {
                  tasks[index].doneChange();
                });
              });
        });
  }
}


//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         Task_list(
//           taskTitle: tasks[0].name,
//           isChecked: tasks[0].isDone,
//         ),Task_list(
//           taskTitle: tasks[1].name,
//           isChecked: tasks[1].isDone,
//         ),Task_list(
//           taskTitle: tasks[2].name,
//           isChecked: tasks[2].isDone,
//         )
//       ],
//     );
//   }
// }
