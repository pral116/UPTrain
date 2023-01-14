import 'package:flutter/material.dart';
import 'package:uptrain/utilities/color.dart';

import 'home_screen.dart';

class NavigationBars extends StatefulWidget {
  const NavigationBars({Key? key}) : super(key: key);

  @override
  State<NavigationBars> createState() => _NavigationBarsState();
}

class _NavigationBarsState extends State<NavigationBars> {
  int currentPageIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: AppColor.bodyColor,
        elevation: 20,
        shadowColor: Colors.grey,
        onDestinationSelected: (int index){
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: "Explore",
          ),
          NavigationDestination(
            icon: Icon(Icons.commute),
            label: "My Ticket",
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),

      body: <Widget>[
        const HomeScreen(),
        Container(
          color: AppColor.bodyColor,
          alignment: Alignment.center,
          child: const Text('Search Screen'),
        ),
        Container(
          color: AppColor.bodyColor,
          alignment: Alignment.center,
          child: const Text('My Tickets Screen'),
        ),
        Container(
          color: AppColor.bodyColor,
          alignment: Alignment.center,
          child: const Text('Profile Screen'),
        ),
      ][currentPageIndex],
    );
  }
}

