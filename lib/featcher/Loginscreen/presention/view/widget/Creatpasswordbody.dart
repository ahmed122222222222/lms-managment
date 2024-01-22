// ignore: file_names
import 'package:flutter/material.dart';
import 'package:lms/core/styel.dart';
import 'package:lms/featcher/Loginscreen/presention/view/widget/creatpasswordfiled.dart';
import 'package:lms/featcher/Loginscreen/presention/view/widget/mainbuttom.dart';

class CreatPasswordBody extends StatefulWidget {
  const CreatPasswordBody({super.key});

  @override
  State<CreatPasswordBody> createState() => _CreatPasswordBodyState();
}

class _CreatPasswordBodyState extends State<CreatPasswordBody> {
  GlobalKey<FormState> globalKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 22, right: 22, top: MediaQuery.of(context).size.height * .12),
      child: Form(
        key: globalKey,
        child: ListView(
          children: [
            const Text(
              "creat password",
              style: Styels.font36,
            ),
            Text(
              "should contain at least one",
              style: Styels.fontw20,
            ),
            Text(
              "charcter",
              style: Styels.fontw20,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "write pass",
              style: Styels.font20,
            ),
            const SizedBox(
              height: 4,
            ),
            const CustomPasswordTextFormFiled(),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "comfirm pass",
              style: Styels.font20,
            ),
            const SizedBox(
              height: 4,
            ),
            const CustomPasswordTextFormFiled(),
            const SizedBox(
              height: 50,
            ),
            CutamMainButtom(
              onPressed: () {
                if (globalKey.currentState!.validate()) {
                  globalKey.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
              nameaction: 'next',
            )
          ],
        ),
      ),
    );
  }
}
