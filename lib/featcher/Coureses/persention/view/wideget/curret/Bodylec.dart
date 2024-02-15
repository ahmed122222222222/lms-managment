import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/const.dart';
import 'package:lms/featcher/Coureses/persention/view/wideget/curret/Lectab.dart';
import 'package:lms/featcher/Coureses/persention/view/wideget/curret/headerlec.dart';

class Bodylec extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Center(child: Headers()),
       SizedBox(height:20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Course Materials",
            style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold, color: maincolore),
          ),
        ),
        SizedBox(height: 20,),
        Expanded(child: LecTap())
      ],
    );
  }
}
