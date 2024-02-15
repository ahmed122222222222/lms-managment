// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/featcher/HomeScreen/presention/view/widget/privousui/CustomListtitel.dart';

class ListViewIteam extends StatelessWidget {
  const ListViewIteam({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left :20.0,right: 20,bottom: 12),
      child: Container( 
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*.32,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(.27)),
          borderRadius: BorderRadius.circular(5),
          ),
          child:  Column(
            children: [
              const LisTtitelHome()
               ,
              Text("Congratulations on completing the first lesson",style: GoogleFonts.poppins(color: Colors.black.withOpacity(.70),fontSize: 12,fontWeight: FontWeight.w300),)
              ,Text("keep up the good work!",style: GoogleFonts.poppins(color: Colors.black.withOpacity(.70),fontSize: 12,fontWeight: FontWeight.w300),) ,
           const SizedBox(height: 12,)
           , Image.asset("Asset/image/pic.png",height: MediaQuery.of(context).size.height*.15,width: MediaQuery.of(context).size.width*.7 ,)
            ],
          ),
        ),
    );
    
  }
}

