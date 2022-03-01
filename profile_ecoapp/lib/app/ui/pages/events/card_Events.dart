import 'package:flutter/material.dart';

class CardsView extends StatelessWidget {
  const CardsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: PageView(
        scrollDirection: Axis.horizontal,
        pageSnapping: false,
        controller: PageController(
          initialPage: 0,
          viewportFraction: 0.46,
        ),
        children: <Widget>[
          _card('Clean Up', '19/10/2022', 'Pueblo Pance'),
          _card('Clean Up', '20/10/2022', 'Darien'),
          _card('Clean Up', '21/10/2022', 'Buitrera'),
          _card('Clean Up', '22/10/2022', 'Pueblo Pance'),
        ],
      ),
    );
  }

  Widget _card(String titulo, String fecha, String lugar) {
    final card = Card(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      color: Colors.green,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.blue[300],
              radius: 25,
              child: Icon(
                Icons.star,
                color: Colors.blue[700],
                size: 30,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              titulo,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              fecha,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              lugar,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 25,
              width: 80,
              child: RaisedButton(
                textColor: Colors.black,
                shape: StadiumBorder(),
                color: Colors.blue,
                child: Text(
                  'View',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
    return card;
  }
}
