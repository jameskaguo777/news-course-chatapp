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

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  List<dynamic> citems = CATEGORIES;
  List<dynamic> nitems = NEWS;

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        drawer: DrawerWidget(userName: USER['userName'], isUser: USER['isUser'], url: USER['dp'],),
        appBar: _appBar(),
        body: Container(
            padding: EdgeInsets.fromLTRB(10,5,10,5),
            color: Colors.white,
            width: double.maxFinite,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  _videoSection(),
                  _shoppingCategorySection(),
                  _news(),
                ]
              ),
            )
          ),

      )
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
        leading: Builder(
          builder: (BuildContext context){
            return IconButton(
                      icon: Container(
                        height: 25.0,
                        child: SvgPicture.asset('assets/images/menu.svg') ,
                      ),
                      onPressed: () => Scaffold.of(context).openDrawer(),
                      tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                    );
            }
          ),
      elevation: 0.0,
      );
  }


  // Video Top Section

  Widget _videoSection(){
    return Container(
      margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
      color: Colors.white,
      alignment: Alignment.center,
      child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  VideoPlayerScreen(
                    url: 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4', 
                    height: 200.0
                    ),
                ],
              ),
    );
  }

  Widget _shoppingCategorySection(){
    return Container(
      margin: EdgeInsets.fromLTRB(5, 15, 5, 0),
      // color: Colors.white,
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
                        Icon(

                          Icons.arrow_forward_ios),
                      ],
                    )
                  )
                ],
              ),
            ]
          ),

          Container(
            alignment: Alignment.centerLeft,
            height: 110,
            child: ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(0),
                scrollDirection: Axis.horizontal,
                itemCount: citems.length,
                itemBuilder: (BuildContext context, int index){
                  return CategoriesCard(isNetwork: false, title: citems[index]['title'], asset: citems[index]['asset']);
                },
              ),
          ),

        ]
      )

    );
  }

  Widget _news(){
    return Container(
      margin: EdgeInsets.fromLTRB(5, 15, 5, 0),
      // color: Colors.white,
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
                        Icon(

                          Icons.arrow_forward_ios),
                      ],
                    )
                  )
                ],
              ),
            ]
          ),

          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: nitems.length,
                itemBuilder: (BuildContext context, int index){
                  return NewsTiles(url: nitems[index]['url'], title: nitems[index]['title'], subtitle: nitems[index]['subtitle'], date: nitems[index]['date'],);
                },
              ),
          ),

        ]
      ),
    );
  }

}