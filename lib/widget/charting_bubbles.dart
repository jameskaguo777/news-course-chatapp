import 'package:flutter/material.dart';
import 'package:sheria_pocket/resources/colors.dart';

class CharttingBubbles extends StatefulWidget {
  CharttingBubbles({Key key}) : super(key: key);

  _CharttingBubbles createState() => _CharttingBubbles();
}

class _CharttingBubbles extends State<CharttingBubbles> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [],
    );
  }

  List<Widget> _receivedMessage() {
    return [
      Flexible(
        fit: FlexFit.loose,
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: coolGrey,
        )
      ),
    ];
  }
}
