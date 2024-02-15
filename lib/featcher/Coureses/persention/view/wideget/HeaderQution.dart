import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/const.dart';

class headerquestion extends StatelessWidget {
  const headerquestion({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:15.0),
      child: Container(
        height: MediaQuery.of(context).size.height*.13,
        width:MediaQuery.of(context).size.width ,
        decoration: BoxDecoration(
          border: Border.all(color: maincolore),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text("Officia illo aut nemo sequi dignissimos fugiat. Nam ut commodi sit. Voluptatem ?",style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w800),)),
        ),
      ),
    );
  }
}