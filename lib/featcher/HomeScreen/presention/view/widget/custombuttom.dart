import 'package:flutter/material.dart';
import 'package:lms/core/styel.dart';

class SacandButtomHome extends StatelessWidget {
  const SacandButtomHome({super.key, required this.titel});
  final String titel;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        minimumSize: const Size(20, 21),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFF3B82F6)),
          borderRadius: BorderRadius.circular(3),
        ),
        backgroundColor: Colors.white,
      ),
      child: Text(
        titel,
        style: Styels.fontblue24.copyWith(fontSize: 10),
      ),
    );
  }
}
