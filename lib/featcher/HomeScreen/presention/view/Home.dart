import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lms/core/styel.dart';
import 'package:lms/core/utils/image.dart';
import 'package:lms/featcher/HomeScreen/presention/view/widget/custombuttom.dart';

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
          child: Row(
            children: [
              const Icon(Icons.menu),
              const SizedBox(
                width: 11,
              ),
              Image.asset(Images.logo),
            ],
          ),
        ),
        actions: [
          Image.asset("Asset/image/basil_notification-on-solid.png"),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SacandButtomHome(
              titel: 'logout',
            ),
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
    );
  }

  void _onTabSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
