import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:lms/const.dart';

class CustomDotsindecater extends StatelessWidget {
  const CustomDotsindecater({super.key, required this.indexpage});
  final int indexpage;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
        decorator: DotsDecorator(
            activeSize: const Size(40, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            activeColor: maincolore,
            size: const Size(20, 5),
            shape: const LinearBorder()),
        dotsCount: 2,
        position: indexpage);
  }
}
