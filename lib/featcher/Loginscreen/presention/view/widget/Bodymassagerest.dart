import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/core/styel.dart';
import 'package:lms/featcher/Loginscreen/presention/view/forgetpassword.dart';
import 'package:lms/featcher/Loginscreen/presention/view/widget/customtextfiled.dart';
import 'package:lms/featcher/Loginscreen/presention/view/widget/mainbuttom.dart';

class BodyMassageRest extends StatelessWidget {
  const BodyMassageRest({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 22, right: 22, top: MediaQuery.of(context).size.height * .12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("Asset/image/Sending e-mail.png"),
          const SizedBox(
            height: 16,
          ),
          Text(
            "Reset Password",
            style:
                GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "Enter your email to reset your password",
            style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(.6)),
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextFormFiled(),
          SizedBox(
            height: 30,
          ),
          CutamMainButtom(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => const Forgetpassword()));
              },
              nameaction: 'next')
        ],
      ),
    );
  }
}
