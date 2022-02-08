import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:profile_ecoapp/src/pages/detail_route.dart';

class Routes_card extends StatelessWidget {
  var _name;
  var _location;
  var _imagenUrl;
  var _bgColor;

  Routes_card(this._name, this._location, this._imagenUrl, this._bgColor);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailRoute(),
          ),
        );
      },
      child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.5),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(
                _imagenUrl,
                color: Colors.black,
              ),
              title: Text(
                _name,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                _location,
                style: TextStyle(color: _bgColor.withOpacity(0.7)),
              ),
            ),
          )),
    );
  }
}
