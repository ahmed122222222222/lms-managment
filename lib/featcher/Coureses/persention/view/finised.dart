import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/core/utils/image.dart';
import 'package:lms/featcher/Coureses/persention/view/wideget/curret/bodyfinsh.dart';





class Finished extends StatelessWidget {
  const Finished({super.key});

    @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
        automaticallyImplyLeading: false,
        title:  Text("Parallel Programming",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w700),)
        ,centerTitle: true,
       
      ),
     body: BodyFish()
   );
  }
}

