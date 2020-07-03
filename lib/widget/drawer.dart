import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sheria_pocket/resources/colors.dart';
import 'package:sheria_pocket/widget/text.dart';

class DrawerWidget extends StatefulWidget{

  DrawerWidget({Key key, this.userName}) : super(key: key);
  final String userName;

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
              alignment: Alignment.topLeft,
              height: size.height*0.2,
              color: Colors.white,
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [ 
                    TextWidget(text: widget.userName, font: 'Poppins-SemiBold', fontSize: 12, color: Colors.black,),
                        
                    ],
                  )
                ]
              ),
            )
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