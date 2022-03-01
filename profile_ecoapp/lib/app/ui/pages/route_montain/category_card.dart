import 'package:flutter/material.dart';
import 'package:profile_ecoapp/app/ui/pages/events/detail_event.dart';

class CategoryCard extends StatelessWidget {
  var _name;
  var _location;
  var _imageUrl;
  var _aboutEvent;
  var _bgColor;

  CategoryCard(this._name, this._location, this._imageUrl, this._aboutEvent,
      this._bgColor);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                DetailEvent(_name, _location, _imageUrl, _aboutEvent),
          ),
        );
      },
      child: Container(
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
                    _name,
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
      ),
    );
  }
}
