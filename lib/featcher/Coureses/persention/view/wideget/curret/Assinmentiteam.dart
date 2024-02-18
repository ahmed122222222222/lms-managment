import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/featcher/Coureses/persention/view/wideget/detalisasinment.dart';

class AssinmentIteam extends StatelessWidget {
  const AssinmentIteam({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 88,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xff3B82F6)),
          borderRadius: BorderRadius.circular(18)),
      child: ListTile(
        title: Text(
          "KBS",
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subtitle: Row(
          children: [
            Text(
              "Deadline",
              style: GoogleFonts.poppins(
                  fontSize: 12, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "1 More Day",
              style: GoogleFonts.poppins(
                  fontSize: 12, fontWeight: FontWeight.w500, color: Colors.red),
            ),
          ],
        ),
        leading: Image.asset("Asset/image/Desk_alt.png"),
        trailing: TextButton(
          style: TextButton.styleFrom(
            minimumSize: Size(78, 55),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: const Color(0xFF3B82F6),
          ),
          child: Text(
            "more",
            style: GoogleFonts.poppins(
                fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (builder) => DetailseAsinment()));
          },
        ),
      ),
    );
  }
}
