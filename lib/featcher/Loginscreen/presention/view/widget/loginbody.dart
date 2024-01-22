import 'package:flutter/material.dart';
import 'package:lms/core/styel.dart';
import 'package:lms/core/utils/image.dart';
import 'package:lms/featcher/HomeScreen/presention/view/Home.dart';
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
              top: MediaQuery.of(context).size.height * .01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 130, child: Image.asset(Images.Loginimage)),
              Image.asset(Images.Logintext),
              SizedBox(
                height: 35,
              ),
              const Text('email', style: Styels.font20),
              const CustomTextFormFiled(),
              const SizedBox(
                height: 35,
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => HomeScreen()));
                  }
                },
                nameaction: 'Login',
              ),
              const SizedBox(
                height: 41,
              ),
              const Scandbuttom(
                titel: 'rest password',
              )
            ],
          ),
        ),
      ),
    );
  }
}
