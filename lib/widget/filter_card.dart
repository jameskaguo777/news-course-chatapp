import 'package:flutter/material.dart';

import 'package:sheria_pocket/resources/colors.dart';
import 'package:sheria_pocket/widget/text.dart';

class FilterCard extends StatefulWidget{
FilterCard({Key key, @required this.filterName, @required this.active}) : super(key: key);

final String filterName;
final bool active;

_FilterCard createState() => _FilterCard();

  // @override
  // State<StatefulWidget> createState() {
  //   
  //   throw UnimplementedError();
  // }
}

class _FilterCard extends State<FilterCard>{
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      children: [
        Card(
          elevation: 0,
          
          color: widget.active ? oceanBlueColor : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(
              color: oceanBlueColor,
              width: 2.0,
            )
          ),
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
            child: TextWidget(
              text: widget.filterName,
              font: 'Poppins-Bold',
              fontSize: 14,
              color: widget.active ? Colors.white : oceanBlueColor,
            ),
          ),
        ),
      ]
    );
  }

}