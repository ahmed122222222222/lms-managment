import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lms/featcher/HomeScreen/presention/view/widget/cleanderbuttom.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  late Timer _timer;
  double progress = 0.0;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(microseconds: 1), (timer) {
      setState(() {
        progress = 0.0; // عند بداية كل ساعة، قم بإعادة تعيين التقدم إلى 0%
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // يجب إلغاء العد التنازلي عند تجميع الحالة
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const padding2 = Padding(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      child: Column(
        children: [
          Text("Event today", style: TextStyle(fontSize: 11)),
          SizedBox(height: 4.5),
          Row(
            children: [
              Text("3 lec",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
              Text("/ 5 lec", style: TextStyle(fontSize: 10)),
            ],
          ),
        ],
      ),
    );
    return Card(
      elevation: 3,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                padding2,
                Padding(
                  padding: EdgeInsets.only(right: 12.0, top: 5),
                  child: Cleanderbuttom(),
                )
              ],
            ),
            FractionallySizedBox(
              widthFactor: 1,
              child: LinearProgressIndicator(
                value: .5,
                // ignore: use_full_hex_values_for_flutter_colors
                valueColor:
                    const AlwaysStoppedAnimation<Color>(Color(0xfffEE7908)),
                // ignore: use_full_hex_values_for_flutter_colors
                color: const Color(0xfffEE7908),
                minHeight: 6,
                borderRadius: BorderRadius.circular(5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
