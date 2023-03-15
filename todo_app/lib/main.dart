import 'package:flutter/material.dart';
import 'package:todo_app/todo_list.dart';
import 'package:todo_app/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final todoList = Todo.todolist();
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}
