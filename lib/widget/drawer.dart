import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sheria_pocket/resources/colors.dart';
import 'package:sheria_pocket/resources/constants.dart';
import 'package:sheria_pocket/widget/text.dart';

class DrawerWidget extends StatefulWidget {
  DrawerWidget(
      {Key key,
      @required this.userName,
      @required this.url,
      @required this.isUser})
      : super(key: key);
  final String userName;
  final String url;
  final bool isUser;

  // final List<bool> isHighlighted = [true, false, false];
  final List<dynamic> menuList = menus;

  _DrawerWidget createState() => _DrawerWidget();
}

class _DrawerWidget extends State<DrawerWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    setState(() {
      for (int i = 0; i < widget.menuList.length; i++) {
        if (ModalRoute.of(context).settings.name ==
            widget.menuList[i]['route']) {
          widget.menuList[i]['active'] = true;
        } else
          widget.menuList[i]['active'] = false;
      }
    });
    return Drawer(
        child: Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      constraints: BoxConstraints.expand(),
      child: Column(children: [
        Column(children: [
          widget.isUser
              ? Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 2,
                        children: [
                          TextWidget(
                            text: widget.userName,
                            font: 'Poppins-SemiBold',
                            fontSize: 14,
                            color: Colors.black,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Wrap(
                            direction: Axis.horizontal,
                            spacing: 5,
                            children: [
                              Icon(
                                Icons.supervised_user_circle,
                                color: blueColor,
                                size: 20,
                              ),
                              TextWidget(
                                text: 'Lawyer',
                                font: 'Poppins-SemiBold',
                                fontSize: 14,
                                color: Colors.black87,
                              ),
                            ],
                          )
                        ],
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: CachedNetworkImage(
                          width: 80,
                          height: 80,
                          fit: BoxFit.fill,
                          imageUrl: widget.url,
                          progressIndicatorBuilder:
                              (context, url, downloadProgress) =>
                                  CircularProgressIndicator(
                                      value: downloadProgress.progress),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                      )
                    ],
                  ),
                )
              : FlatButton(
                  onPressed: null,
                  child: TextWidget(
                      text: 'Login',
                      font: 'Poppins-SemiBold',
                      fontSize: 14,
                      color: Colors.black)),
          Container(
            margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
            alignment: Alignment.center,
            width: double.maxFinite,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: darkBlueColor)),
              child: TextWidget(
                  text: 'LIVE CHAT',
                  color: Colors.white,
                  font: 'Poppins-Bold',
                  fontSize: 14),
              color: darkBlueColor,
              onPressed: () {/** */},
            ),
          ),
        ]),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: widget.menuList.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    // for(int i = 0; i < widget.menuList.length; i++){
                    Navigator.pop(context);
                    Navigator.pushNamed(
                        context, widget.menuList[index]['route']);

                    // }
                  },
                  child: Container(
                    color: widget.menuList[index]['active']
                        ? darkBlueColor
                        : Colors.white,
                    child: ListTile(
                      //the item
                      title: TextWidget(
                        color: widget.menuList[index]['active']
                            ? Colors.white
                            : Colors.black,
                        text: widget.menuList[index]['name'],
                        font: 'Poppins-Medium',
                        fontSize: 14,
                      ),
                      leading: Icon(
                        widget.menuList[index]['icon'],
                        color: widget.menuList[index]['active']
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                );
              }),
        ),
      ]),
    ));
  }
}

// ListView(
//         // Important: Remove any padding from the ListView.
//         padding: EdgeInsets.zero,
//         children: <Widget>[
//           DrawerHeader(
//             child: Text('Drawer Header'),
//             decoration: BoxDecoration(
//               color: Colors.blue,
//             ),
//           ),
//           ListTile(
//             title: Text('Item 1'),
//             onTap: () {
//               // Update the state of the app.
//               // ...
//             },
//           ),
//           ListTile(
//             title: Text('Item 2'),
//             onTap: () {
//               // Update the state of the app.
//               // ...
//             },
//           ),
//         ],
//       ),
