import 'package:flutter/material.dart';
import 'package:profile_ecoapp/src/pages/home.dart';
import 'package:profile_ecoapp/src/pages/profile.dart';
import 'package:profile_ecoapp/src/pages/events.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: <String, WidgetBuilder>{
        'home': (BuildContext context) => HomePage(),
        'profile': (BuildContext context) => Profile(),
        'events': (BuildContext context) => Events(),
      },
    );
  }
}
