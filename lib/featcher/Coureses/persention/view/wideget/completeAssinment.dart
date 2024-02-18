import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class completingAsinment extends StatelessWidget {
  const completingAsinment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 320,
        height: 88,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: Color(0xff3B82F6))),
        child: ListTile(
            leading: Image.asset("Asset/image/Desk_alt.png"),
            title: Text(
              "Dr : Engy Abd Elmaboud",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              "KBS",
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            trailing: Image.asset("Asset/image/Ok.png")));
  }
}
