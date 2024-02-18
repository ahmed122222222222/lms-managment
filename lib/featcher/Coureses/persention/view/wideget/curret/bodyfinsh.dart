import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/const.dart';
import 'package:lms/featcher/Coureses/persention/view/quize.dart';
import 'package:lms/featcher/Loginscreen/presention/view/widget/mainbuttom.dart';

class BodyFish extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * .11),
          child: Text(
            "Finished !",
            style: GoogleFonts.poppins(
                fontSize: 32, color: maincolore, fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          "Answers have been sent successfully",
          style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Color(0xff717171)),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .11,
        ),
        Image.asset("Asset/image/Note Check.png"),
        SizedBox(
          height: MediaQuery.of(context).size.height * .11,
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: CutamMainButtom(
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (builder) => Quiz()));
              },
              nameaction: "Finished"),
        )
      ],
    );
  }
}
