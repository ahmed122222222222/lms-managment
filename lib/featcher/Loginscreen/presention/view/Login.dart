import 'package:flutter/material.dart';
import 'package:lms/featcher/Loginscreen/presention/view/widget/loginbody.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
      ),
      body: const LOgInBody(),
    );
  }
}
