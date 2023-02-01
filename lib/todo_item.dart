import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'todo.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;
  final Function(Todo) onTap;
  final Function(Todo) onTapDelete;

  const TodoItem({
    Key? key,
    required this.todo,
    required this.onTap,
    required this.onTapDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: todo.isDone
          ? const Icon(
              Icons.check_circle,
              color: Colors.green,
            )
          : const Icon(Icons.check_circle_outline),
      onTap: () {
        onTap(todo);
      },
      title: Text(
        todo.title,
        style: TextStyle(color: todo.isDone ? Colors.grey : Colors.black),
      ),
      subtitle: Text(
        DateFormat.yMMMd()
            .format(DateTime.fromMillisecondsSinceEpoch(todo.dateTime)),
        style: TextStyle(color: todo.isDone ? Colors.grey : Colors.black),
      ),
      trailing: todo.isDone
          ? GestureDetector(
              onTap: () {
                onTapDelete(todo);
              },
              child: const Icon(Icons.delete_forever),
            )
          : null,
    );
  }
}
