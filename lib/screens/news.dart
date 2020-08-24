import 'package:flutter/material.dart';
import 'package:sheria_pocket/resources/constants.dart';
import 'package:sheria_pocket/widget/app_bar.dart';
import 'package:sheria_pocket/widget/drawer.dart';
import 'package:sheria_pocket/widget/news_tiles.dart';

class News extends StatefulWidget {
  News({Key key}) : super(key: key);

  _News createState() => _News();
}

class _News extends State<News> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            drawer: DrawerWidget(
              userName: USER['userName'],
              url: USER['dp'],
              isUser: USER['isUser'],
            ),
            appBar: PreferredSize(
                preferredSize: Size(50, 50),
                child: AppBarWidget(title: 'News')),
            body: Container(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              width: double.maxFinite,
              height: double.maxFinite,
              child: Column(
                children: [
                  _body(),
                ],
              ),
            )));
  }

  Widget _body() {
    return Expanded(
          child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext contest, int index) {
            return NewsTiles(
              date: '12-8-2020',
              subtitle: 'Test subtile with great taste',
              title: 'Title with great taste',
              url: 'https://miro.medium.com/max/3150/1*J_BOSSzUz4qBvAjFb-YgZA@2x.jpeg', 
              routeName: '/detail_news',
            );
          }),
    );
  }
}
