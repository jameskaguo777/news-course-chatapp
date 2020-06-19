import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sheria_pocket/resources/colors.dart';
import 'package:sheria_pocket/widget/text.dart';


class CategoriesCard extends StatelessWidget{

  CategoriesCard({@required this.isNetwork, this.url, this.asset, this.title});

  final bool isNetwork;
  final String url;
  final String asset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: 100.0,
      // padding: const EdgeInsets.fromLTRB(0, 5, 5, 5),
      child: Card(
        elevation: 3,
        color: darkBlueColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isNetwork ?
            SvgPicture.network(
              url,
              color: Colors.white,
              placeholderBuilder: (BuildContext context) => Container(
              padding: const EdgeInsets.all(10.0),
              child: const CircularProgressIndicator()),
       
            )  :
            SvgPicture.asset(
              asset == null ? 'assets/images/menu.svg' : asset,
              color: Colors.white,
              width: 30.0,
              ),
            SizedBox(height: 5.0),
            TextWidget(
              text: title == null ? 'Untitled' : title,
              font: 'Poppins-Medium',
              fontSize: 13,
              color: Colors.white,
            )
          ],
        ),
      ),
    );

  }


}