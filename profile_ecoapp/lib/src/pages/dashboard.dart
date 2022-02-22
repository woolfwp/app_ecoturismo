import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:profile_ecoapp/components/category_card.dart';
import 'package:profile_ecoapp/components/search_bar.dart';
import 'package:profile_ecoapp/components/top_routes.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1470748085385-5fbb3018c796?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1124&q=80'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
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
                    'Events',
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
      ),
    );
  }

  buildCategoryList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          CategoryCard(
            'Limpia pance',
            'Pico de loro',
            FontAwesomeIcons.mountain,
            'Informacion sobre el evento',
            Colors.blue[300],
          ),
          SizedBox(
            width: 30,
          ),
          CategoryCard(
            'Limpia tu barrio',
            'Cali',
            FontAwesomeIcons.mountain,
            'Informacion sobre el evento',
            Colors.blue[300],
          ),
          SizedBox(
            width: 30,
          ),
          CategoryCard(
            'Educate sobre nuestra region',
            'Borajine',
            FontAwesomeIcons.mountain,
            'Informacion sobre el evento',
            Colors.blue[300],
          ),
          SizedBox(
            width: 30,
          ),
          CategoryCard(
            'Limpia pance',
            'Buitrera',
            FontAwesomeIcons.mountain,
            'Informacion sobre el evento',
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
            'Cuenta con 2.5km de cendero',
          ),
          SizedBox(
            height: 20,
          ),
          Routes_card(
            'Pico pance',
            'Pance',
            FontAwesomeIcons.tree,
            Colors.black,
            'Cuenta con 3km de cendero',
          ),
          SizedBox(
            height: 20,
          ),
          Routes_card(
            'ruta 3',
            'buitrera',
            FontAwesomeIcons.water,
            Colors.black,
            'Cuenta con 1km de cendero',
          ),
          SizedBox(
            height: 20,
          ),
          Routes_card(
            'ruta 4',
            'darien',
            FontAwesomeIcons.hotTub,
            Colors.black,
            'Cuenta con 5km de cendero',
          ),
          SizedBox(
            height: 20,
          ),
          Routes_card(
            'ruta 5',
            'palmira',
            FontAwesomeIcons.hotel,
            Colors.black,
            'Cuenta con 6km de cendero',
          ),
        ],
      ),
    );
  }
}
