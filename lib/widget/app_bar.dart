import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sheria_pocket/resources/colors.dart';
import 'package:sheria_pocket/widget/text.dart';

class AppBarWidget extends StatefulWidget{

  final String title;

  AppBarWidget({Key key, @required this.title}) : super(key: key);

  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        title: TextWidget(
                text: widget.title,
                font: 'Poppins-Bold',
                fontSize: 25,
                color: Colors.black,
              ),
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context){
            return IconButton(
                      icon: Container(
                        height: 25.0,
                        child: SvgPicture.asset('assets/images/menu.svg') ,
                      ),
                      // onPressed: () => Navigator.pop(context),
                      onPressed: () => Scaffold.of(context).openDrawer(),
                      tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                    );
            }
          ),
      elevation: 0.0,
      );
  }
}