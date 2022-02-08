import 'package:flutter/material.dart';
import 'package:profile_ecoapp/src/pages/dashboard.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          Stack(
            children: [
              // Imagen de fondo

              FadeInImage(
                  fit: BoxFit.contain,
                  placeholder: NetworkImage(
                      'https://images.unsplash.com/photo-1509822307817-ce671efcf7d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=554&q=80'),
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1509822307817-ce671efcf7d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=554&q=80')),

              Column(
                children: [
                  // Flecha de regreso
                  Container(
                    alignment: AlignmentDirectional.topStart,
                    margin: EdgeInsets.only(top: 50.0, left: 10.0),
                  ),
                  _accountInfo(),
                  _followTabs(),
                  _iconTabs(),
                ],
              )
            ],
          )
        ])),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          sliver: SliverGrid.count(
            crossAxisCount: 3,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            children: [_photo(), _photoDos()],
          ),
        )
      ],
    ));
  }
} //Clase

Widget _accountInfo() {
  return Center(
    child: Column(children: [
      CircleAvatar(
        backgroundImage: NetworkImage(
            'https://scontent.fclo1-3.fna.fbcdn.net/v/t1.6435-9/120401748_162605385509918_2368685488940340175_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=Pzy7JhaoleoAX8cdQb3&_nc_ht=scontent.fclo1-3.fna&oh=00_AT_3bhlSOzO-4Ki4evEezK_Tx6YzvQxaJHcKBCBTAwkFrA&oe=622540F1'),
        radius: 60.0,
      ),
      Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            'Sebastian Gomez',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 24.0),
          )),
      Container(
          child: Text(
        'Ingeriero De Sistemas',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w400, fontSize: 15.0),
      ))
    ]),
  );
}

Widget _followTabs() {
  return Container(
    margin: EdgeInsets.only(top: 50.0),
    color: Color.fromRGBO(0, 0, 0, 0.4),
    padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              'FRIENDS',
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1.0),
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '2318',
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1.0),
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
        Column(
          children: [
            Text(
              'FOLLOWING',
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1.0),
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '364',
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1.0),
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
        Column(
          children: [
            Text(
              'FOLLOWER',
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1.0),
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '175',
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1.0),
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500),
            )
          ],
        )
      ],
    ),
  );
}

Widget _iconTabs() {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.picture_in_picture,
              size: 30.0,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.insert_photo,
              size: 30.0,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.play_circle_filled,
              size: 30.0,
            ))
      ],
    ),
  );
}

Widget _photo() {
  return Container(
    child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image(
            width: 110,
            height: 110,
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://scontent.fclo1-3.fna.fbcdn.net/v/t1.6435-9/126389614_179304170506706_2570147323453247897_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=YCZane2OI2oAX8a3MkA&tn=ObvjzO1H9IdA-cz2&_nc_ht=scontent.fclo1-3.fna&oh=00_AT99hqQHaDfVAoFO6xD-ufEFIFTDb_bFHP9-FNPxezdy2A&oe=6226424D'))),
  );
}

Widget _photoDos() {
  return Container(
    child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image(
            width: 110,
            height: 110,
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://scontent.fclo1-3.fna.fbcdn.net/v/t1.6435-9/126389614_179304170506706_2570147323453247897_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=YCZane2OI2oAX8a3MkA&tn=ObvjzO1H9IdA-cz2&_nc_ht=scontent.fclo1-3.fna&oh=00_AT99hqQHaDfVAoFO6xD-ufEFIFTDb_bFHP9-FNPxezdy2A&oe=6226424D'))),
  );
}
