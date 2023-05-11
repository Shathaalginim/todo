// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
// ignore: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class mytask extends StatefulWidget {
  const mytask({super.key});

  @override
  State<mytask> createState() => _mytaskState();
}

class _mytaskState extends State<mytask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 34, 156, 142),
        body: Container(
          padding: EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.playlist_add_check,
                    size: 40,
                    color: Colors.white,
                  ),
                  Text(
                    "ToDo",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Text(
                "4 Task",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ))
            ],
          ),
        ));
  }
}
