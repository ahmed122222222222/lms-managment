import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:lms/core/utils/image.dart';
import 'package:lms/featcher/Coureses/persention/view/wideget/curret/Gradebody.dart';




class gerad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
      body:Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.center,
            colors: [Colors.blue, Colors.white],)
        ),
        child: const Boddygrad(),
        ) ,
    );
  }
}
