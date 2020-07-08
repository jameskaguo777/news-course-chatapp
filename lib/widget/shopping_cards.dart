import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sheria_pocket/resources/colors.dart';
import 'package:sheria_pocket/widget/text.dart';

class ShoppingCards extends StatefulWidget{
  ShoppingCards({Key key, @required this.name, @required this.id, @required this.imageUrl, @required this.location, @required this.price}) : super(key: key);

  final String name, location, imageUrl, price, id;
  
  _Shoppingcards createState() => _Shoppingcards();
}

class _Shoppingcards extends State<ShoppingCards>{
  var asset = 'assets/images/add.svg';

  @override
  void initState() {
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final contWidth = size.width*0.4;
    final contHeght = size.height*0.4;
    
    
    return Container(
      width: contWidth,
      height: contHeght,
      color: Colors.white,
      padding: EdgeInsets.all(0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            // fit: StackFit.expand,
            alignment: Alignment.topRight,
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
                  imageUrl: widget.imageUrl,
                  progressIndicatorBuilder: (context, url, downloadProgress) => 
                    CircularProgressIndicator(value: downloadProgress.progress),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
              InkWell(
                
                
                onTap: () { setState(() {
                  asset = 'assets/images/correct.svg';
                });
                print('tada'); },
                child: Card(
                  elevation: 3,
                  margin: EdgeInsets.all(0),
                  color: Colors.white10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AnimatedContainer(duration: Duration(seconds: 2), curve: Curves.easeIn,
                      child: SvgPicture.asset( asset, height: 20, width: 20, color: yellowColor,)),
                  ),
                ),
              ),
            ]
            
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 5,
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,

              direction: Axis.vertical,
              children: [
                
                TextWidget(text: widget.name, color: Colors.black, font: 'Poppins-Medium', fontSize: 14,),
                Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.start,
                  children: [
                    Icon(Icons.near_me, size: 20,),
                    SizedBox(width: 5),
                    TextWidget(text: widget.location, color: Colors.black87, font: 'Poppins-Regular', fontSize: 12,),
                  ],
                ),
                Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.spaceAround,
                  children: [
                    TextWidget(text: 'Price', color: Colors.black, font: 'Poppins-Light', fontSize: 12,),
                    TextWidget(text: 'TZS ${widget.price}', color: oceanBlueColor, font: 'Poppins-SemiBold', fontSize: 14,)
                  ],
                 ),

                Container(
                  width: contWidth*.9,
                  height: contHeght*.1,
                  
                  alignment: Alignment.center,
                  
                  child: FlatButton(onPressed: (){}, 
                    color: darkBlueColor,
                    shape: RoundedRectangleBorder(
                      
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: darkBlueColor),
                      
                    ),
                    child: TextWidget(text: 'View', font: 'Poppins-SemiBold', fontSize: 14, color: Colors.white)
                  ),
                ), 
              ],
            ),
          )
          
        ],
      ),
    );
  }

}