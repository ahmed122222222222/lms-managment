import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/const.dart';
import 'package:lms/core/utils/image.dart';

import 'package:lms/featcher/Loginscreen/presention/view/widget/mainbuttom.dart';

class DetailseAsinment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          "Parallel Programming",
          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: DetailseassimentBody(),
    );
  }
}

class DetailseassimentBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .3,
            width: MediaQuery.of(context).size.width,
            decoration:
                BoxDecoration(border: Border.all(color: Color(0xfff3D5CFF))),
            child: Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ksb ",
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "should  answer wih blow kfkfkkgkblebfbhe;iduvbhviulbo;jnpojgfdfdrsdrcfkgbgilhunj,khiulkhliukjnbujgbuk",
                      style: GoogleFonts.poppins(
                          fontSize: 11, fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          "deadline",
                          style: GoogleFonts.poppins(
                              color: maincolore,
                              fontSize: 11,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Text(
                          "1/12/2002",
                          style: GoogleFonts.poppins(
                              color: Colors.red,
                              fontSize: 11,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0.0),
                        child: dawnloadbuttom())
                  ],
                ),
              ),
            ),
          ),
          CutamMainButtom(
              onPressed: () {
                showModalBottomSheet(
                    shape: Border(),
                    context: context,
                    builder: (builder) => Buttomsheet());
              },
              nameaction: "upload")
        ],
      ),
    );
  }
}

class Buttomsheet extends StatefulWidget {
  const Buttomsheet({Key? key}) : super(key: key);

  @override
  State<Buttomsheet> createState() => _ButtomsheetState();
}

class _ButtomsheetState extends State<Buttomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(0)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(
              "Upload Assignment ",
              style: GoogleFonts.poppins(
                  fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Image.asset("Asset/image/Attach Link.png"),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InputDecorator(
                decoration: InputDecoration(
                  hintText: 'File Path',
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xFF3D5CFF)),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('File Path'),
                    SizedBox(width: 10),
                    Container(
                      height: 39,
                      width: 69,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF3D5CFF),
                          border: Border.all(color: maincolore)),
                      child: TextButton(
                        onPressed: () async {},
                        child: const Text(
                          'Attach',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            CutamMainButtom(onPressed: () {}, nameaction: "submit")
          ],
        ),
      ),
    );
  }
}

class dawnloadbuttom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        minimumSize: Size(MediaQuery.of(context).size.width * .9, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: const Color(0xFF3B82F6),
      ),
      child: Text(
        "dawload",
        style: GoogleFonts.poppins(
            fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white),
      ),
    );
  }
}
