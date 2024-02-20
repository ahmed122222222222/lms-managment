import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lms/featcher/Coureses/persention/manager/Quize/quize_cubit.dart';

import 'package:lms/featcher/Coureses/persention/manager/material/getmatieral_cubit.dart';
import 'package:lms/featcher/Coureses/persention/view/Assinment.dart';
import 'package:lms/featcher/Coureses/persention/view/garid.dart';
import 'package:lms/featcher/Coureses/persention/view/lec.dart';
import 'package:lms/featcher/Coureses/persention/view/quize.dart';
import 'package:lms/featcher/Coureses/persention/view/wideget/curret/gridviewAction.dart';
import 'package:lms/featcher/Loginscreen/data/model/loginrespone.dart';

class BodyChoseAction extends StatefulWidget {
  const BodyChoseAction({super.key, required this.log, required this.cid});
  final Loginrespone log;
  final String cid;
  @override
  State<BodyChoseAction> createState() => _BodyChoseActionState();
}

class _BodyChoseActionState extends State<BodyChoseAction> {
  List image = [
    "Asset/image/ma.png",
    "Asset/image/assinmen.png",
    "Asset/image/quiz.png",
    "Asset/image/grade.png"
  ];
  List color = [
    const Color(0xffD1FAE5),
    const Color(0xff3D5CFF).withOpacity(.45),
    const Color(0xffFDE2F1),
    const Color(0xffD9E9FE)
  ];
  List titel = ["matieral", "Assinment", "quiz", "grad"];
  List nav = [Lec(), const Assinment(), Quiz(), gerad()];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          itemCount: 4,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 3,
              crossAxisSpacing: 0,
              childAspectRatio: .76),
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: BodyGradView(
                  color: color[index],
                  imag: image[index],
                  titel: titel[index],
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => nav[index]));
                    BlocProvider.of<GetmatieralCubit>(context).getcourses(
                        widget.log,
                        "Students/CurrentCourceMaterial?CycleId=",
                        widget.cid);
                    BlocProvider.of<QuizeCubit>(context).getcourses(widget.log,
                        "Students/CurrentCourceQuizzes?cycleId=", widget.cid);
                  },
                ),
              )),
    );
  }
}
