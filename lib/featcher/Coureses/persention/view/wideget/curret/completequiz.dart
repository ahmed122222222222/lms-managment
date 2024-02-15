import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/const.dart';

// ignore: camel_case_types
class completequizz extends StatelessWidget {
  const completequizz({super.key});
  @override
  Widget build(BuildContext context) {
  return  Padding(
       padding: const EdgeInsets.symmetric(horizontal: 15),
       child: Container(
         width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*.27,
     
        
            decoration: BoxDecoration(
              border: Border.all(color: maincolore)
            ),
            child: Column(
              children: [
                     Padding(
                  padding: const EdgeInsets.only(top:15),
                  child: Text("Parallel Programming Quiz 2",style: GoogleFonts.inter(fontSize: 12,fontWeight: FontWeight.w800),),
                ),
                const SizedBox(height: 2,),
                Text("10 Points",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w800),),
                const SizedBox(height:60,),
                Center(child: Text("Finished",style: GoogleFonts.poppins(fontSize: 24,color: maincolore,fontWeight: FontWeight.bold),),)
              ],
            ),
       ),
     );
  }
}
