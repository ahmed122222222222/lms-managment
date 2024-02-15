// ignore: file_names
import 'package:flutter/material.dart';
import 'package:lms/featcher/Notifcation.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
           Scaffold.of(context).openDrawer();
          },
          icon: Image.asset("Asset/image/icon.png"),
        ),
        IconButton(
          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (builder)=>Notifcation()));},
          icon: Image.asset("Asset/image/notification.png"),
        )
      ],
    );
  }
}
