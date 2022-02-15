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
            delegate: SliverChildListDelegate(
              [
                Stack(
                  children: [
                    // Imagen de fondo

                    Transform.translate(
                      offset: Offset(0.0, -150.0),
                      child: FadeInImage(
                          fit: BoxFit.cover,
                          placeholder: NetworkImage(
                              'https://images.unsplash.com/photo-1509822307817-ce671efcf7d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=554&q=80'),
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1509822307817-ce671efcf7d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=554&q=80')),
                    ),

                    Column(
                      children: [
                        // Flecha de regreso
                        Container(
                          alignment: AlignmentDirectional.topStart,
                          margin: EdgeInsets.only(top: 50.0, left: 10.0),
                        ),

                        _accountInfo(),
                        _dataUser(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
} //Clase

Widget _accountInfo() {
  return Center(
    child: Column(children: [
      Container(
        alignment: Alignment.topRight,
        child: Icon(
          Icons.edit,
          color: Colors.white,
          size: 30,
        ),
      ),
      CircleAvatar(
        backgroundImage: NetworkImage(
            'https://scontent.fclo1-3.fna.fbcdn.net/v/t1.6435-9/120401748_162605385509918_2368685488940340175_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=Pzy7JhaoleoAX8cdQb3&_nc_ht=scontent.fclo1-3.fna&oh=00_AT_3bhlSOzO-4Ki4evEezK_Tx6YzvQxaJHcKBCBTAwkFrA&oe=622540F1'),
        radius: 60.0,
      ),
    ]),
  );
}

Widget _dataUser() {
  return Container(
    padding: EdgeInsets.symmetric(
      horizontal: 50.0,
      vertical: 70.0,
    ),
    child: Column(
      children: [
        buildTextField("Full Name", "Sebastian Gomez"),
        buildTextField("Age", "22"),
        buildTextField("Peso", "75"),
        buildTextField("Altura", "1.80 cm"),
        buildTextField("Email", "sebas@gmail.com"),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RaisedButton(
              onPressed: () {},
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 40),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                'CANCEL',
                style: TextStyle(
                  fontSize: 14,
                  letterSpacing: 2.2,
                  color: Colors.black,
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {},
              color: Colors.green[600],
              padding: EdgeInsets.symmetric(horizontal: 40),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                'SAVE',
                style: TextStyle(
                  fontSize: 14,
                  letterSpacing: 2.2,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ],
    ),
  );
}

Column buildTextField(String labelText, String placeholder) {
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(bottom: 35.0),
      ),
      TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(bottom: 3),
          labelText: labelText,
          labelStyle: TextStyle(
            fontSize: 20,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: placeholder,
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    ],
  );
}
