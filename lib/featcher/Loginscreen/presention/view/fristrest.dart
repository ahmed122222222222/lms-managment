import 'package:flutter/material.dart';
import 'package:lms/core/utils/image.dart';

import 'package:lms/featcher/Loginscreen/presention/view/widget/Bodymassagerest.dart';

class Massagerest extends StatelessWidget {
  const Massagerest({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
      ),
      body: const BodyMassageRest(),
    );
  }
}
