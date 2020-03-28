import 'package:flutter/widgets.dart';
import 'package:simple_todos/models/todo.dart';

class Todos extends StatefulWidget {
  Todos({Key key}) : super(key: key);

  @override
  _TodosState createState() => _TodosState();
}

class _TodosState extends State<Todos> {
  List<Todo> todos = <Todo>[];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('My todos'),
    );
  }
}
