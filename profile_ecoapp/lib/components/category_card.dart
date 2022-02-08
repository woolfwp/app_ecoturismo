import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryCard extends StatelessWidget {
  var _title;
  var _imageUrl;
  var _bgColor;

  CategoryCard(this._title, this._imageUrl, this._bgColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 160,
      child: Stack(
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: 110,
              height: 137,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  _title,
                  style: TextStyle(
                    color: Colors.green[500],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              height: 84,
              width: 84,
              decoration: BoxDecoration(
                color: _bgColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                _imageUrl,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
