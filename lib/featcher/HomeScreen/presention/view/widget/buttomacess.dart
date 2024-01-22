import 'package:flutter/material.dart';

import '../../../../../core/styel.dart';

class Buttomacess extends StatelessWidget {
  const Buttomacess({super.key, required this.str1});
  final String str1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17.0, vertical: 15),
      child: TextButton(
        onPressed: () {},
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
              width: 1,
              color: Color(0xFF3B82F6),
            ),
          ),
        ),
        child: Text(
          str1,
          style: Styels.font20.copyWith(color: Color(0xFF3B82F6)),
        ),
      ),
    );
  }
}
