import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/const.dart';
import 'package:lms/core/utils/image.dart';
import 'package:lms/featcher/Coureses/persention/view/Assinment.dart';
import 'package:lms/featcher/Coureses/persention/view/garid.dart';
import 'package:lms/featcher/Coureses/persention/view/lec.dart';
import 'package:lms/featcher/Coureses/persention/view/quize.dart';
import 'package:lms/featcher/Coureses/persention/view/wideget/curret/odyactionchoose.dart';

// ignore: must_be_immutable, camel_case_types
class ChooseAaction extends StatelessWidget {
  const ChooseAaction({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Parallel Programming",
            style:
                GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
        ),
        body: const BodyChoseAction());
  }
}
