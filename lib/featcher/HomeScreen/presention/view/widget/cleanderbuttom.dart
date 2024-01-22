import 'package:flutter/material.dart';
import 'package:lms/core/styel.dart';

class Cleanderbuttom extends StatelessWidget {
  const Cleanderbuttom({super.key});
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          // Add your onPressed functionality here
        },
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          ),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
          side: MaterialStateProperty.all<BorderSide>(
            const BorderSide(
              width: 2,
              color: Color(0xFF3B82F6),
            ),
          ),
        ),
        child: Text(
          "cleander",
          style: Styels.font12.copyWith(color: const Color(0xFF3B82F6)),
        ));
  }
}
