import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Headerlec extends StatelessWidget {
  const Headerlec({super.key});
  @override
  Widget build(BuildContext context) {
    return ListTile(
            leading: Icon(Icons.arrow_back, size: 20, color: Colors.black),
            trailing: Image.asset("Asset/image/Online Learning 1.png"),
            title: Text(
              "Parallel Programming",
              style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Dr: Amr Masoud",
              style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w500),
            ),
          );
  }
}