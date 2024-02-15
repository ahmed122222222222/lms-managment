import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyGradView extends StatelessWidget {
  const BodyGradView({super.key, required this.imag, required this.color, required this.titel,required this.onTap});
  final String imag,titel;
 final  Color color;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
   return GestureDetector(
    onTap:onTap ,
     child: Container(
          height: MediaQuery.of(context).size.height*.5,
          width: 20,
          decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(25)),
          child: Column(
            
           children: [
            Image.asset(imag),
            SizedBox(height: 40,),
           Text(titel,style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold),)
           ],
   
          ),
           ),
   );
  }
}
