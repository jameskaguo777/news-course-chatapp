import 'package:flutter/material.dart';
import 'package:sheria_pocket/resources/constants.dart';
import 'package:sheria_pocket/widget/app_bar.dart';
import 'package:sheria_pocket/widget/drawer.dart';

class News extends StatefulWidget{
News({Key key}) : super(key: key);

_News createState() => _News();

}

class _News extends State<News>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: DrawerWidget(userName: USER['userName'], url: USER['dp'], isUser: USER['isUser'],),
        appBar: PreferredSize(preferredSize: Size(50, 50),
          child: AppBarWidget(title: 'News')),    
      )
    );
  }

}