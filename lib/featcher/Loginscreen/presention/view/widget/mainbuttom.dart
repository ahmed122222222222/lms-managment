import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/core/styel.dart';

class CutamMainButtom extends StatelessWidget {
  const CutamMainButtom({super.key, required this.onPressed, required this.nameaction});
  final void Function()? onPressed;
  final String nameaction;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.only(
          top: 4,
          left: 115,
          right: 120,
          bottom: 5,
        ),
        minimumSize: const Size(390, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: const Color(0xFF3B82F6),
      ),
      child:  Text(
        nameaction,
        style: GoogleFonts.poppins(fontSize: 24,fontWeight:FontWeight.w500 ,color:Colors.white ),
      ),
    );
  }
}
