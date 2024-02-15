import 'package:flutter/material.dart';
import 'package:lms/core/styel.dart';

class ItemPageView extends StatelessWidget {
  const ItemPageView(
      {super.key,
      required this.img,
      required this.title,
      required this.subtitle});
  final String img, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.width * .2,
        ),
        Image.asset(img),
        const SizedBox(
          height: 30,
        ),
        Text(title, textAlign: TextAlign.center, style: Styels.font22.copyWith(fontSize: 30)),
        const SizedBox(
          height: 10,
        ),
        Text(subtitle, textAlign: TextAlign.center, style: Styels.font16.copyWith(fontSize: 20)),
        const SizedBox(
          height: 38,
        ),
      ],
    );
  }
}
