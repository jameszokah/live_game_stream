import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:gamelive/screens/screens.dart';
import 'package:gamelive/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final List<Widget> bottomIcons = <Widget>[
  Icon(CupertinoIcons.home),
  Icon(CupertinoIcons.search),
  Icon(FlutterIcons.trophy_award_mco),
];

final List<Widget> screens = <Widget>[
  ExploreScreen(),
  SearchScreen(),
  ProfileScreen(),
];

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        items: bottomIcons,
        animationCurve: Curves.easeInOut,
        index: currentIndex,
        onTap: (index) {
          //Handle button tap
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
