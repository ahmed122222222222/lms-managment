import 'package:flutter/material.dart';

import 'package:lms/featcher/Coureses/persention/view/wideget/listtiesubject.dart';
import 'package:lms/featcher/Loginscreen/data/model/loginrespone.dart';

class CoureseIteam extends StatefulWidget {
  const CoureseIteam({
    super.key,
    required this.name,
    required this.instoractore,
    required this.image,
    required this.cid,
    required this.log,
  });
  final String name, instoractore, image, cid;
  final Loginrespone log;
  @override
  State<CoureseIteam> createState() => _CoureseIteamState();
}

class _CoureseIteamState extends State<CoureseIteam> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .11,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(25), topRight: Radius.circular(25)),
          border: Border.all(color: (const Color(0xff009688)))),
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: ListTitelSubject(
            name: widget.name,
            instoractore: widget.instoractore,
            image: widget.image,
            log: widget.log,
            cid: widget.cid,
          )),
    );
  }
}
