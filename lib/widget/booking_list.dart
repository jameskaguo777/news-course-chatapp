import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sheria_pocket/resources/colors.dart';
import 'package:sheria_pocket/widget/text.dart';

class BookLawyerList extends StatefulWidget {
  BookLawyerList(
      {Key key,
      @required this.url,
      @required this.name,
      @required this.specialist,
      @required this.booked})
      : super(key: key);

  final String url, name, specialist;
  final bool booked;

  _BookLawyerList createState() => _BookLawyerList();
}

class _BookLawyerList extends State<BookLawyerList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // alignment: Alignment.spaceBetween,
      padding: EdgeInsets.fromLTRB(5, 0, 5, 5),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            direction: Axis.horizontal,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: CachedNetworkImage(
                  width: 50,
                  height: 50,
                  fit: BoxFit.fill,
                  imageUrl: widget.url,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      CircularProgressIndicator(
                          value: downloadProgress.progress),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
              SizedBox(width: 10),
              Wrap(
                alignment: WrapAlignment.spaceEvenly,
                direction: Axis.vertical,
                children: [
                  TextWidget(
                      text: widget.name,
                      color: Colors.black,
                      font: 'Poppins-Regular',
                      fontSize: 12),
                  TextWidget(
                      text: widget.specialist,
                      color: Colors.black54,
                      font: 'Poppins-Light',
                      fontSize: 12),
                ],
              ),
            ]),
        FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, '/detail_booking');
          },
          child: Card(
            elevation: 0,
            color: yellowColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(
                  color: brightBlueColor,
                  width: 2.0,
                )),
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
              child: TextWidget(
                text: 'View',
                font: 'Poppins-Bold',
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
