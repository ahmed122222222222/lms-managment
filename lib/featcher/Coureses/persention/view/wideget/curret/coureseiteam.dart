import 'package:flutter/material.dart';

import 'package:lms/featcher/Coureses/persention/view/wideget/listtiesubject.dart';

class CoureseIteam extends StatefulWidget {
  const CoureseIteam({super.key});

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
            border: Border.all(color: (const Color(0xff009688)))), child: const Padding(
        padding: EdgeInsets.symmetric(vertical:15.0),
        child: ListTitelSubject()
      ),
      
    );
  }
}

