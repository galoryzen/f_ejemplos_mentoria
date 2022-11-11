import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    //Make a centered text that displays the counter
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Center(
          child: Text(
            'You have pushed the button this many times: $counter',
            style: TextStyle(fontSize: 20),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            counter++;
            print(counter);
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
