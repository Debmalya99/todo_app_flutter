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
  List<String> _todoItems = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do"),
      ),
      body: _buildTodoList(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.event_available), title: Text("To-Do")),
          BottomNavigationBarItem(
              icon: Icon(Icons.event_note), title: Text("To Remember"))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTodoItem,
        child: const Icon(Icons.add),
        tooltip: "Add event",
      ),
    );
  }

  void _addTodoItem() {
    /*
    What this function does: This function simply adds a pregenerated todo item.
    But it does not care about any interface changes etc. Its job is to append the array that's all
     */
    setState(() {
      int index = _todoItems.length;
      _todoItems.add('Event ' + index.toString());
    });
  }

  Widget _buildTodoList() {
    return ListView.builder(itemBuilder: (context, index) {
      // What this itemBuilder does in my opinion:
      /*
        I think, it means itemBuilder takes as input a function, which we give here
        as an anonymous lambda, as how the individual list items will be built.
         */
      if (index < _todoItems.length) {
        return _buildTodoItem(_todoItems[index]);
      }
    });
  }

  Widget _buildTodoItem(String todoItem) {
    return Card(
      child: ListTile(
        title: Text(todoItem),
      ),
    );
  }
}
