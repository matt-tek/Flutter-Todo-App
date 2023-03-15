import 'package:flutter/material.dart';
import 'package:todo_app/todo.dart';

class Todo {
  String? id;
  String? data;
  bool isDone;

  Todo({
    required this.id,
    required this.data,
    this.isDone = false
  });

  static List<Todo> todolist() {
    return [
      Todo(id: '0', data: "hub presentation", isDone: true),
    ];
  }
}