import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:lms/featcher/HomeScreen/presention/view/widget/BodyHomeScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset("Asset/image/FCAl.png"),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 20),
            child: Image.asset("Asset/image/icons.png"),
          ),
        ],
        elevation: 2,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 3,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(fontSize: 11),
        unselectedLabelStyle: const TextStyle(fontSize: 11),
        currentIndex: _currentIndex,
        onTap: (index) {
          _onTabSelected(index);
        },
        selectedItemColor: const Color(0xFF3D5CFF),
        items: const [
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(Icons.home),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(FontAwesomeIcons.book),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox.shrink(),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ), // Adjust padding around empty space
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(Icons.notifications),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(Icons.person),
                SizedBox(height: 10), // Add spacing between icon and label
              ],
            ),
            label: 'Profile',
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          elevation: 0,
          onPressed: () {},
          backgroundColor: const Color(0xFF3D5CFF).withOpacity(.1),
          foregroundColor: const Color(0xFF3D5CFF),
          mini: true,
          shape: const CircleBorder(),
          child: const Icon(Icons.search),
        ),
      ),
      body: const HomeScreenbody(),
    );
  }

  void _onTabSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}