import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LecListView extends StatelessWidget {   
  @override
  Widget build(BuildContext context) {
return GridView.builder(
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
      mainAxisSpacing: 3,
      crossAxisSpacing: 0,
      childAspectRatio: 2.6
      ), itemBuilder: (context,index)=>Padding(
        padding: const EdgeInsets.all(8.0),
        child:Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.amber
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:10.0),
            child: Row(
              children: [
                Icon(Icons.folder),
                SizedBox(width: 22,),
                Text("lec1",style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w800),)
              ],
            ),
          ),
        ),
      ));
  }
}
