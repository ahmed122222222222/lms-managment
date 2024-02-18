// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/featcher/Coureses/persention/view/Assinment.dart';
import 'package:lms/featcher/Coureses/persention/view/garid.dart';
import 'package:lms/featcher/Coureses/persention/view/lec.dart';
import 'package:lms/featcher/Coureses/persention/view/quize.dart';

import 'iteamListview.dart';

class BodyMatrier extends StatelessWidget {
  List colorsss = [
    const Color(0xffD1FAE5),
    const Color(0xffFAE8FF),
    const Color(0xfffD9E9FE),
    const Color(0xffFDE2F1)
  ];
  List title = ["Course Materials", "Assignments", "Quizzes", "Grades"];
  List nav = [Lec(), const Assinment(), Quiz(), gerad()];
  BodyMatrier({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: ListTile(
            leading: const Icon(
              Icons.arrow_back,
              size: 20,
              color: Colors.black,
            ),
            trailing: Image.asset("Asset/image/Online Learning 1.png"),
            title: Text("Parallel Programming",
                style: GoogleFonts.poppins(
                    fontSize: 15, fontWeight: FontWeight.bold)),
            subtitle: Text(
              "Dr : Amr Masoud",
              style: GoogleFonts.poppins(
                  fontSize: 10, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ItemLIs(
                      color: colorsss[index],
                      sttr: title[index],
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => nav[index]));
                      },
                    ),
                  )),
        )
      ],
    );
  }
}
