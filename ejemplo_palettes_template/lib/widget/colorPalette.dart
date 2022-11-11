import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorPalette extends StatelessWidget {
  const ColorPalette({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 4,
          child: GestureDetector(
            onTap: () {
              print("hola rojo");
            },
            child: Container(
              height: 100,
              color: Colors.red,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: GestureDetector(
            onTap: () {
              print("hola azul");
            },
            child: Container(
              height: 100,
              color: Colors.blue,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: () {
              print("hola rojo");
            },
            child: Container(
              height: 100,
              color: Colors.red,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () {
              print("hola azul");
            },
            child: Container(
              height: 100,
              color: Colors.blue,
            ),
          ),
        )
      ],
    );
  }
}
