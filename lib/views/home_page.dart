import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

import 'dashboard/dashboard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<IconData> iconList = const [
    Icons.space_dashboard_rounded,
    Icons.file_open_rounded,
    Icons.calendar_month,
    Icons.cases_rounded,
    Icons.groups_2_sharp,
  ];

  int _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: iconList,
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.none,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          backgroundColor: Colors.white,
          activeColor: Colors.blueAccent[400],
          inactiveColor: Colors.grey[500],
          scaleFactor: 2,
          elevation: 10,
          iconSize: 24,
          onTap: (index) => setState(() => _bottomNavIndex = index),
        ),
        body: _bottomNavIndex == 0
            ? const Dashboard()
            : Center(
                child: Image.network(
                    'https://cdni.iconscout.com/illustration/premium/thumb/website-under-development-6299829-5295151.png?f=webp'),
              ),
      ),
    );
  }
}
