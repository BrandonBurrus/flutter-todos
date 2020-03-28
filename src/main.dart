import 'package:flutter/material.dart';
import 'package:simple_todos/widgets/todos.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  build(BuildContext context) {
    return MaterialApp(
        title: 'Simple to-dos',
        home: Scaffold(
            body: SafeArea(
                child: Center(
          child: Todos(),
        ))));
  }
}
