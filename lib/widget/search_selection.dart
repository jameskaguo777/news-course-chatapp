import 'package:flutter/material.dart';
import 'package:sheria_pocket/widget/text.dart';

class SearchSelection extends StatefulWidget {
  SearchSelection({Key key}) : super(key: key);

  _SearchSelection createState() => _SearchSelection();
}

class _SearchSelection extends State<SearchSelection> {
  final _formKey = GlobalKey<FormState>();
  var _currentSelectedValue;
  final _currencies = [
      "Dar es Salaam",
      "Dodoma",
      "Tabora",
      "Mwanza",
      "Morogoro",
      "Arusha",
      "Moshi",
      "Tanga"
    ];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: DropdownButtonHideUnderline(

        child: DropdownButtonFormField<dynamic>(
          
          decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(1, 2, 1, 0),
              hintText: 'Filter by region',
              hintStyle: TextStyle(fontFamily: 'Poppins-SemiBold', textBaseline: TextBaseline.ideographic, decoration: TextDecoration.none),
              prefixIcon: Icon(Icons.location_on_sharp),
              border: OutlineInputBorder(

                borderRadius: BorderRadius.all(Radius.circular(8)))),
          validator: (value) =>
              value == null ? 'Please fill in your Tax Reference' : null,
          value: _currentSelectedValue,
          isDense: true,
          onChanged: (dynamic newValue) {
            setState(() {
              _currentSelectedValue = newValue;
              // print(_findRefValue().toString() + ' tried');
              // state.didChange(newValue);
            });
          },
          items: _currencies.map((dynamic value) {
            return DropdownMenuItem<dynamic>(
              value: value,
              child: TextWidget(
                color: Colors.black,
                text: value,
                font: 'Poppins-Medium',
                fontSize: 12,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
