import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sheria_pocket/resources/colors.dart';
import 'package:sheria_pocket/widget/text.dart';

class LearnPillCards extends StatelessWidget {
  LearnPillCards({
    Key key,
    @required this.imageUrl,
  }) : super(key: key);

  final imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      // semanticContainer: true,
      color: coolGrey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: FlatButton(
        onPressed: () {
          
        },
              child: Row(
          
          children: [
            ClipRRect(

              borderRadius: BorderRadius.circular(20),
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                width: 100,
                height: 100,
                imageUrl: imageUrl
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Wrap(
              direction: Axis.vertical,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  text: 'Text Title Tile',
                  font: 'Poppins-Bold',
                  fontSize: 18,
                  color:Colors.black87,
                ),
                TextWidget(
                  text: 'Text short description of the story Text short description of the story',
                  font: 'Poppins-SemiBold',
                  fontSize: 14,
                  color:greyColor,
                ),
                // FlatButton(
                //     color: oceanBlueColor,
                //     shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(10)),
                //     onPressed: () {},
                //     child: Center(
                //       child: TextWidget(
                //         text: 'Learn',
                //         color: Colors.white,
                //       ),
                //     ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
