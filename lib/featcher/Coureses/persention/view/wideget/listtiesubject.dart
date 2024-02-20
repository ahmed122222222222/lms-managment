import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/core/utils/Dio.dart';
import 'package:lms/featcher/Coureses/persention/view/material.dart';
import 'package:lms/featcher/Loginscreen/data/model/loginrespone.dart';

class ListTitelSubject extends StatefulWidget {
  const ListTitelSubject({
    super.key,
    required this.name,
    required this.instoractore,
    required this.image,
    required this.log,
    required this.cid,
  });
  final String name, instoractore, image, cid;
  final Loginrespone log;

  @override
  State<ListTitelSubject> createState() => _ListTitelSubjectState();
}

class _ListTitelSubjectState extends State<ListTitelSubject> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset("Asset/image/subject.png"),
      title: Text(widget.name,
          style:
              GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w500)),
      subtitle: Text(
        widget.instoractore,
        style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.normal),
      ),
      trailing: IconButton(
        icon: Image.asset("Asset/image/carbon_next-outline.png"),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ChooseAaction(
                    log: widget.log,
                    cid: widget.cid,
                  )));
        },
      ),
    );
  }
}
