import 'package:flutter/cupertino.dart';

class ColorPalette extends StatelessWidget {
  const ColorPalette(
      {Key? key,
      required this.opacity,
      required this.color1,
      required this.color2,
      required this.color3,
      required this.color4,
      required this.callback})
      : super(key: key);

  final double opacity;
  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;
  final Function(Color) callback;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 4,
          child: GestureDetector(
            onTap: () {
              callback(color1);
            },
            child: Container(
              height: 100,
              color: color1.withOpacity(opacity),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: GestureDetector(
            onTap: () {
              callback(color2);
            },
            child: Container(
              height: 100,
              color: color2.withOpacity(opacity),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: () {
              callback(color3);
            },
            child: Container(
              height: 100,
              color: color3.withOpacity(opacity),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () {
              callback(color4);
            },
            child: Container(
              height: 100,
              color: color4.withOpacity(opacity),
            ),
          ),
        )
      ],
    );
  }
}
