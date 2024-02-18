import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

import 'package:lms/featcher/Coureses/persention/view/wideget/curret/Gridviewlec.dart';

class LecTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 00),
            child: ButtonsTabBar(
              height: 50,
              radius: 16,
              buttonMargin: const EdgeInsets.symmetric(horizontal: 10),
              contentPadding: const EdgeInsets.symmetric(horizontal: 70),
              backgroundColor: Colors.blueAccent,
              unselectedBackgroundColor: Color(0xfff0D1B2A),
              unselectedLabelStyle: const TextStyle(color: Colors.white),
              labelStyle: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              tabs: const [
                Tab(
                  text: "lect",
                ),
                Tab(
                  text: "lab",
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 10),
                  child: LecListView(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 10),
                  child: LecListView(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
