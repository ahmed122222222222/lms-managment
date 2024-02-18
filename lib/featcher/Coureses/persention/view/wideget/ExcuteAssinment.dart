import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/featcher/Coureses/persention/view/wideget/taskdane.dart';

class Excutee extends StatelessWidget {
  const Excutee({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: Container(
        height: MediaQuery.of(context).size.height * .22,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(
                // ignore: use_full_hex_values_for_flutter_colors
                colors: [Color(0xfff1c40ff), Color(0xff223CC2)])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 15, bottom: 5),
              child: Text(
                "You are a superb warrior!",
                style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .15,
                  width: 150,
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: taskdoniteam(),
                    ),
                  ),
                ),
                Image.asset("Asset/image/startup-3025714-2526912.png"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
