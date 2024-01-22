import 'package:flutter/material.dart';

import 'package:lms/featcher/Loginscreen/presention/view/widget/Creatpasswordbody.dart';

class CreatPassword extends StatelessWidget {
  const CreatPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: const CreatPasswordBody(),
    );
  }
}
