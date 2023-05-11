import 'package:flutter/material.dart';
import 'package:todo_app/Widgets/Task_list.dart';

class Tasks_list extends StatefulWidget {
  const Tasks_list({
    super.key,
  });

  @override
  State<Tasks_list> createState() => _Tasks_listState();
}

class _Tasks_listState extends State<Tasks_list> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [Task_list()],
    );
  }
}
