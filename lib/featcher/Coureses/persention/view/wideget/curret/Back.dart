import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Back extends StatelessWidget {  @override
  Widget build(BuildContext context) {
   return Row(children: [IconButton( onPressed: () { Navigator.pop(context); }, icon: Icon(Icons.arrow_back),),
            SizedBox(width: MediaQuery.of(context).size.width*.2,),
            Text("Parallel Programming",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w700),)],);

  }
}