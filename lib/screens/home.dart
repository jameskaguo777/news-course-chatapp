import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:sheria_pocket/helpers/shopping_categories.dart';
import 'package:sheria_pocket/resources/constants.dart';
import 'package:sheria_pocket/widget/categories_card.dart';
import 'package:sheria_pocket/widget/drawer.dart';
import 'package:sheria_pocket/widget/news_tiles.dart';
import 'package:sheria_pocket/widget/text.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:sheria_pocket/resources/colors.dart';
import 'package:sheria_pocket/widget/video_player_screen.dart';


Future<dynamic> myBackgroundMessageHandler(Map<String, dynamic> message) {
  if (message.containsKey('data')) {
    // Handle data message
    final dynamic data = message['data'];
  }

  if (message.containsKey('notification')) {
    // Handle notification message
    final dynamic notification = message['notification'];
  }

  // Or do other work.
}

final Map<String, Item> _items = <String, Item>{};
Item _itemForMessage(Map<String, dynamic> message) {
  final dynamic data = message['data'] ?? message;
  final String itemId = data['id'];
  final Item item = _items.putIfAbsent(itemId, () => Item(itemId: itemId))
    .._matchteam = data['james']
    .._score = data['kaguo'];
  return item;
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<dynamic> citems = CATEGORIES;
  List<dynamic> nitems = NEWS;
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  @override
  void initState() {
    super.initState();


    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        print("onMessage: $message");
        _showItemDialog(message);
      },
      onBackgroundMessage: myBackgroundMessageHandler,
      onLaunch: (Map<String, dynamic> message) async {
        print("onLaunch: $message");
        // _navigateToItemDetail(message);
      },
      onResume: (Map<String, dynamic> message) async {
        print("onResume: $message");
        // _navigateToItemDetail(message);
      },
    );
    _firebaseMessaging.requestNotificationPermissions(
        const IosNotificationSettings(
            sound: true, badge: true, alert: true, provisional: true));
    _firebaseMessaging.onIosSettingsRegistered
        .listen((IosNotificationSettings settings) {
      print("Settings registered: $settings");
    });
    _firebaseMessaging.getToken().then((String token) {
      assert(token != null);
      print("Push Messaging token: $token");
    });
    _firebaseMessaging.subscribeToTopic("test");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      drawer: DrawerWidget(
        userName: USER['userName'],
        isUser: USER['isUser'],
        url: USER['dp'],
      ),
      appBar: _appBar(),
      body: Container(
          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          color: Colors.white,
          width: double.maxFinite,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              _videoSection(),
              _shoppingCategorySection(),
              _news(),
            ]),
          )),
    ));
  }


  Widget _buildDialog(BuildContext context, Item item) {
    return AlertDialog(
      content: Text("${item.matchteam} with score: ${item.score}"),
      actions: <Widget>[
        FlatButton(
          child: const Text('CLOSE'),
          onPressed: () {
            Navigator.pop(context, false);
          },
        ),
        FlatButton(
          child: const Text('SHOW'),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
      ],
    );
  }

void _showItemDialog(Map<String, dynamic> message) {
    showDialog<bool>(
      context: context,
      builder: (_) => _buildDialog(context, _itemForMessage(message)),
    ).then((bool shouldNavigate) {
      if (shouldNavigate == true) {
        // _navigateToItemDetail(message);
      }
    });
  }

  Widget _appBar() {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/balance.svg'),
          SizedBox(width: 10),
          TextWidget(
            text: "Sheria",
            font: 'Poppins-Bold',
            fontSize: 25,
            color: blueColor,
          ),
          TextWidget(
            text: " Pocket",
            font: 'Poppins-Bold',
            fontSize: 25,
            color: yellowColor,
          ),
        ],
      ),
      backgroundColor: Colors.white,
      leading: Builder(builder: (BuildContext context) {
        return IconButton(
          icon: Container(
            height: 25.0,
            child: SvgPicture.asset('assets/images/menu.svg'),
          ),
          onPressed: () => Scaffold.of(context).openDrawer(),
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      }),
      elevation: 0.0,
    );
  }

  // Video Top Section

  Widget _videoSection() {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
      color: Colors.white,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          VideoPlayerScreen(
              url:
                  'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
              height: 200.0),
        ],
      ),
    );
  }

  Widget _shoppingCategorySection() {
    return Container(
        margin: EdgeInsets.fromLTRB(5, 15, 5, 0),
        // color: Colors.white,
        alignment: Alignment.centerLeft,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            TextWidget(
              fontSize: 20,
              font: 'Poppins-Bold',
              color: blackColor,
              text: 'Shopping',
            ),
            Row(
              children: [
                FlatButton(
                    onPressed: null,
                    child: Wrap(
                      direction: Axis.horizontal,
                      spacing: 1.8,
                      // margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        TextWidget(
                          fontSize: 12,
                          font: 'Poppins-Light',
                          color: blackColor,
                          text: 'View',
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ))
              ],
            ),
          ]),
          Container(
            alignment: Alignment.centerLeft,
            height: 110,
            child: ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(0),
              scrollDirection: Axis.horizontal,
              itemCount: citems.length,
              itemBuilder: (BuildContext context, int index) {
                return CategoriesCard(
                    isNetwork: false,
                    title: citems[index]['title'],
                    asset: citems[index]['asset']);
              },
            ),
          ),
        ]));
  }

  Widget _news() {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 15, 5, 0),
      // color: Colors.white,
      alignment: Alignment.centerLeft,
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          TextWidget(
            fontSize: 20,
            font: 'Poppins-Bold',
            color: blackColor,
            text: 'Law News',
          ),
          Row(
            children: [
              FlatButton(
                  onPressed: null,
                  child: Wrap(
                    direction: Axis.horizontal,
                    spacing: 1.8,
                    // margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      TextWidget(
                        fontSize: 12,
                        font: 'Poppins-Light',
                        color: blackColor,
                        text: 'View',
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ))
            ],
          ),
        ]),
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: nitems.length,
            itemBuilder: (BuildContext context, int index) {
              return NewsTiles(
                url: nitems[index]['url'],
                title: nitems[index]['title'],
                subtitle: nitems[index]['subtitle'],
                date: nitems[index]['date'],
                routeName: '/detail_news',
              );
            },
          ),
        ),
      ]),
    );
  }
}


class Item {
  Item({this.itemId});
  final String itemId;

  StreamController<Item> _controller = StreamController<Item>.broadcast();
  Stream<Item> get onChanged => _controller.stream;

  String _matchteam;
  String get matchteam => _matchteam;
  set matchteam(String value) {
    _matchteam = value;
    _controller.add(this);
  }

  String _score;
  String get score => _score;
  set score(String value) {
    _score = value;
    _controller.add(this);
  }

 
}