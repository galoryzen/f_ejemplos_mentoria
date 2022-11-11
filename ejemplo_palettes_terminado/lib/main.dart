import 'package:flutter/material.dart';
//import colorPalette.dart;
import './widget/colorPalette.dart';
import 'dart:math' as math;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Add Widget Dynamically',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> _cardList = [];
  double counter = 0.1;

  void _addCardWidget() {
    setState(() {
      _cardList.add(_card());
      counter = counter + 0.1;
      print(counter);
      if (counter > 1) {
        counter = 0.1;
      }
    });
  }

  void callback(Color color) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('You tapped on this color'),
      backgroundColor: color.withOpacity(1.0),
      duration: Duration(milliseconds: 20),
    ));
  }

  Widget _card() {
    return Container(
      height: 80,
      margin: EdgeInsets.only(top: 5, left: 8, right: 8),
      child: Center(
        child: ColorPalette(
          opacity: counter,
          color1: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()),
          color2: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()),
          color3: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()),
          color4: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()),
          callback: callback,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Widget Dynamically"),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: _cardList.length,
            itemBuilder: (context, index) {
              return _cardList[index];
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addCardWidget,
        tooltip: 'Add',
        child: Icon(Icons.add),
      ),
    );
  }
}
