import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/const.dart';
import 'package:lms/core/utils/image.dart';
import 'package:lms/featcher/Coureses/persention/view/wideget/curret/bodyquize.dart';

import 'package:lms/featcher/Loginscreen/presention/view/widget/mainbuttom.dart';

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          "Parallel Programming",
          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: const Bodyquize(),
    );
  }
}
