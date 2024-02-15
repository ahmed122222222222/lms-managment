
import 'package:flutter/material.dart';

import 'package:lms/featcher/HomeScreen/presention/view/widget/Customappbar.dart';
import 'package:lms/featcher/HomeScreen/presention/view/widget/IconTab.dart';


class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [const CustomAppbar(), Expanded(child: IconTab())],
      ),
    );
  }
}
