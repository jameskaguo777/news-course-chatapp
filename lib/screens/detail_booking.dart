import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sheria_pocket/resources/colors.dart';

import 'package:sheria_pocket/widget/text.dart';

import 'package:html/parser.dart' show parse;
import 'package:html/dom.dart';

class DetailBooking extends StatefulWidget {
  DetailBooking({Key key}) : super(key: key);

  _DetailBooking createState() => _DetailBooking();
}

class _DetailBooking extends State<DetailBooking> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      // drawer: DrawerWidget(userName: USER['username'], url: USER['dp'], isUser: USER['isUser'],),
      appBar: AppBar(
        title: TextWidget(
          text: 'Lee StoneLee',
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leadingWidth: 90,
        actions: [Icon(Icons.notifications_active, )],
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Center(
            child: Wrap(
              direction: Axis.horizontal,
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.start,
              children: [
                IconButton(
                  color: Colors.black87,
                  padding: EdgeInsets.all(0),
                  constraints: BoxConstraints(maxWidth: 20),
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () => Navigator.pop(context),
                  tooltip: 'Back',
                ),
                TextWidget(
                  text: 'Back',
                  font: 'Poppins-SemiBold',
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ],
            ),
          ),
        ),
        primary: true,
      ),
      body: Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              _topSection(),
              _middleSection(),
              _bottomSection()
            ],
          ),
        ),
      ),
    ));
  }

  Widget _topSection() {
    final size = MediaQuery.of(context).size;
    return Card(
      color: oceanBlueColor,
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      margin: EdgeInsets.fromLTRB(0, 20, 0, 5),
      child: Container(
          padding: EdgeInsets.all(8),
          width: size.width,
          // height: size.height * .3,
          child: Wrap(
              direction: Axis.vertical,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.start,
              children: [
                Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 20,
                  direction: Axis.horizontal,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: CachedNetworkImage(
                          width: 100,
                          height: 100,
                          imageUrl:
                              'https://randomuser.me/api/portraits/men/91.jpg'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: 'Lee Stoneway',
                          font: 'Poppins-Bold',
                          fontSize: 18,
                          color: Colors.white,
                        ),
                        TextWidget(
                          text: 'M.B.B.S F.C.P.S',
                          font: 'Poppins-Bold',
                          fontSize: 12,
                          color: Colors.white70,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                            ),
                            TextWidget(
                              text: 'Dar es Salaam',
                              font: 'Poppins-Regular',
                              fontSize: 12,
                              color: Colors.white,
                            )
                          ],
                        ),
                        Wrap(
                          direction: Axis.horizontal,
                          children: [
                            TextWidget(
                              text: 'Rating: ',
                              font: 'Poppins-SemiBold',
                              color: Colors.white38,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            TextWidget(
                              text: '5.0',
                              font: 'Poppins-Bold',
                              fontSize: 16,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 5, 5),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    direction: Axis.horizontal,
                    children: [
                      Wrap(
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        direction: Axis.vertical,
                        children: [
                          TextWidget(
                            text: 'Reviewers No:',
                            color: Colors.white,
                            font: 'Poppins-Bold',
                            fontSize: 12,
                          ),
                          TextWidget(
                            text: '1566600',
                            color: Colors.white,
                            font: 'Poppins-Bold',
                            fontSize: 18,
                          ),
                        ],
                      ),
                      FlatButton(
                          onPressed: () {},
                          child: Container(
                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                            width: MediaQuery.of(context).size.width * .5,
                            height: 50,
                            child: Card(
                                elevation: 0,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: TextWidget(text: 'Book'),
                                )),
                          ))
                    ],
                  ),
                )
              ])),
    );
  }

  Widget _middleSection() {
    return Card(
      elevation: 0,
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      color: coolGrey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
          width: double.maxFinite,
          // height: MediaQuery.of(context).size.height*.2,
          padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextWidget(
                text: 'Days available in the week',
                font: 'Poppins-SemiBold',
                fontSize: 18,
                color: Colors.black87,
              ),
              Container(
                // width: 100,
                // height: MediaQuery.of(context).size.height*.1,
                padding: EdgeInsets.all(8),
                child: Wrap(
                  direction: Axis.horizontal,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  alignment: WrapAlignment.start,
                  spacing: 5,
                  children: [
                    Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      direction: Axis.horizontal,
                      spacing: 0,
                      children: [
                        Icon(
                          Icons.check_circle_outline_outlined,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        TextWidget(text: 'Monday'),
                      ],
                    ),
                    Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      direction: Axis.horizontal,
                      spacing: 0,
                      children: [
                        Icon(
                          Icons.check_circle_outline_outlined,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        TextWidget(text: 'Tuesday'),
                      ],
                    ),
                    Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      direction: Axis.horizontal,
                      spacing: 0,
                      children: [
                        Icon(
                          Icons.check_circle_outline_outlined,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        TextWidget(text: 'Wednesday'),
                      ],
                    ),
                    Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      direction: Axis.horizontal,
                      spacing: 0,
                      children: [
                        Icon(
                          Icons.check_circle_outline_outlined,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        TextWidget(text: 'Thursday'),
                      ],
                    ),
                    Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      direction: Axis.horizontal,
                      spacing: 0,
                      children: [
                        Icon(
                          Icons.check_circle_outline_outlined,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        TextWidget(text: 'Friday'),
                      ],
                    ),
                    Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      direction: Axis.horizontal,
                      spacing: 0,
                      children: [
                        Icon(
                          Icons.check_circle_outline_outlined,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        TextWidget(text: 'Saturday'),
                      ],
                    ),
                    Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      direction: Axis.horizontal,
                      spacing: 0,
                      children: [
                        Icon(
                          Icons.cancel_rounded,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        TextWidget(text: 'Sunday'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }

  Widget _bottomSection() {
    return Card(
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      elevation: 0,
      color: coolGrey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
        width: double.maxFinite,
        child: Column(
          children: [
            TextWidget(text: 'Biography', font: 'Poppins-Bold', fontSize: 18, color: Colors.black87,),
            TextWidget(text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'),
          ],
        ),
      ),
    );
  }
}
