import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabelGraid extends StatelessWidget {
  const TabelGraid({super.key});
  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(style: BorderStyle.solid, width: 2),
      defaultColumnWidth: const IntrinsicColumnWidth(),
      children: [
        TableRow(
          children: [
            TableCell(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                width:  MediaQuery.of(context).size.width*.7,
                height: 60, // تحديد عرض العمود الأول
                child: Text(
                  '#',
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Mark',
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                height: 50,
                width:  MediaQuery.of(context).size.width*.7,// تحديد عرض العمود الأول
                child: Text(
                  'Quize 1',
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '7/10',
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: const Color(0xff3D5CFF)),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                height: 50,
                width: MediaQuery.of(context).size.width*.7, // تحديد عرض العمود الأول
                child: Text(
                  'Quize 1',
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '7/10',
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: const Color(0xff3D5CFF)),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                height: 50,
                width:  MediaQuery.of(context).size.width*.7, // تحديد عرض العمود الأول
                child: Text(
                  'Quize 1',
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '7/10',
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: const Color(0xff3D5CFF)),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                width: MediaQuery.of(context).size.width*.7,
                height: 50, // تحديد عرض العمود الأول
                child: Text(
                  'Quize 1',
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '7/10',
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: const Color(0xff3D5CFF)),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
