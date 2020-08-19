import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title : "Todo List",
      theme : ThemeData(
        primarySwatch : Colors.teal,
      ),
      home : TodoApp(),
    );
  }
}


class TodoApp extends StatefulWidget{
  @override
  _TodoApp createState() => _TodoApp();
}

class _TodoApp extends State<TodoApp>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar : AppBar(
        title : Text("To Do"),
      ),
      body : Center(
        child : Text("This is going to be a To-Do App"),
      ),
      bottomNavigationBar : BottomNavigationBar(
        items : 
      ),
    );
  }
}
