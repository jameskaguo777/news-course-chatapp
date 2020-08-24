import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sheria_pocket/resources/colors.dart';
import 'package:sheria_pocket/resources/constants.dart';
import 'package:sheria_pocket/widget/app_bar.dart';
import 'package:sheria_pocket/widget/carousel_card.dart';
import 'package:sheria_pocket/widget/drawer.dart';
import 'package:sheria_pocket/widget/learn_pill_cards.dart';
import 'package:sheria_pocket/widget/news_tiles.dart';
import 'package:sheria_pocket/widget/search_input.dart';
import 'package:sheria_pocket/widget/text.dart';

class Learning extends StatefulWidget {
  Learning({Key key}) : super(key: key);

  _Learning createState() => _Learning();
}

class _Learning extends State<Learning> {
  bool istopSectionHidden = false;

  @override
  void initState() {
    super.initState();
  }

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
          preferredSize: Size(50, 50), child: AppBarWidget(title: 'Learning')),
      body: Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            SearchInput(),
            _topSection(),
            _bodysection(),
          ],
        ),
      ),
    ));
  }

  Widget _topSection() {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: 'Suggest ${istopSectionHidden ? 'Hidden' : ''}',
                  font: 'Poppins-Bold',
                  fontSize: 25,
                  color: Colors.black87,
                ),
                IconButton(
                    icon: Icon(
                      istopSectionHidden ? Icons.visibility_off : 
                      Icons.visibility,
                      color: blueColor,
                    ),
                    onPressed: () {
                      _showHideTopSection();
                      // print('Clicked');
                    }),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            istopSectionHidden
                ? Container()
                : TextWidget(
              text: 'All popular learning material',
              color: greyColor,
            ),
            SizedBox(
              height: 5,
            ),
            istopSectionHidden
                ? Container()
                : CarouselCard(imgList: learningImages),
          ],
        ));
  }

  void _showHideTopSection() {
    setState(() {
      if (istopSectionHidden) {
        istopSectionHidden = false;
      } else {
        istopSectionHidden = true;
      }
    });
  }

  Widget _bodysection() {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: learningImages.length,
          itemBuilder: (BuildContext context, int index) {
            return NewsTiles(
                url: learningImages[index],
                title: 'Text Title Tile',
                subtitle:
                    'Text short description of the story Text short description of the story',
                date: '12-Jun-2020', routeName: '/detail_learning',);
          }),
    );
  }
}
