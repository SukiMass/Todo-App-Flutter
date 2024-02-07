import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:to_do_app/model/todo.dart';
import 'colors/colors.dart';
import 'screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const SystemUiOverlayStyle(statusBarColor: tdbColor);
    return MaterialApp(debugShowCheckedModeBanner: false, home:Home());
  }
}
