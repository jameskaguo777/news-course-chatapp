import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget{
  TextWidget({this.text, this.color, this.font, this.fontSize, this.overflow, this.maxLines });

  final String text;
  final String font;
  final double fontSize;
  final color;
  final overflow;
  final maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      maxLines: maxLines,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: font,
        color: color
      ),
    );
  }
}
