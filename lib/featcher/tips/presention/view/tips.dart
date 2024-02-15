import 'package:flutter/material.dart';

import 'package:lms/featcher/tips/presention/view/widget/tipsbod.dart';

class Tips1 extends StatelessWidget {
  const Tips1({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     
     
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.center,
            colors: [Colors.blue, Colors.white],
          ),),
        child: const BodyTips1()),
    );
  }
}
