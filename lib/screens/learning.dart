import 'package:flutter/material.dart';
import 'package:sheria_pocket/resources/constants.dart';
import 'package:sheria_pocket/widget/app_bar.dart';
import 'package:sheria_pocket/widget/drawer.dart';

class Learning extends StatefulWidget{
Learning({Key key}) : super(key: key);

_Learning createState() => _Learning();
}

class _Learning extends State<Learning>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: DrawerWidget(userName: USER['userName'], url: USER['dp'], isUser: USER['isUser'],),
        appBar: PreferredSize(preferredSize: Size(50, 50),
          child: AppBarWidget(title: 'Learning')),    
      )
    );
  }


}