import 'package:flutter/material.dart';
import 'package:todo_app_demo/helpers/constants.dart' as helper;

void main() => runApp(TodoApp());

class TodoApp extends StatelessWidget {

  final theme = ThemeData();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo App',
      initialRoute: helper.initialRoute,
      routes: helper.routes,
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          secondary: const Color(0xFFF896D9),
          primary: const Color(0xFF3C5BC2)
        )
      ),
    );
  }
}