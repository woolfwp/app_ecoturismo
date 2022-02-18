import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:profile_ecoapp/src/pages/news.dart';
import 'package:profile_ecoapp/src/pages/profile.dart';
import 'package:profile_ecoapp/src/pages/dashboard.dart';
import 'package:profile_ecoapp/src/pages/events.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTap = 0;
  final List<Widget> screens = [
    Dashboard(),
    Events(),
    News(),
    Profile(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = Dashboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentScreen = Dashboard();
            currentTap = 0;
          });
        },
        child: Icon(
          FontAwesomeIcons.route,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Events();
                        currentTap = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.solidCalendarAlt,
                          color: currentTap == 1 ? Colors.blue : Colors.green,
                        ),
                        Text(
                          'Events',
                          style: TextStyle(
                              color:
                                  currentTap == 1 ? Colors.blue : Colors.green),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = News();
                        currentTap = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.newspaper,
                          color: currentTap == 3 ? Colors.blue : Colors.green,
                        ),
                        Text(
                          'News',
                          style: TextStyle(
                              color:
                                  currentTap == 3 ? Colors.blue : Colors.green),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              //Right Tab Bar Icons
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Profile();
                        currentTap = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.notifications,
                          color: currentTap == 4 ? Colors.blue : Colors.green,
                        ),
                        Text(
                          'Notification',
                          style: TextStyle(
                              color:
                                  currentTap == 4 ? Colors.blue : Colors.green),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Profile();
                        currentTap = 5;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.userAlt,
                          color: currentTap == 5 ? Colors.blue : Colors.green,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                              color:
                                  currentTap == 5 ? Colors.blue : Colors.green),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
