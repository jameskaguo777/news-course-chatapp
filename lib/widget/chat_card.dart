import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sheria_pocket/resources/colors.dart';
import 'package:sheria_pocket/widget/text.dart';

class ChartCard extends StatefulWidget {
  ChartCard({Key key}) : super(key: key);

  _ChartCard createState() => _ChartCard();
}

class _ChartCard extends State<ChartCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 80,
      padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
      color: Colors.white,
      child: FlatButton(
        padding: EdgeInsets.all(0.0),
        onPressed: () {
          Navigator.pushNamed(context, '/messages');
        },
        child: Card(
          elevation: 0,
          color: Colors.white,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: CachedNetworkImage(
                    width: 60,
                    height: 60,
                    fit: BoxFit.fill,
                    imageUrl:
                        'https://miro.medium.com/max/3150/1*J_BOSSzUz4qBvAjFb-YgZA@2x.jpeg'),
              ),
              SizedBox(width: 10),
              Flexible(
                fit: FlexFit.tight,
                              child: Wrap(
                  direction: Axis.vertical,
                  spacing: 2,
                  children: [
                    TextWidget(
                      text: 'Name Test',
                      fontSize: 17,
                      font: 'Poppins-Bold',
                      color: Colors.black87,
                      overflow: TextOverflow.ellipsis,
                    ),
                    TextWidget(
                      text: 'Test Message Test with faint text',
                      fontSize: 14,
                      font: 'Poppins-Regular',
                      color: Colors.black45,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: blueColor,
                  child: Container(
                    width: 25,
                    height: 25,
                    child: Center(
                        child: TextWidget(
                      text: '2',
                      color: Colors.white,
                      font: 'Poppins-Bold',
                    )),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
