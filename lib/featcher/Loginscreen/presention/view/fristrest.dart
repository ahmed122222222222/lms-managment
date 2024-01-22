import 'package:flutter/material.dart';

import 'package:lms/featcher/Loginscreen/presention/view/widget/Bodymassagerest.dart';


class Massagerest extends StatelessWidget {
  const Massagerest({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset("Asset/image/FCAl.png"),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 20),
            child: Image.asset("Asset/image/icons.png"),
          )
        ],
        elevation: 2,
      ),
      body: const BodyMassageRest(),
    );
  }
}
