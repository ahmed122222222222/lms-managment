import 'package:flutter/material.dart';
import 'package:lms/featcher/Coureses/persention/view/wideget/curret/coureseiteam.dart';

class EnroliListview extends StatelessWidget {
  const EnroliListview({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: CoureseIteam(),
              )),
    );
  }
}