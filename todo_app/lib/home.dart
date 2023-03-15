import 'package:flutter/material.dart';
import 'package:todo_app/todo.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo_app/todo_list.dart';
import './database.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todoList = Todo.todolist();
  List<Todo> _foundToDo = [];
  final _todoController = TextEditingController();
  @override
  void initState() {
    _foundToDo = todoList;
    super.initState();
  }

  void _handleTodoChange(Todo todo) {
      setState(() {
        todo.isDone = !todo.isDone;
      });
  }

  void _deleteTodo(Todo todo) {
    setState(() {
      todoList.removeWhere((item) => item.id == todo.id);
    });
  }

  void _addTodo(String str) {
    var len = todoList.length;
    setState(() {
      todoList.add(Todo(
        id: (len + 1).toString(),
        data: str
      ));
    });
    _todoController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          title: const Text("To-Do list"),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.add)
            )
          ],
        ),
        body: Stack(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15
                ),
                child: Column(
                  children: [
                    Expanded(
                        child: ListView(
                          children: [
                            for (Todo i in todoList)
                              TodoItem(todo: i,
                                  onChange: _handleTodoChange,
                                  onDelete: _deleteTodo
                              ),
                          ],
                        )
                    )

                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(children: [
                  Expanded(child: Container(
                    padding: const EdgeInsets.only(
                        left: 20
                    ),
                    margin: const EdgeInsets.only(
                        bottom: 20,
                        left: 20,
                        right: 20
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextField(
                      controller: _todoController,
                      decoration: const InputDecoration(
                          hintText: "Add new todo...",
                          border: InputBorder.none
                      ),
                    ),
                  )
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        bottom: 20,
                        right: 20
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45)
                    ),
                    child: ElevatedButton(
                      child: const Icon(
                        Icons.add,
                        size: 20,
                      ),
                      onPressed: () {
                        print(_todoController.text);
                        _addTodo(_todoController.text);
                      },
                      //print("button pressed");
                    ),
                  )
                ],),
              )
            ]
        )
    );
  }
}
