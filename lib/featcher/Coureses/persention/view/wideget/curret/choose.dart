import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/const.dart';

class choose extends StatefulWidget {
  const choose({super.key});

  @override
  State<choose> createState() => _chooseState();
}

class _chooseState extends State<choose> {
  bool option1Selected = false;
  bool option2Selected = false;
  bool option3Selected = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CheckboxListTile(
          activeColor: maincolore,
          title: Text(
            ' Velit vel id volutpat dictum.',
            style:
                GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w800),
          ),
          value: option1Selected,
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (value) {
            setState(() {
              option1Selected = value!;
              option2Selected = false;
              option3Selected = false;
            });
          },
        ),
        CheckboxListTile(
          activeColor: maincolore,
          title: Text(
            ' Velit vel id volutpat dictum.',
            style:
                GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w800),
          ),
          value: option2Selected,
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (value) {
            setState(() {
              option2Selected = value!;
              option1Selected = false;
              option3Selected = false;
            });
          },
        ),
        CheckboxListTile(
          activeColor: maincolore,
          title: Text(
            ' Velit vel id volutpat dictum.',
            style:
                GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w800),
          ),
          value: option3Selected,
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (value) {
            setState(() {
              option3Selected = value!;
              option1Selected = false;
              option2Selected = false;
            });
          },
        ),
      ],
    );
  }
}
