import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sheria_pocket/resources/colors.dart';
import 'package:sheria_pocket/resources/constants.dart';
import 'package:sheria_pocket/widget/text.dart';

class DrawerWidget extends StatefulWidget{

  DrawerWidget({Key key, this.userName, this.url, this.isUser}) : super(key: key);
  final String userName;
  final String url;
  final bool isUser;
  // final List<bool> isHighlighted = [true, false, false];
  final List<dynamic> menuList = menus;

  _DrawerWidget createState() => _DrawerWidget();
}

class _DrawerWidget extends State<DrawerWidget>{


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Drawer(
      child: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
              alignment: Alignment.topLeft,
              height: size.height*0.25,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  widget.isUser ?
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround, crossAxisAlignment: CrossAxisAlignment.center, children: [ 
                    TextWidget(text: widget.userName, font: 'Poppins-SemiBold', fontSize: 14, color: Colors.black,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: CachedNetworkImage(
                        width: 50,
                        height: 50,
                        fit: BoxFit.fill,
                        imageUrl: widget.url,
                        progressIndicatorBuilder: (context, url, downloadProgress) => 
                          CircularProgressIndicator(value: downloadProgress.progress),
                        errorWidget: (context, url, error) => Icon(Icons.error),

                      ),
                    ) 
                    ],
                  ): FlatButton(onPressed: null, child: TextWidget(text: 'Login', font: 'Poppins-SemiBold', fontSize: 14, color: Colors.black)),
                  
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                        alignment: Alignment.center,
                        width: double.infinity,
                        child: FlatButton(
                          
                          shape: RoundedRectangleBorder(
                            
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(color: darkBlueColor)
                          ),
                          child: TextWidget(text: 'LIVE CHAT', color: Colors.white, font: 'Poppins-Bold', fontSize: 14),
                          color: darkBlueColor,
                          onPressed: () {/** */},
                        ),
                      ),
                    
                ]
              ),
            ),
            Expanded(
              child: ListView.builder(         
              itemCount: widget.menuList.length,
              shrinkWrap: true,
                itemBuilder: (BuildContext context, int index){
                  return GestureDetector(
                    onTap: (){
                      for(int i = 0; i < widget.menuList.length; i++){
                        setState(() {
                          if (index == i) {
                              widget.menuList[index]['active'] = true;
                          } else {                               //the condition to change the highlighted item
                              widget.menuList[i]['active'] = false;
                          }
                        });
                      }
                    },
                    child: Container(
                      color: widget.menuList[index]['active'] ? Colors.red : Colors.white,
                      child: ListTile(                                     //the item
                        title: Text(widget.menuList[index]['name']),
                      ),
                    ),
                  );
                }
              ),
            ),
                
              
            
          ]
        ),
      )
    );
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