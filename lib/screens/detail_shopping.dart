import 'package:flutter/material.dart';
import 'package:sheria_pocket/resources/constants.dart';
import 'package:sheria_pocket/widget/carousel_card.dart';
import 'package:sheria_pocket/widget/text.dart';

class DetailShopping extends StatefulWidget {
  DetailShopping({Key key, @required this.id}) : super(key: key);

  final int id;

  _DetailShopping createState() => _DetailShopping();
}

class _DetailShopping extends State<DetailShopping> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: _appBarWidget(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          _carouselWidget(),
        ],
      ),
    ));
  }

  Widget _appBarWidget() {
    return AppBar(
      title: TextWidget(
        text: PRODUCTDETAILS['name'],
        font: 'Poppins-SemiBold',
        fontSize: 25,
        color: Colors.black,
      ),
      backgroundColor: Colors.white,
      leading: Builder(builder: (BuildContext context) {
        return IconButton(
          icon: Container(
            height: 25.0,
            child: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
          ),
          onPressed: () => Navigator.pop(context),
          // onPressed: () => Scaffold.of(context).openDrawer(),
          // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      }),
      elevation: 0.0,
    );
  }

  Widget _carouselWidget() {
    final List<String> imgList = [
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
      'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    ];
    return CarouselCard(imgList: images);
  }
}
