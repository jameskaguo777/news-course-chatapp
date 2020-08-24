import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselCard extends StatefulWidget {
  CarouselCard({
    Key key,
    @required this.imgList
  }) : super(key: key);

  final List<String> imgList;

  

  _CarouselCard createState() => _CarouselCard();
}

class _CarouselCard extends State<CarouselCard> {


  


  @override
  Widget build(BuildContext context) {


    final List<Widget> imageSliders = widget.imgList
      .map<Widget>((item) => Container(
            child: Container(
              margin: EdgeInsets.all(0.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: CachedNetworkImage(
                            width: MediaQuery.of(context).size.width*.9,
                            height: MediaQuery.of(context).size.height*.3,
                            fit: BoxFit.fill,
                            imageUrl: item,
                            progressIndicatorBuilder:
                                (context, url, downloadProgress) =>
                                    CircularProgressIndicator(
                                        value: downloadProgress.progress),
                            errorWidget: (context, url, error) => Icon(Icons.error),
                          ),
                      ),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: FlatButton(onPressed: null, child: Icon(Icons.play_circle_fill, color: Colors.yellow,)),
                        ),
                        
                      ),
                    ],
                  )),
            ),
          ))
      .toList();


    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        aspectRatio: 16/9,
        enlargeCenterPage: true,
      ),
      items: imageSliders,
    );
  }
}
