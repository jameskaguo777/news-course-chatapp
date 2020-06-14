
import 'package:flutter/material.dart';
import 'package:sheria_pocket/widget/text.dart';
import 'package:sheria_pocket/widget/top_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sheria_pocket/resources/colors.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: _appBar(),
      body: Center(

        child: Container(
          color: Colors.white,

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _appBar(){
    return AppBar(
        title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SvgPicture.asset('assets/images/balance.svg'),
              SizedBox(width: 10),
              TextWidget(
                text: "Mayuko",
                font: 'Poppins-Bold',
                fontSize: 20,
                color: blueColor,
              ),
              TextWidget(
                text: " Tada",
                font: 'Poppins-Bold',
                fontSize: 20,
                color: yellowColor,
              ),
          ],
          ),
        backgroundColor: Colors.white,
        leading: IconButton(
                      icon: Container(
                        height: 20.0,
                        child: SvgPicture.asset('assets/images/menu.svg') ,
                      ),
                      onPressed: null
                    ),
      elevation: 0.0,
      );
  }
}