import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/const.dart';
import 'package:lms/featcher/Coureses/persention/view/finised.dart';

import 'package:lms/featcher/Loginscreen/presention/view/widget/mainbuttom.dart';

import '../HeaderQution.dart';
import 'choose.dart';

class BodyQuizzQuestion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'quiz',
                          style: TextStyle(
                            color: Colors.black, // Color for "quiz"
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: ' 1',
                          style: TextStyle(
                            color: maincolore, // Color for "1"
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset("Asset/image/alarm.png"),
                      Text(
                        "1:25",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
              child: Text(
            "Question 1 :",
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w800),
          )),
          const SizedBox(
            height: 15,
          ),
          const headerquestion(),
          const SizedBox(
            height: 15,
          ),
          const choose(),
          const SizedBox(
            height: 20,
          ),
          CutamMainButtom(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => const Finished()));
              },
              nameaction: "next")
        ],
      ),
    );
  }
}
