import 'package:flutter/material.dart';
import 'package:lms/core/styel.dart';
import 'package:lms/featcher/Loginscreen/presention/view/widget/customtextfiled.dart';
import 'package:lms/featcher/Loginscreen/presention/view/widget/mainbuttom.dart';
import 'package:lms/featcher/Loginscreen/presention/view/widget/sacandbuttom.dart';

class LOgInBody extends StatefulWidget {
  const LOgInBody({super.key});

  @override
  State<LOgInBody> createState() => _LOgInBodyState();
}

class _LOgInBodyState extends State<LOgInBody> {
  final GlobalKey<FormState> globalKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: 22,
              right: 22,
              top: MediaQuery.of(context).size.height * .12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('log in', style: Styels.font40),
              SizedBox(
                width: 300,
                child: Row(
                  children: [
                    const Text('Log in with your university ',
                        style: Styels.font16),
                    Image.asset("Asset/image/imog.png"),
                  ],
                ),
              ),
              const Text('email', style: Styels.font16),
              const SizedBox(
                height: 61,
              ),
              const Text('email', style: Styels.font20),
              const CustomTextFormFiled(),
              const SizedBox(
                height: 30,
              ),
              const Text('password', style: Styels.font20),
              const CustomTextFormFiled(),
              const SizedBox(
                height: 30,
              ),
              CutamMainButtom(
                onPressed: () {
                  if (globalKey.currentState!.validate()) {
                    setState(() {});
                  }
                },
              ),
              const SizedBox(
                height: 41,
              ),
              const Scandbuttom()
            ],
          ),
        ),
      ),
    );
  }
}
