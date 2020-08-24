import 'package:flutter/material.dart';
import 'package:sheria_pocket/screens/booking.dart';
import 'package:sheria_pocket/screens/detail_booking.dart';
import 'package:sheria_pocket/screens/detail_learning.dart';
import 'package:sheria_pocket/screens/detail_news.dart';
import 'package:sheria_pocket/screens/home.dart';
import 'package:sheria_pocket/screens/learning.dart';
import 'package:sheria_pocket/screens/live_chat.dart';
import 'package:sheria_pocket/screens/media.dart';
import 'package:sheria_pocket/screens/messages.dart';
import 'package:sheria_pocket/screens/news.dart';
import 'package:sheria_pocket/screens/shopping.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Sheria Pocket',
      initialRoute: '/',
      routes: {
        '/' : (context) => MyHomePage(title: 'Sheria Pocket'),
        '/shopping' : (context) => Shopping(),
        '/booking' : (context) => Booking(),
        '/media' : (context) => Media(),
        '/learning' : (context) => Learning(),
        '/news' : (context) => News(),
        '/detail_booking' : (context) => DetailBooking(),
        '/detail_learning' : (context) => DetailLearning(),
        '/detail_news' : (context) => DetailNews(),
        '/live_chat' : (context) => LiveChat(),
        '/messages' : (context) => MessagesPage(),
      },
      theme: ThemeData(
        fontFamily: 'Poppins-Regular',
        primarySwatch: Colors.blue,
        accentColor: Colors.blue,
        // canvasColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: MyHomePage(title: 'Sheria Pocket'),
    );
  }
}

