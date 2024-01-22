import 'package:flutter/material.dart';
import 'package:lms/featcher/HomeScreen/presention/view/widget/buttomacess.dart';

class ItemOfHome extends StatelessWidget {
  final String str1;

  const ItemOfHome({super.key, required this.str1});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21.0),
      child: Container(
        width: 312,
        height: 99,
        clipBehavior: Clip.antiAlias,
        decoration: const ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFF3B82F6)),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Buttomacess(
              str1: str1,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset("Asset/image/d1.png"),
            )
          ],
        ),
      ),
    );
  }
}
