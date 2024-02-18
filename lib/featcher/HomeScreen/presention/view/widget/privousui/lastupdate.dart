import 'package:flutter/material.dart';
import 'package:lms/featcher/HomeScreen/presention/view/widget/privousui/ListvewIteam.dart';

class Lastupdate extends StatelessWidget {
  const Lastupdate({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) => const ListViewIteam());
  }
}
