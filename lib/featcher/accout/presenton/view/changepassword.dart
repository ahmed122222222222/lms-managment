import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/core/utils/image.dart';
import 'package:lms/featcher/HomeScreen/presention/view/widget/Customappbar.dart';
import 'package:lms/featcher/Loginscreen/presention/view/widget/customtextfiled.dart';
import 'package:lms/featcher/Loginscreen/presention/view/widget/mainbuttom.dart';

class changepassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.center,
            colors: [Colors.blue, Colors.white],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Change Password",
                          style: GoogleFonts.poppins(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .13,
                  ),
                  Image.asset("Asset/image/Enter Password 3.png"),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextFormFiled(),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextFormFiled(),
                  SizedBox(
                    height: 30,
                  ),
                  CutamMainButtom(onPressed: () {}, nameaction: "Update")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
