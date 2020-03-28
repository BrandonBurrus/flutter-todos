import 'package:flutter/material.dart';
import 'widgets/todos.dart';

void main() => runApp(TodosApp());

class TodosApp extends StatelessWidget {
  @override
  build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('To-dos')),
            body: SafeArea(
                child: Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Todos()))));
  }
}
