import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:lms/featcher/Coureses/persention/view/wideget/curret/EroliListview.dart';

import 'package:lms/featcher/HomeScreen/presention/view/widget/Customappbar.dart';

class Enroil extends StatelessWidget {
  const Enroil({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 20.0, right: 20, top: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppbar(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Enrolled ',
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: '5',
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xfff009688), // تحديد لون الرقم
                        ),
                      ),
                      TextSpan(
                        text: ' Courses',
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset("Asset/image/bluebook 1.png"),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const EnroliListview()
          ],
        ),
      ),
    );
  }
}
