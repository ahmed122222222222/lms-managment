import 'package:flutter/material.dart';

import 'package:lms/featcher/tips/presention/view/widget/tipsbod.dart';

class Tips1 extends StatelessWidget {
  const Tips1({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true ,),
      body: const BodyTips1(),
    );
  }
}
