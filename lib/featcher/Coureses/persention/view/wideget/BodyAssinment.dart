import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:lms/featcher/Coureses/persention/view/wideget/Iteamassinment.dart';

import 'package:lms/featcher/Coureses/persention/view/wideget/completeAssinment.dart';
import 'package:lms/featcher/Coureses/persention/view/wideget/curret/Assinmentiteam.dart';

import 'package:lms/featcher/HomeScreen/presention/view/widget/BodyConitinerUpcomingCoureses.dart';
import 'package:lms/featcher/HomeScreen/presention/view/widget/BodyConitnberoncong.dart';
import 'package:lms/featcher/HomeScreen/presention/view/widget/BodyContinerAssinment.dart';
import 'package:lms/featcher/HomeScreen/presention/view/widget/BodyContinerQuiz.dart';
import 'package:lms/featcher/HomeScreen/presention/view/widget/BodyTap1.dart';
import 'package:lms/featcher/HomeScreen/presention/view/widget/Iteamgonig.dart';

import 'ExcuteAssinment.dart';
import 'HeaderAsinmnt.dart';

class BodyAssinment extends StatelessWidget {
  const BodyAssinment({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 20),
      child: Column(
        children: [
          Excutee(),
          const SizedBox(
            height: 10,
          ),
          Expanded(child: Ahmed())
        ],
      ),
    );
  }
}

class Ahmed extends StatelessWidget {
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
              contentPadding: const EdgeInsets.symmetric(horizontal: 55),
              backgroundColor: Colors.blueAccent,
              unselectedBackgroundColor: Color(0xfff0D1B2A),
              unselectedLabelStyle: const TextStyle(color: Colors.white),
              labelStyle: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              tabs: const [
                Tab(
                  text: "pending",
                ),
                Tab(
                  text: "complete",
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
                  child: Assinmentnotcomplete(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 10),
                  child: Assinmentcomlte(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Assinmentnotcomplete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: AssinmentIteam(),
            ));
  }
}

class Assinmentcomlte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: completingAsinment(),
            ));
  }
}
