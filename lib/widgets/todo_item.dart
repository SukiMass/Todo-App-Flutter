import 'package:flutter/material.dart';
import '../colors/colors.dart';
import '../model/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onTodoChanged;
  final onDeleteItem;

  const ToDoItem(
      {super.key,
      required this.todo,
      required this.onTodoChanged,
      required this.onDeleteItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          // print('to do is clicked');
          onTodoChanged(todo);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
        ),
        iconColor: tdBlue,
        title: Text(
          todo.todoText!,
          style: TextStyle(
              color: tdBlack,
              fontSize: 16,
              decoration: todo.isDone ? TextDecoration.lineThrough : null),
        ),
        trailing: Container(
          padding: EdgeInsets.only(bottom: 1),
          margin: EdgeInsets.symmetric(vertical: 11),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              color: tdRed, borderRadius: BorderRadius.circular(5)),
          child: IconButton(
            iconSize: 20,
            color: Colors.white,
            icon: Icon(Icons.delete),
            onPressed: () {
              // print('Delete is clicked');
              onDeleteItem(todo.id);
            },
          ),
        ),
      ),
    );
  }
}
