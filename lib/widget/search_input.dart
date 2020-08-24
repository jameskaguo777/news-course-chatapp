import 'package:flutter/material.dart';

class SearchInput extends StatefulWidget {
  SearchInput({Key key}) : super(key: key);

  _SearchInput createState() => _SearchInput();
}

class _SearchInput extends State<SearchInput> {
  
  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        validator: (value){

        },
        onChanged: (dynamic newValue){},
        autofillHints: ['tada', 'james', 'school'],
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(1, 2, 1, 0),
          hintText: 'Search',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),

          ),
          
          prefixIcon: Icon(Icons.search)
        ),
      ),
    );
  }
}
