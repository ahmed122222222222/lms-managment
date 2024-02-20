import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/const.dart';
import 'package:lms/featcher/Coureses/persention/view/wideget/quizquestion.dart';
import 'package:lms/featcher/Coureses/persention/view/wideget/startbuttom.dart';

class Bodynotcompletquize extends StatelessWidget {
  const Bodynotcompletquize({super.key, required this.quzititel, required this.start, required this.end});
  final String quzititel,start,end;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            quzititel,
            style: GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w800),
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          "10 Points",
          style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w800),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "From",
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.normal),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    start,
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: maincolore,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              Text(
                "to",
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.normal),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    end,
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: maincolore,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Startbutttom(
          nameaction: "start",
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (builder) => Quetion()));
          },
        )
      ],
    );
  }
}
