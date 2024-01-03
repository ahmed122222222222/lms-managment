// ignore: file_names
import 'package:flutter/material.dart';
import 'package:lms/featcher/tips/presention/view/tips.dart';

class BodySplashScreen extends StatefulWidget {
  const BodySplashScreen({super.key});
 
  @override
  State<BodySplashScreen> createState() => _bodySplashScreenState();
}

// ignore: camel_case_types
class _bodySplashScreenState extends State<BodySplashScreen>   with SingleTickerProviderStateMixin  {
  late AnimationController animationController;
  late Animation<Offset> sildinganmation;
  @override
  void initState() {
    
    super.initState();
      slidinganmation();
      navhome();
  }
  @override
  Widget build(BuildContext context) {
    return Column( mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        
        SizedBox(
          height: 141,
          width: 107,
          child: Image.asset("Asset/image/Group 12558.png")),
        AnimatedBuilder(
          animation: sildinganmation,
          builder: (BuildContext context, Widget? child) {
            return SlideTransition(
              position: sildinganmation,
              child: Image.asset("Asset/image/FCAl.png")
            );
          },
        )
      ],); 
  }
  //function
//silding anmtion
  void slidinganmation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    sildinganmation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

//nav
  Future<void> navhome() {
    return Future.delayed(const Duration(seconds: 2), () {
   
     Navigator.push(context, MaterialPageRoute(builder: (builder)=> const Tips1()));
    });
  }
}