import 'package:flutter/material.dart';
import 'package:todo_app/todo_list.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;
  final onChange;
  final onDelete;
  const TodoItem({Key? key,
    required this.todo,
    required this.onChange,
    required this.onDelete
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(6.5),
      child: ListTile(
        onTap: () {
          onChange(todo);
          //print("cliked on todo");
        },
          //onTap: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
        tileColor: Colors.white,
        leading: Icon(
            todo.isDone? Icons.check_box : Icons.check_box_outline_blank,
            color: Colors.blue),
        title: Text(
            todo.data!,
            style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            decoration: todo.isDone? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.red.shade500,
            borderRadius: BorderRadius.circular(5)
          ),
          child: IconButton(
            color: Colors.white,
            icon: const Icon(Icons.delete),
            iconSize: 18,
            onPressed: () {
              onDelete(todo);
              //print("delete item");
            },
          ),
        ),
      )
    );
  }
}

