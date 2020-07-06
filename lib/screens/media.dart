import 'package:flutter/material.dart';
import 'package:sheria_pocket/resources/constants.dart';
import 'package:sheria_pocket/widget/app_bar.dart';
import 'package:sheria_pocket/widget/drawer.dart';

class Media extends StatefulWidget{
Media({Key key}) : super(key: key);

_Media createState() => _Media();
}

class _Media extends State<Media>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: DrawerWidget(userName: USER['userName'], url: USER['dp'], isUser: USER['isUser'],),
        appBar: PreferredSize(preferredSize: Size(50, 50),
          child: AppBarWidget(title: 'Media')),    
      )
    );
  }


}