import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:lms/featcher/HomeScreen/presention/view/widget/BodyConitinerUpcomingCoureses.dart';
import 'package:lms/featcher/HomeScreen/presention/view/widget/BodyConitnberoncong.dart';
import 'package:lms/featcher/HomeScreen/presention/view/widget/BodyContinerAssinment.dart';
import 'package:lms/featcher/HomeScreen/presention/view/widget/BodyContinerQuiz.dart';
import 'package:lms/featcher/HomeScreen/presention/view/widget/BodyTap1.dart';
import 'package:lms/featcher/HomeScreen/presention/view/widget/Iteamgonig.dart';

class IconTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: <Widget>[
          ButtonsTabBar(
            height: 73,
            buttonMargin: const EdgeInsets.symmetric(horizontal: 25),
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            backgroundColor: Colors.blueAccent,
            unselectedBackgroundColor: Colors.grey[300],
            unselectedLabelStyle: const TextStyle(color: Colors.black),
            labelStyle: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
            tabs: const [
              Tab(
                icon: Icon(Icons.book_online),
              ),
              Tab(
                icon: Icon(Icons.assessment),
              ),
              Tab(icon: Icon(Icons.quiz)),
              Tab(icon: Icon(Icons.upcoming)),
            ],
          ),
          const Expanded(
            child: TabBarView(
              children: <Widget>[
                BodyTap1(
                  titelpage: 'Ongoing Coureses',
                  widget: IteamonGoingCourese(
                    widget: BodyContinerOngoingCourese(),
                  ),
                ),
                BodyTap1(
                    titelpage: "Assinment",
                    widget:
                        IteamonGoingCourese(widget: BodyContinerAssinment())),
                BodyTap1(
                    titelpage: "Quizzz",
                    widget: IteamonGoingCourese(widget: BodyContinerQuiz())),
                BodyTap1(
                    titelpage: "upComing Coures",
                    widget: IteamonGoingCourese(
                        widget: BodyConitinerUpcomingCoureses())),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
