import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LisTtitelHome extends StatelessWidget {
  const LisTtitelHome({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset("Asset/image/imageupda.png"),
      title: Text(
        "Bert Pullman",
        style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        "Online",
        style: GoogleFonts.poppins(
            fontSize: 12,
            color: Colors.black.withOpacity(.70),
            fontWeight: FontWeight.bold),
      ),
      trailing: Text(
        "04:32 pm",
        style: GoogleFonts.poppins(
            fontSize: 12,
            color: Colors.black.withOpacity(.70),
            fontWeight: FontWeight.w300),
      ),
    );
  }
}
