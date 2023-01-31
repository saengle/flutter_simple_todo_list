import 'package:flutter/material.dart';
import 'package:todolist/create_screen.dart';

import 'todo.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final todos = [
    Todo(title: 'title1', dateTime: 123111),
    Todo(title: 'title2', dateTime: 1231131),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo 리스트'),
      ),
      body: ListView(
          children: todos
              .map((todo) => ListTile(
                    title: Text(todo.title),
                    subtitle: Text('${todo.dateTime}'),
                  ))
              .toList()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CreateScreen()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
