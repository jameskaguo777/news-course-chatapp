import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget{
  TextWidget({this.text, this.color, this.font, this.fontSize});

  final String text;
  final String font;
  final double fontSize;
  final String color;
  var _color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: 'Poppins-Medium',
        color: _color
      ),
    );
  }
}
