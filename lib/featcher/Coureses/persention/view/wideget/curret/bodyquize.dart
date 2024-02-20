import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/const.dart';
import 'package:lms/featcher/Coureses/persention/manager/Quize/quize_cubit.dart';

import 'completequiz.dart';
import '../notcompletquize.dart';

class Bodyquize extends StatelessWidget {
  const Bodyquize({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 0,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child: Text(
            "Quizzes",
            style: GoogleFonts.poppins(
                fontSize: 24, color: maincolore, fontWeight: FontWeight.bold),
          )),
        ),
        completequizz(),
        Expanded(child: BlocBuilder<QuizeCubit, QuizeState>(
          builder: (context, state) {
            if (state is QuizeSucess) {
              print(state.course[0].startDate);
              return ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) => notstartcours(
                        quzititel: state.course[index].title ?? "00", start:state.course[index].startDate!.substring(12,16) , end:state.course[index].endDate!.substring(12,16)  ,
                      ));
            } else {
              return const CircularProgressIndicator();
            }
          },
        )),
      ],
    );
  }
}
