import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/const.dart';

import 'curret/bodynotcompletequize.dart';



class notstartcours extends StatelessWidget {  @override
  Widget build(BuildContext context) {
   return  Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*.30,

      
          decoration: BoxDecoration(
            border: Border.all(color: maincolore)
          ),
          child:  const Bodynotcompletquize()
        ),
      );
  }
}

