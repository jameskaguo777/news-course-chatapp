import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sheria_pocket/widget/text.dart';

class MessagesPage extends StatefulWidget {
  MessagesPage({Key key}) : super(key: key);

  _MessagesPage createState() => _MessagesPage();
}

class _MessagesPage extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        // toolbarHeight: 80,
        title: Wrap(
          spacing: 10,
          crossAxisAlignment: WrapCrossAlignment.center,
          direction: Axis.horizontal,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: CachedNetworkImage(
                width: 40,
                  height: 40,
                  fit: BoxFit.fill,
                  imageUrl: 'https://miro.medium.com/max/3150/1*J_BOSSzUz4qBvAjFb-YgZA@2x.jpeg'
              ),
            ),
            
            TextWidget(
              text: 'Test Name',
              font: 'Poppins-Bold',
              fontSize: 14,
              color: Colors.black87,
              overflow: TextOverflow.ellipsis,
            )
          ],
          
        ),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.black87,), onPressed: () => Navigator.pop(context)),
      ),
    ));
  }
}
