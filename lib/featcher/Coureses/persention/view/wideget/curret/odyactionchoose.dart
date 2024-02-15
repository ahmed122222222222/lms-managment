import 'package:flutter/material.dart';
import 'package:lms/featcher/Coureses/persention/view/Assinment.dart';
import 'package:lms/featcher/Coureses/persention/view/garid.dart';
import 'package:lms/featcher/Coureses/persention/view/lec.dart';
import 'package:lms/featcher/Coureses/persention/view/quize.dart';
import 'package:lms/featcher/Coureses/persention/view/wideget/curret/gridviewAction.dart';

class BodyChoseAction extends StatefulWidget {
  const BodyChoseAction({super.key});

  @override
  State<BodyChoseAction> createState() => _BodyChoseActionState();
}

class _BodyChoseActionState extends State<BodyChoseAction> {
 List image=["Asset/image/ma.png","Asset/image/assinmen.png","Asset/image/quiz.png","Asset/image/grade.png"];
 List color=[Color(0xffD1FAE5),Color(0xff3D5CFF).withOpacity(.45),Color(0xffFDE2F1),Color(0xffD9E9FE)];
 List titel=["matieral","Assinment","quiz","grad"];
 List nav=[Lec(),const Assinment(),Quiz(),gerad()]; 
 

  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.all(8.0),
     child: GridView.builder(
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
      mainAxisSpacing: 3,
      crossAxisSpacing: 0,
      childAspectRatio: .76
      ), itemBuilder: (context,index)=>Padding(
        padding: const EdgeInsets.all(8.0),
        child: BodyGradView(color:color[index] ,imag:image[index] , titel: titel[index], onTap: () { Navigator.push(context, MaterialPageRoute(builder: (builder)=>nav[index])); },),
      )),
   );
  }
}