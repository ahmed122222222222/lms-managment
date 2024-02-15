import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/featcher/HomeScreen/presention/view/widget/Customappbar.dart';
import 'package:lms/featcher/HomeScreen/presention/view/widget/privousui/lastupdate.dart';

class Notifcation extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration:  const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.center,
              colors: [Colors.blue, Colors.white],)
          ),
          child: Padding(
            padding: const EdgeInsets.only(left:0),
            child: Column(
          
              children: [
                CustomAppbar(),
                Padding(
                padding: const EdgeInsets.only(top:20,left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("HI Ahmed",style: GoogleFonts.poppins(fontSize: 24,fontWeight: FontWeight.bold),)
                         , Padding(
                           padding: const EdgeInsets.only(left:10.0),
                           child: Text("Timeline",style: GoogleFonts.poppins(fontSize: 24,fontWeight: FontWeight.w700),),
                         )
                         ,Padding(
                           padding: const EdgeInsets.only(left:10.0),
                           child: Text("Here",style: GoogleFonts.poppins(fontSize: 24,fontWeight: FontWeight.w700),),
                         )
                           
                        ],
                      ),
                      Image.asset("Asset/image/Avatar profile photo.png")
                    ],
                    
                  ),
                ),
                SizedBox(height: 20,),
           Expanded(child: Lastupdate())    
              ],
            ),
          ),
        ),
      ),
    );

  }
}
