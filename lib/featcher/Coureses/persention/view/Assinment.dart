import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:lms/core/utils/image.dart';
import 'package:lms/featcher/Coureses/persention/view/wideget/BodyAssinment.dart';

class Assinment extends StatelessWidget {
  const Assinment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Parallel Programming",
          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: const BodyAssinment(),
    );
  }
}
