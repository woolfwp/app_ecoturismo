import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:profile_ecoapp/components/category_card.dart';
import 'package:profile_ecoapp/components/search_bar.dart';
import 'package:profile_ecoapp/components/top_routes.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Discover your favorite route',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: Colors.green[600],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: SearchBar(),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Routes',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green[600],
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildCategoryList(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Top Routes',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green[600],
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildRouteList(),
            ],
          ),
        ),
      ),
    );
  }

  buildCategoryList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          CategoryCard(
            'Pico de loro \n Pance',
            FontAwesomeIcons.mountain,
            Colors.blue[300],
          ),
          SizedBox(
            width: 30,
          ),
          CategoryCard(
            'Ruta 2 \n Buitrera',
            FontAwesomeIcons.tree,
            Colors.blue[300],
          ),
          SizedBox(
            width: 30,
          ),
          CategoryCard(
            'Ruta 3 \n Darien',
            FontAwesomeIcons.water,
            Colors.blue[300],
          ),
          SizedBox(
            width: 30,
          ),
          CategoryCard(
            'Ruta 4 \n Palmira',
            FontAwesomeIcons.hotTub,
            Colors.blue[300],
          ),
          SizedBox(
            width: 30,
          ),
        ],
      ),
    );
  }

  buildRouteList() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: <Widget>[
          Routes_card(
            'Pico de loro',
            'Pance',
            FontAwesomeIcons.mountain,
            Colors.black,
          ),
          SizedBox(
            height: 20,
          ),
          Routes_card(
            'Pico pance',
            'Pance',
            FontAwesomeIcons.tree,
            Colors.black,
          ),
          SizedBox(
            height: 20,
          ),
          Routes_card(
            'ruta 3',
            'buitrera',
            FontAwesomeIcons.water,
            Colors.black,
          ),
          SizedBox(
            height: 20,
          ),
          Routes_card(
            'ruta 4',
            'darien',
            FontAwesomeIcons.hotTub,
            Colors.black,
          ),
          SizedBox(
            height: 20,
          ),
          Routes_card(
            'ruta 5',
            'palmira',
            FontAwesomeIcons.hotel,
            Colors.black,
          ),
        ],
      ),
    );
  }
}