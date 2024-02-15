import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemLec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Text(
            "1",
            style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListTile(
              leading: Image.asset("Asset/image/pdf.png"),
              title: Text(
                "Lecture 1(Process&Threads)",
                style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.normal),
              ),
              subtitle: Text(
                "Dr Amr Masoud . Nov 24",
                style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w500),
              ),
              trailing: SizedBox(
                width: 100,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Semester 1", style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w500)),
                    Spacer(),
                    Image.asset(
                      "Asset/image/tdesign_more.png",
                      height: 18,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}