import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class taskdoniteam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("Asset/image/Tick Square.png"),
        const SizedBox(
          width: 2,
        ),
        Text(
          "Done 4 task today",
          style: GoogleFonts.poppins(
              fontSize: 10, fontWeight: FontWeight.normal, color: Colors.white),
        )
      ],
    );
  }
}
