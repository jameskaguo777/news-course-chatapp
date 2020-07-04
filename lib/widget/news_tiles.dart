import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sheria_pocket/resources/colors.dart';
import 'package:sheria_pocket/widget/text.dart';

class NewsTiles extends StatefulWidget{

NewsTiles({Key key, @required this.url, @required this.title, @required this.subtitle, @required this.date}) : super(key: key);

final String url;
final String title;
final String subtitle;
final String date;


@override
_NewsTiles createState() => _NewsTiles();

}

class _NewsTiles extends State<NewsTiles>{
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: size.width*0.25,
            height: size.width*0.25,
            child: ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topLeft: Radius.circular(10), bottomRight: Radius.circular(0), topRight: Radius.circular(0),),
              child: CachedNetworkImage(
                
                fit: BoxFit.fill,
                imageUrl: widget.url,
                progressIndicatorBuilder: (context, url, downloadProgress) => 
                  CircularProgressIndicator(value: downloadProgress.progress, strokeWidth: 10,),
                errorWidget: (context, url, error) => Icon(Icons.error),
                
              ),
            )
          ),
          SizedBox(width: 6),
          Container(
            width: size.width*0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(text: widget.title, color: Colors.black, font: 'Poppins-Bold', fontSize: 13,),
                TextWidget(text: widget.subtitle, color: Colors.black38, font: 'Poppins-Medium', fontSize: 12,),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [ Icon(Icons.calendar_today, color: Colors.black, size: 20),SizedBox(width: 10,), TextWidget(text: widget.date, color: Colors.black, font: 'Poppins-Medium', fontSize: 10,), ],),


              ],
            )
          ),
          SizedBox(width: 3),
          Container(
            alignment: Alignment.center,
            child: IconButton(
  
              icon: Icon(
                Icons.arrow_forward_ios, 
                color: yellowColor,
                size: 50,
              ), 
              onPressed: null
              ),
            )
        ]
        
      ),
    );
  }

}