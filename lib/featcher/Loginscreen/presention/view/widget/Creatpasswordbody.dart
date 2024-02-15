// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/core/styel.dart';
import 'package:lms/core/utils/image.dart';
import 'package:lms/featcher/Loginscreen/presention/view/widget/creatpasswordfiled.dart';
import 'package:lms/featcher/Loginscreen/presention/view/widget/mainbuttom.dart';

class CreatPasswordBody extends StatefulWidget {
  const CreatPasswordBody({super.key});

  @override
  State<CreatPasswordBody> createState() => _CreatPasswordBodyState();
}

class _CreatPasswordBodyState extends State<CreatPasswordBody> {
  GlobalKey<FormState> globalKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 22, right: 22, top: MediaQuery.of(context).size.height * .02),
      child: Form(
        key: globalKey,
        child: ListView(
          children: [
            Image.asset(Images.restpassimage),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: Text(
                "Reset your password",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w800, fontSize: 24),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                "From your classroom, enter the new",
                style: Styels.font14,
              ),
            ),
            const Center(
              
            ),
            const SizedBox(
              height: 30,
            ),
          
            const SizedBox(
              height: 4,
            ),
            const CustomPasswordTextFormFiled(),
            const SizedBox(
              height: 50,
            ),
            CutamMainButtom(
              onPressed: () {
                if (globalKey.currentState!.validate()) {
                  globalKey.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
              nameaction: 'next',
            )
          ],
        ),
      ),
    );
  }
}
