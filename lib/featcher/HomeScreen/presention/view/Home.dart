import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:lms/core/utils/image.dart';
import 'package:lms/featcher/Coureses/persention/view/courses.dart';
import 'package:lms/featcher/HomeScreen/presention/view/widget/homebody.dart';

import 'package:lms/featcher/accout/presenton/view/account.dart';
import 'package:lms/featcher/cleander/presention/view/cleander.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.center,
          colors: [Colors.blue, Colors.white],
        )),
        child: Drawer(
          backgroundColor: Color.fromARGB(2, 1, 0, 5),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 100),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset("Asset/image/accoun.png"),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Hi Ahmed !",
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    color: Colors.black.withOpacity(.9),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Icon(Icons.account_box),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Account",
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Icon(Icons.account_box),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Account",
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Icon(Icons.account_box),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Account",
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Icon(Icons.account_box),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Account",
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 3,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(fontSize: 11),
        unselectedLabelStyle: const TextStyle(fontSize: 11),
        currentIndex: _currentIndex,
        onTap: _onTabSelected,
        selectedItemColor: const Color(0xFF3D5CFF),
        items: const [
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(Icons.home),
                SizedBox(
                  height: 10,
                ),
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
                ),
              ],
            ),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(Icons.calendar_month),
                SizedBox(
                  height: 10,
                ),
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
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.center,
            colors: [Colors.blue, Colors.white],
          ),
        ),
        child: IndexedStack(
          index: _currentIndex,
          children: [
            const HomeScreenBody(), // Add your home screen body widget
            const Courese(), // Add your courses page widget
            // Add your profile page widget
            Cleander(),
            Acount(),
          ],
        ),
      ),
    );
  }

  void _onTabSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
