// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Startbutttom extends StatelessWidget {
  final String nameaction;
  void Function()? onPressed;

  Startbutttom({super.key, required this.nameaction, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        minimumSize: const Size(170, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: const Color(0xff2CB629),
      ),
      child: Text(
        nameaction,
        style: GoogleFonts.poppins(
            fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white),
      ),
    );
  }
}
