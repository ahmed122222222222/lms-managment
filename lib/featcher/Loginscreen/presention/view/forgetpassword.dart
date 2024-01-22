import 'package:flutter/material.dart';

import 'package:lms/featcher/Loginscreen/presention/view/widget/bodyrestpassword.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
      ),
      body: const BodyRestPass(),
    );
  }
}
