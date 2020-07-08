import 'package:flutter/material.dart';
import 'package:sheria_pocket/resources/constants.dart';
import 'package:sheria_pocket/widget/app_bar.dart';
import 'package:sheria_pocket/widget/drawer.dart';
import 'package:sheria_pocket/widget/filter_card.dart';
import 'package:sheria_pocket/widget/shopping_cards.dart';

class Shopping extends StatefulWidget{
 Shopping({ Key key }) : super(key : key);

  final List<dynamic> filters = filterShopping;
  final List<dynamic> products = PRODUCTS;
 _Shopping createState() => _Shopping();
}

class _Shopping extends State<Shopping>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: DrawerWidget(userName: USER['userName'], url: USER['dp'], isUser: USER['isUser'],),
        appBar: PreferredSize(preferredSize: Size(50, 50),
          child: AppBarWidget(title: 'Shopping')), 
        body: Container(
          alignment: Alignment.topLeft,

          padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
          constraints: BoxConstraints.expand(),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              _filterWidget(),
              _products(),
            ]
          ),
        ),    
      ),
    );
  }

  Widget _filterWidget(){
    return Container(
    // width: double.infinity, 
    height: 65,
    padding: EdgeInsets.fromLTRB(0, 10, 0, 10), 
    child: ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(0),
        scrollDirection: Axis.horizontal,
        itemCount: widget.filters.length,
        itemBuilder: (BuildContext context, int index){
          return FilterCard(filterName: widget.filters[index]['name'], active: widget.filters[index]['active']);
        },
      ),
    );
  }

  Widget _products(){
    final countValue = 2;
    final aspectWidth = 1;
    final aspectHeight = 1.5;
    return Expanded(
          child: GridView.count(
        crossAxisCount: countValue,
        childAspectRatio: (aspectWidth / aspectHeight),
        shrinkWrap: true,
        children: widget.products.map((e) => ShoppingCards(key: UniqueKey(), name: e['name'], id: e['id'], imageUrl: e['imageUrl'], location: e['location'], price: e['price'])).toList(),
        ),
      
    );
  }

}


// ListView.builder(
//         shrinkWrap: true,
//         padding: const EdgeInsets.all(0),
//         scrollDirection: Axis.vertical,
//         cacheExtent: 20.0,
//         itemCount: widget.products.length,
//         itemBuilder: (BuildContext context, int index){
//           return ShoppingCards(key: UniqueKey(), name: widget.products[index]['name'], id: widget.products[index]['id'], imageUrl: widget.products[index]['imageUrl'], location: widget.products[index]['location'], price: widget.products[index]['price']);
//         },
//       ),