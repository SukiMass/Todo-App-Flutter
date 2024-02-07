import 'package:flutter/material.dart';

class ToDo {
  String? imagePath;
  String? id;
  String? todoText;
  bool isDone;

  ToDo({this.id, this.todoText, this.isDone = false,this.imagePath});

  static List<ToDo> todoList() {
    return [
      ToDo(imagePath: 'images/img-1.jpg',id: '01', todoText: 'Morning Exercise', isDone: true),

      ToDo(imagePath: 'images/img-2.jpg',id: '02', todoText: 'Buy Groceries', isDone: true),

      ToDo(imagePath: 'images/img-3.jpg',
        id: '03',
        todoText: 'Check Emails',
      ),
      ToDo(imagePath: 'images/img-4.jpg',
        id: '04',
        todoText: 'Team Meeting',
      ),
      ToDo(
        imagePath: 'images/img-5.jpg',
        id: '05',
        todoText: 'Work on mobile apps for 2 hour',
      ),
    ];
  }
  
}
