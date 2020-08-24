import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sheria_pocket/resources/colors.dart';
import 'package:sheria_pocket/resources/constants.dart';
import 'package:sheria_pocket/widget/app_bar.dart';
import 'package:sheria_pocket/widget/chat_card.dart';
import 'package:sheria_pocket/widget/drawer.dart';
import 'package:sheria_pocket/widget/text.dart';

class LiveChat extends StatefulWidget {
  LiveChat({Key key}) : super(key: key);

  _LiveChat createState() => _LiveChat();
}

class _LiveChat extends State<LiveChat> {
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
          child: AppBar(
            title: TextWidget(
              text: 'Live Chat',
              font: 'Poppins-Bold',
              fontSize: 25,
              color: Colors.black87,
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            leading: Builder(builder: (BuildContext context) {
              return IconButton(
                icon: Container(
                  height: 25.0,
                  child: SvgPicture.asset('assets/images/menu.svg'),
                ),
                // onPressed: () => Navigator.pop(context),
                onPressed: () => Scaffold.of(context).openDrawer(),
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            }),
            actions: [
              IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.black87,
                  iconSize: 30,
                  onPressed: () {})
            ],
          )),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          children: [
            Text('List of active Charts'),
            _chatList(),
          ],
        ),
      ),
    ));
  }

  Widget _chatList() {
    return Expanded(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return ChartCard();
            }));
  }
}
