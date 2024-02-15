import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderSubject extends StatelessWidget {
  const HeaderSubject({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello !",
              style: GoogleFonts.poppins(
                  fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Wishing you",
              style: GoogleFonts.poppins(
                  fontSize: 11, fontWeight: FontWeight.normal),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 5,
            ),
            Text(
              "continued success ",
              style: GoogleFonts.poppins(
                  fontSize: 11, fontWeight: FontWeight.normal),
            )
          ],
        ),
        Image.asset("Asset/image/Online Learning 1.png"),
      ],
    );
  }
}
