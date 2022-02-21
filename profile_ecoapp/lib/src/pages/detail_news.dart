import 'package:flutter/material.dart';
import 'package:profile_ecoapp/components/listitem.dart';

class DetailsNews extends StatelessWidget {
  final String tag;
  final ListItem item;

  const DetailsNews({Key? key, required this.item, required this.tag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(item.imgUrl),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Text(
                          item.newsTitle,
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Icon(Icons.person),
                            Text(
                              item.author,
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Icon(Icons.date_range),
                            Text(
                              item.date,
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          'text ejemplo',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
