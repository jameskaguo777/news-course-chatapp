import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sheria_pocket/resources/colors.dart';

class ShoppingCards extends StatefulWidget{
  ShoppingCards({Key key}) : super(key: key);


  _Shoppingcards createState() => _Shoppingcards();
}

class _Shoppingcards extends State<ShoppingCards>{
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final contWidth = size.width*0.4;
    final contHeght = size.height*0.4;
    return Container(
      width: contWidth,
      height: contHeght,
      color: blueColor,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: CachedNetworkImage(
              width: contWidth,
              height: contHeght*0.5,
              fit: BoxFit.fill,
              imageUrl: 'https://cdn.mos.cms.futurecdn.net/ahevYTh9pWRzkNPF85MQhb-1200-80.jpg',
              progressIndicatorBuilder: (context, url, downloadProgress) => 
                CircularProgressIndicator(value: downloadProgress.progress),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
        ],
      ),
    );
  }

}