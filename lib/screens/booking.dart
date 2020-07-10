import 'package:flutter/material.dart';
import 'package:sheria_pocket/resources/colors.dart';
import 'package:sheria_pocket/resources/constants.dart';
import 'package:sheria_pocket/widget/app_bar.dart';
import 'package:sheria_pocket/widget/booking_list.dart';
import 'package:sheria_pocket/widget/drawer.dart';
import 'package:sheria_pocket/widget/filter_card.dart';
import 'package:sheria_pocket/widget/text.dart';

class Booking extends StatefulWidget{
Booking({Key key}) : super(key: key);

final List<dynamic> filters = filtersItem;
final List<dynamic> bookingListL = bookingList;

_Booking createState() => _Booking();
}

class _Booking extends State<Booking>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: DrawerWidget(userName: USER['userName'], url: USER['dp'], isUser: USER['isUser'],),
        appBar: PreferredSize(preferredSize: Size(50, 50),
          child: AppBarWidget(title: 'Booking Lawyer')),  
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
              _booking(),
              _lawyerList(),  
            ]
          ),
        )  
      )
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

  Widget _booking(){
    return FlatButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {  },
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  
                  children: [
                    TextWidget(text: 'My Bookings', color: Colors.black, font: 'Poppins-Bold', fontSize: 16),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: yellowColor,
                      size: 20,
                    )
                  ],
                ),
              );
  }

  Widget _lawyerList(){
    return Expanded(
      // height: MediaQuery.of(context).size.height*0.7,
      child: ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(0),
        scrollDirection: Axis.vertical,
        cacheExtent: 20.0,
        itemCount: widget.bookingListL.length,
        itemBuilder: (BuildContext context, int index){
          return BookLawyerList(url: widget.bookingListL[index]['url'], name: widget.bookingListL[index]['name'], specialist: widget.bookingListL[index]['specialization'], booked: widget.bookingListL[index]['booked']);
        },
      ),
    );
  }


}