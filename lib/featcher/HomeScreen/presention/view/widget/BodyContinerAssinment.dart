import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyContinerAssinment extends StatelessWidget {
  const BodyContinerAssinment({super.key});

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
              "Asset/image/Time Machine.png",
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              "peinding",
              style: GoogleFonts.poppins(
                  fontSize: 12, fontWeight: FontWeight.w300, color: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}
