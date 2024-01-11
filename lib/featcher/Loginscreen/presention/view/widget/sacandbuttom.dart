import 'package:flutter/material.dart';
import 'package:lms/core/styel.dart';
import 'package:lms/featcher/Loginscreen/presention/view/forgetpassword.dart';

class Scandbuttom extends StatelessWidget {
  const Scandbuttom({super.key});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder:( builder)=>Forgetpassword()));
      },
      style: TextButton.styleFrom(
        minimumSize: const Size(390, 50),
        padding: const EdgeInsets.only(top: 5, left: 61, right: 80, bottom: 4),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFF3B82F6)),
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: Colors.white,
      ),
      child: const Text(
        "rest password",
        style: Styels.fontblue24,
      ),
    );
  }
}
