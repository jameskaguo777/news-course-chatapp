import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sheria_pocket/resources/colors.dart';
import 'package:sheria_pocket/resources/constants.dart';
import 'package:sheria_pocket/widget/carousel_card.dart';
import 'package:sheria_pocket/widget/text.dart';

class DetailShopping extends StatefulWidget {
  DetailShopping({Key key, @required this.id}) : super(key: key);

  final int id;

  _DetailShopping createState() => _DetailShopping();
}

class _DetailShopping extends State<DetailShopping> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: _appBarWidget(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          _carouselWidget(),
          _bodyDetail(),
        ],
      ),
    ));
  }

  Widget _appBarWidget() {
    return AppBar(
      title: TextWidget(
        text: PRODUCTDETAILS['name'],
        font: 'Poppins-SemiBold',
        fontSize: 25,
        color: Colors.black,
      ),
      backgroundColor: Colors.white,
      leading: Builder(builder: (BuildContext context) {
        return IconButton(
          icon: Container(
            height: 25.0,
            child: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
          ),
          onPressed: () => Navigator.pop(context),
          // onPressed: () => Scaffold.of(context).openDrawer(),
          // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      }),
      elevation: 0.0,
    );
  }

  Widget _carouselWidget() {
    return CarouselCard(imgList: images);
  }

  Widget _bodyDetail() {
    return Expanded(
          child: Container(
        alignment: Alignment.topLeft,
        color: Colors.white,
        padding: EdgeInsets.all(30),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: PRODUCTDETAILS['name'],
                font: 'Poppins-Bold',
                fontSize: 16,
                color: Colors.black,
              ),
              SizedBox(
                height: 20,
              ),
              Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                direction: Axis.horizontal,
                children: [
                  Icon(
                    Icons.near_me,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  TextWidget(
                    text: PRODUCTDETAILS['location'],
                    font: 'Poppins-Medium',
                    fontSize: 10,
                    color: Colors.black54,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextWidget(
                text: PRODUCTDETAILS['detail'],
                font: 'Poppins-Medium',
                fontSize: 12,
                color: Colors.black87,
              ),
              SizedBox(height: 20),
              Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.spaceAround,
                children: [
                  TextWidget(
                    text: 'Price',
                    color: Colors.black,
                    font: 'Poppins-Light',
                    fontSize: 12,
                  ),
                  TextWidget(
                    text: PRODUCTDETAILS['price'],
                    color: oceanBlueColor,
                    font: 'Poppins-SemiBold',
                    fontSize: 15,
                  )
                ],
              ),
              SizedBox(height: 30,),
              Container(
                  alignment: Alignment.center,
                  child: Wrap(
                  direction: Axis.vertical,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    FlatButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: darkBlueColor),
                        ),
                      color: yellowColor, 
                      child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width*0.7,
                      child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          direction: Axis.horizontal,                      
                          children: [
                            TextWidget(text: 'CALL', font: 'Poppins-Bold', fontSize: 15, color: Colors.white,),
                            SizedBox(width: 10,),
                            Icon(Icons.phone, size: 20, color: Colors.white,),
                          ], 
                        ),
                      ), 
                    ),
                    FlatButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: darkBlueColor),
                        ),
                      color: yellowColor, 
                      child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width*0.7,
                      child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          direction: Axis.horizontal,                      
                          children: [
                            TextWidget(text: 'WhatsApp', font: 'Poppins-Bold', fontSize: 15, color: Colors.white,),
                            SizedBox(width: 10,),
                            Container(width: 20, height: 20, child: SvgPicture.asset('assets/images/whatsapp.svg')),
                          ], 
                        ),
                      ), 
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
