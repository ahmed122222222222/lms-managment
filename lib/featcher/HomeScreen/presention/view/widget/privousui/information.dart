import 'package:flutter/material.dart';

import 'package:lms/featcher/HomeScreen/presention/view/widget/privousui/bodycontiner.dart';

class Information extends StatelessWidget {
  const Information({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.17,
      decoration: BoxDecoration(
        color: const Color(0xfff3d5cff),
        borderRadius: BorderRadius.circular(10),
      ),
      child:const BodyContiner()
    );
  }
}
