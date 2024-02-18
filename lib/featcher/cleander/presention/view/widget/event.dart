import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class event extends StatelessWidget {
  const event({super.key, required this.color1, required this.color2});

  final Color color1, color2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
      child: Container(
        height: MediaQuery.of(context).size.height * .14,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: color1,
            border: Border(left: BorderSide(color: color2, width: 4))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Parallel Programming - Dr Amr Masoud",
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Color(0xff656565),
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 3,
              ),
              Text("Second Quiz",
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w600)),
              const SizedBox(
                height: 3,
              ),
              Text("9:00 AM - 10:00 AM",
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Color(0xff656565),
                      fontWeight: FontWeight.w600)),
            ],
          ),
        ),
      ),
    );
  }
}
