import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/const.dart';

// ignore: must_be_immutable
class ItemLIs extends StatelessWidget { 
  Color color;
  String sttr;
   void Function()? onPressed;
  ItemLIs({super.key,required this.color,required this.sttr,required this.onPressed});
   @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
      
          Container(
            height: MediaQuery.of(context).size.height*.11,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color:  color,
               borderRadius:BorderRadius.circular(5),
               border:const BorderDirectional(
                
               )             
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(sttr,style: GoogleFonts.poppins(color: maincolore,fontSize: 24,fontWeight: FontWeight.w600),)
                 , IconButton(icon: const Icon(Icons.arrow_forward,size: 25), onPressed:onPressed ,) 
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}