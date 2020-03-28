import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../models/todo.dart';

class Todos extends StatefulWidget {
  Todos({Key key}) : super(key: key);

  @override
  _TodosState createState() => _TodosState();
}

class _TodosState extends State<Todos> {
  List<Todo> _todos = <Todo>[
    Todo(description: "Do the dishes"),
    Todo(description: "Practice playing guiter"),
    Todo(description: "Vacuum"),
    Todo(description: "Another test")
  ];

  void _addTodo(Todo newTodo) {
    if (newTodo.description.length > 0) {
      setState(() {
        _todos.add(newTodo);
      });
    }
  }

  final TextEditingController _newTodoController = TextEditingController();

  @override
  void dispose() {
    _newTodoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
                _todos.map((todo) => Text(todo.description)).toList().toList(),
          ),
        ),
        TextField(
          controller: _newTodoController,
          onSubmitted: (newTodo) {
            _addTodo(Todo(description: newTodo));
            _newTodoController.clear();
          },
        ),
      ],
    );
  }
}
