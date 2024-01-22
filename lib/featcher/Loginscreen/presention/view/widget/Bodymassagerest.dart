import 'package:flutter/material.dart';
import 'package:lms/core/styel.dart';
import 'package:lms/featcher/Loginscreen/presention/view/forgetpassword.dart';
import 'package:lms/featcher/Loginscreen/presention/view/widget/mainbuttom.dart';

class BodyMassageRest extends StatelessWidget {
  const BodyMassageRest({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 22, right: 22, top: MediaQuery.of(context).size.height * .12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("Asset/image/massage.png"),
          const SizedBox(
            height: 16,
          ),
          Text(
            "rest password",
            style: Styels.fontw24.copyWith(color: Colors.black),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "We will send a message to",
            style: Styels.fontw20,
          ),
          Text(
            "you on the phone number",
            style: Styels.fontw20,
          ),
          const SizedBox(
            height: 95,
          ),
          CutamMainButtom(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => const Forgetpassword()));
              },
              nameaction: 'next')
        ],
      ),
    );
  }
}
