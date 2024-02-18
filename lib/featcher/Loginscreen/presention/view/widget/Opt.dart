import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:lms/const.dart';

class OptVildation extends StatelessWidget {
  const OptVildation({super.key});
  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      fillColor: const Color(0x0fe2e8f0),
      textStyle: const TextStyle(color: maincolore),
      filled: true,
      fieldWidth: 58,
      margin: const EdgeInsets.only(right: 20.0),
      numberOfFields: 4,
      borderColor: const Color.fromARGB(255, 63, 3, 75),

      showFieldAsBox: true,
      //runs when a code is typed in
      onCodeChanged: (String code) {
        //handle validation or checks here
      },
      //runs when every textfield is filled
      onSubmit: (String verificationCode) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text("Verification Code"),
                content: Text('Code entered is $verificationCode'),
              );
            });
      }, // end onSubmit
    );
  }
}
