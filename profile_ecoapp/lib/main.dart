// @dart=2.9
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:profile_ecoapp/src/pages/home.dart';
import 'package:profile_ecoapp/src/pages/login.dart';
import 'package:profile_ecoapp/src/pages/news.dart';
import 'package:profile_ecoapp/src/pages/profile.dart';
import 'package:profile_ecoapp/src/pages/events.dart';
import 'package:profile_ecoapp/src/pages/signup.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: <String, WidgetBuilder>{
        'login': (BuildContext context) => LoginPage(),
        'signup': (BuildContext context) => SignupPage(),
        'home': (BuildContext context) => HomePage(),
        'profile': (BuildContext context) => Profile(),
        'events': (BuildContext context) => Events(),
        'news': (BuildContext context) => News(),
      },
    );
  }
}
