import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/const.dart';

import 'completequiz.dart';
import '../notcompletquize.dart';


class Bodyquize extends StatelessWidget {
  const Bodyquize({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
              SizedBox(height: 0,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Text("Quizzes",style: GoogleFonts.poppins(fontSize: 24,color: maincolore,fontWeight: FontWeight.bold),)),
              ),
              completequizz(),
              Expanded(child: ListView.builder(itemCount: 1,itemBuilder: (context,index)=>notstartcours()))
              , 
    ],
   );
  }
}
