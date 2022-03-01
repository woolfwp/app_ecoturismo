import 'package:flutter/material.dart';

class EventsCategory extends StatefulWidget {
  EventsCategory({Key? key}) : super(key: key);

  @override
  State<EventsCategory> createState() => _EventsCategoryState();
}

class _EventsCategoryState extends State<EventsCategory> {
  static final _selected = Colors.blue;
  static final _unselected = Colors.green;

  Color _btnDaily = _unselected;
  Color _btnWeekly = _unselected;
  Color _btnMonthly = _selected;

  @override
  Widget build(BuildContext context) {
    final styleButton = TextStyle(
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w300,
    );

    return Container(
      padding: EdgeInsets.all(0),
      height: 36.0,
      width: 300.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.green,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RaisedButton(
            color: _btnDaily,
            elevation: 0,
            shape: StadiumBorder(),
            textColor: Colors.white,
            child: Text(
              'Daily',
              style: styleButton,
            ),
            onPressed: () {
              setState(() {
                _btnDaily = _selected;
                _btnWeekly = _unselected;
                _btnMonthly = _unselected;
              });
            },
          ),
          RaisedButton(
            color: _btnWeekly,
            elevation: 0,
            shape: StadiumBorder(),
            textColor: Colors.white,
            child: Text(
              'Weekly',
              style: styleButton,
            ),
            onPressed: () {
              setState(
                () {
                  _btnDaily = _unselected;
                  _btnWeekly = _selected;
                  _btnMonthly = _unselected;
                },
              );
            },
          ),
          RaisedButton(
            color: _btnMonthly,
            elevation: 0,
            shape: StadiumBorder(),
            textColor: Colors.white,
            child: Text(
              'Monthly',
              style: styleButton,
            ),
            onPressed: () {
              setState(
                () {
                  _btnDaily = _unselected;
                  _btnWeekly = _unselected;
                  _btnMonthly = _selected;
                },
              );
            },
          )
        ],
      ),
    );
  }
}
