import 'package:flutter/material.dart';

class IteamonGoingCourese extends StatelessWidget {
  const IteamonGoingCourese({super.key, required this.widget});

  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * .11,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(25), topRight: Radius.circular(25)),
            border: Border.all(color: (const Color(0xff009688)))),
        child: widget);
  }
}
