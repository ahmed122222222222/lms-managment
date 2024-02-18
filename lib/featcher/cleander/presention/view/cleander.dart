import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:horizontal_calendar/horizontal_calendar.dart';
import 'package:lms/const.dart';
import 'package:lms/featcher/HomeScreen/presention/view/widget/Customappbar.dart';
import 'package:lms/featcher/cleander/presention/view/widget/event.dart';

class Cleander extends StatefulWidget {
  @override
  State<Cleander> createState() => _CleanderState();
}

class _CleanderState extends State<Cleander> {
  List mcolor = [Color(0xffD1FAE5), Color(0xffBFDBFE), Color(0xffFBCFE8)];
  List scolor = [Color(0xff34D399), Color(0xff2563EB), Color(0xffDB2777)];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CustomAppbar(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Color(0xffB1B1B1)))),
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Active(), // تاريخ اليوم
                  DateItem(day: '15', month: 'Feb'), // تاريخ الغد
                  DateItem(day: '16', month: 'Feb'), // تاريخ بعد الغد
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child:
                            event(color1: mcolor[index], color2: scolor[index]),
                      )))
        ],
      ),
    );
  }
}

class DateItem extends StatelessWidget {
  final String day;
  final String month;

  const DateItem({super.key, required this.day, required this.month});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 91,
      height: 80,
      decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.transparent)),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              day,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              month,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

class Active extends StatelessWidget {
  const Active({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 91,
      height: 80,
      decoration: BoxDecoration(
          color: Color(0xff3D5CFF).withOpacity(.3),
          border: Border.all(color: Colors.transparent)),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "14",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              "feb",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
