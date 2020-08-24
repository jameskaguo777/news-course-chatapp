import 'package:flutter/material.dart';
import 'package:sheria_pocket/resources/colors.dart';

class MultimediaWidget extends StatefulWidget {
  MultimediaWidget({Key key}) : super(key: key);

  _MultimediaWidget createState() => _MultimediaWidget();
}

class _MultimediaWidget extends State<MultimediaWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: coolGrey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: double.maxFinite,
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
