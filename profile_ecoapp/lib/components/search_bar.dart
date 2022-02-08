import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * 0.7,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 17),
          decoration: BoxDecoration(
            color: Colors.blue[200],
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextField(
            decoration: InputDecoration.collapsed(
              hintText: 'Search for routes',
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: MaterialButton(
            onPressed: () {},
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 13,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            color: Colors.green[600],
            child: Icon(Icons.search),
          ),
        ),
      ],
    );
  }
}
