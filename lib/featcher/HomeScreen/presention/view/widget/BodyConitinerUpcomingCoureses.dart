import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyConitinerUpcomingCoureses extends StatelessWidget {
  const BodyConitinerUpcomingCoureses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: ListTile(
        leading: Image.asset("Asset/image/book.png"),
        title: Text(
          "Parallel Programming",
          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w700),
        ),
        subtitle: Text(
          "Dr : Amr Masoud",
          style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w300),
        ),
        trailing: Column(
          children: [
            Image.asset(
              "Asset/image/quize.png",
              height: 25,
            ),
            Text(
              "9.5",
              style: GoogleFonts.poppins(
                  fontSize: 10, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
