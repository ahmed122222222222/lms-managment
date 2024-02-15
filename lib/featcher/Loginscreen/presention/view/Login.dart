import 'package:flutter/material.dart';
import 'package:lms/featcher/Loginscreen/presention/view/widget/loginbody.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Container(
         decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.center,
            colors: [Colors.blue, Colors.white],
          ),),
        child: const LOgInBody()),
    );
  }
}
