import 'package:flutter/material.dart';
import 'package:lms/core/styel.dart';
import 'package:lms/featcher/Loginscreen/presention/view/forgetpassword.dart';
import 'package:lms/featcher/Loginscreen/presention/view/fristrest.dart';

class Scandbuttom extends StatelessWidget {
  const Scandbuttom({super.key, required this.titel});
 final String titel;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder:( builder)=>Massagerest()));
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
      child:  Text(
        titel,
        style: Styels.fontblue24,
      ),
    );
  }
}
