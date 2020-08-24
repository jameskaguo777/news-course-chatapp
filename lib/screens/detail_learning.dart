import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sheria_pocket/resources/colors.dart';
import 'package:sheria_pocket/widget/text.dart';

class DetailLearning extends StatefulWidget {
  DetailLearning({Key key}) : super(key: key);

  _DetailLearning createState() => _DetailLearning();
}

class _DetailLearning extends State<DetailLearning> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      // drawer: DrawerWidget(userName: USER['username'], url: USER['dp'], isUser: USER['isUser'],),
      appBar: AppBar(
        // title: TextWidget(
        //   text: 'Lee StoneLee',
        //   color: Colors.black,
        // ),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leadingWidth: 90,
        actions: [
          Icon(
            Icons.notifications_active,
          )
        ],
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
            children: [_topSection(), _middleSection(), _bottomSection()],
          ),
        ),
      ),
    ));
  }

  Widget _topSection() {
    return Wrap(
      alignment: WrapAlignment.start,
      direction: Axis.vertical,
      children: [
        TextWidget(
            text: 'Tile of the lesson',
            font: 'Poppins-Bold',
            fontSize: 18,
            color: Colors.black87),
        SizedBox(
          height: 2,
        ),
        TextWidget(text: 'Presenters'),
      ],
    );
  }

  Widget _middleSection() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: CachedNetworkImage(
            width: double.maxFinite,
            fit: BoxFit.fill,
            height: MediaQuery.of(context).size.height * .3,
            imageUrl:
                'https://static.vecteezy.com/system/resources/previews/000/192/828/non_2x/vector-abstract-landscape-illustration.jpg'),
      ),
    );
  }

  Widget _bottomSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      // color: blueColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            text: 'Course Assets',
            font: 'Poppins-Bold',
            fontSize: 18,
            color: Colors.black87,
          ),
          SizedBox(
            height: 10,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
            return _mediaCard();
          }),
          // _mediaCard(),
        ],
      ),
    );
  }

  Widget _mediaCard() {
    return Row(
      children: [
        Card(
          elevation: 0,
          color: blueColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            width: 50,
            height: 50,
            child: Center(
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * .7,
          child: Column(
            // direction: Axis.vertical,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: 'Title of the assset',
                font: 'Poppins-Bold',
                fontSize: 18,
                color: Colors.black87,
              ),
              TextWidget(
                text:
                    'Summary of the asset test broadcast to learning kjlhkuhjhljhl',
                font: 'Poppins-SemiBold',
                fontSize: 14,
                color: Colors.grey,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
