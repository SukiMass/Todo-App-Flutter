import 'package:flutter/material.dart';
import '../colors/colors.dart';
import '../model/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onTodoChanged;
  final onDeleteItem;

  final ToDo imagePath;

  const ToDoItem({
    super.key,
    required this.todo,
    required this.onTodoChanged,
    required this.onDeleteItem,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
      subtitle: Container(
          child: TextButton(
              onPressed: () {},
              child: Image.asset(
                todo.imagePath!,
                height: 200,
                width: 200,
              ))),
      trailing: Container(
        padding: EdgeInsets.only(bottom: 1),
        margin: EdgeInsets.symmetric(vertical: 11),
        height: 35,
        width: 35,
        decoration:
            BoxDecoration(color: tdRed, borderRadius: BorderRadius.circular(5)),
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
    );
  }
}
