import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/core/styel.dart';
import 'package:lms/featcher/Loginscreen/presention/view/creatpassword.dart';
import 'package:lms/featcher/Loginscreen/presention/view/widget/Opt.dart';
import 'package:lms/featcher/Loginscreen/presention/view/widget/mainbuttom.dart';

class BodyRestPass extends StatelessWidget {
  const BodyRestPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 22, right: 22, top: MediaQuery.of(context).size.height * .02),
      child: ListView(
        children: [
          Image.asset("Asset/image/Sending e-mail.png"),
          const SizedBox(
            height: 32,
          ),
          Center(
              child: Text(
            "Email verification",
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w800, fontSize: 24),
          )),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              "We have sent a code to your email, please ",
              style: Styels.font14,
            ),
          ),
          const Center(
            child: Text(
              "write it correctly to recover your password",
              style: Styels.font14,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          const OptVildation(),
          const SizedBox(
            height: 17,
          ),
          const Center(
              child: Text(
            "The code will expire after 3:21",
            style: Styels.font14,
          )),
          const SizedBox(
            height: 65,
          ),
          CutamMainButtom(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => CreatPassword()));
            },
            nameaction: 'next',
          ),
        ],
      ),
    );
  }
}
