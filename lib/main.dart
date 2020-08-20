import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Todo List",
      theme: ThemeData.dark(),
      home: TodoApp(),
    );
  }
}

class TodoApp extends StatefulWidget {
  @override
  _TodoApp createState() => _TodoApp();
}

class _TodoApp extends State<TodoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          _listItem("This is sample event 1"),
          _listItem("This is sample event 2"),
          _listItem("This is sample event 3"),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.event_available), title: Text("To-Do")),
          BottomNavigationBarItem(
              icon: Icon(Icons.event_note), title: Text("To Remember"))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: const Icon(Icons.add),
        tooltip: "Add event",
      ),
    );
  }
  Widget _listItem(String text){
    return Container(
      height : 50,
      color : Colors.teal[800],
      child : Center(child : Text(text)),
    );
  }
}
