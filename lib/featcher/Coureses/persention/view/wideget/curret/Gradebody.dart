import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/featcher/Coureses/persention/view/wideget/curret/Back.dart';
import 'package:lms/featcher/Coureses/persention/view/wideget/curret/tabel.dart';

import '../Listtielgrade.dart';

class Boddygrad extends StatelessWidget {
  const Boddygrad({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Back(),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: Text(
                "Grades",
                style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff3D5CFF)),
              ),
            ),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TabelGraid()),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'GBA : ',
                      style: GoogleFonts.poppins(
                          fontSize: 20, color: Colors.black),
                      children: [
                        TextSpan(
                          text: '3.21',
                          style: GoogleFonts.poppins(
                              fontSize: 20, color: Color(0xff3D5CFF)),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Grade :  ',
                      style: GoogleFonts.poppins(
                          fontSize: 20, color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'B+',
                          style: GoogleFonts.poppins(
                              fontSize: 20, color: Color(0xff3D5CFF)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
