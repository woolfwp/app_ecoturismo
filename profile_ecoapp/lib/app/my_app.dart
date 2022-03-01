import 'package:flutter/material.dart';
import 'package:profile_ecoapp/app/ui/routes/app_routes.dart';
import 'package:profile_ecoapp/app/ui/routes/routes.dart';
import 'package:flutter_meedu/router.dart' as router;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eco App',
      navigatorKey: router.navigatorKey,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.LOGIN,
      navigatorObservers: [
        router.observer,
      ],
      routes: appRoutes,
    );
  }
}
