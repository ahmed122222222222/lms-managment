import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Headers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: (Text(
            "Matierals > lec",
            style:
                GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
          )),
        ),
      ),
    );
  }
}
