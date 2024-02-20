import 'package:flutter/material.dart';
import 'package:lms/featcher/Coureses/persention/view/wideget/curret/subject.dart';
import 'package:lms/featcher/Loginscreen/data/model/loginrespone.dart';

class Courese extends StatefulWidget {
  const Courese({Key? key, required this.loginrespone}) : super(key: key);
  final Loginrespone loginrespone;
  @override
  State<Courese> createState() => _CoureseState();
}

class _CoureseState extends State<Courese> {
  @override
  Widget build(BuildContext context) {
    return Enroil(
      loginrespone: widget.loginrespone,
    );
  }
}
