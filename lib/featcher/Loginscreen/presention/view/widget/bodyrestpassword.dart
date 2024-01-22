import 'package:flutter/material.dart';
import 'package:lms/core/styel.dart';
import 'package:lms/featcher/Loginscreen/presention/view/creatpassword.dart';
import 'package:lms/featcher/Loginscreen/presention/view/widget/Opt.dart';
import 'package:lms/featcher/Loginscreen/presention/view/widget/mainbuttom.dart';

class BodyRestPass extends StatelessWidget {
  const BodyRestPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 22, right: 22, top: MediaQuery.of(context).size.height * .12),
      child: ListView(
        children: [
          const Text(
            "enter code",
            style: Styels.font36,
          ),
          Text(
            "enter otp code from 4 ",
            style: Styels.fontw20,
          ),
          Text(
            "number",
            style: Styels.fontw20,
          ),
          const SizedBox(
            height: 90,
          ),
          const OptVildation(),
          const SizedBox(
            height: 38,
          ),
          CutamMainButtom(
            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (builder)=>CreatPassword()));},
            nameaction: 'next',
          ),
        ],
      ),
    );
  }
}
