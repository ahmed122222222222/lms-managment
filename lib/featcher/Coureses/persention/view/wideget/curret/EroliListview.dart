import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lms/featcher/Coureses/data/model/courese_respone_model/courese_respone_model.dart';

import 'package:lms/featcher/Coureses/persention/manager/getcouresecubit/get_courses_cubit.dart';
import 'package:lms/featcher/Coureses/persention/view/wideget/curret/coureseiteam.dart';
import 'package:lms/featcher/Loginscreen/data/model/loginrespone.dart';

class EnroliListview extends StatefulWidget {
  const EnroliListview({super.key, required this.loginrespone});
  final Loginrespone loginrespone;

  @override
  State<EnroliListview> createState() => _EnroliListviewState();
}

class _EnroliListviewState extends State<EnroliListview> {
  List<CoureseResponeModel> con = [];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<GetCoursesCubit, GetCoursesState>(
        builder: (context, state) {
          if (state is GetCoursesSucess) {
            return ListView.builder(
                itemCount: state.course.length,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: CoureseIteam(
                        name: state.course[index].name!,
                        instoractore: state.course[index].instructorFullName!,
                        image: state.course[index].imagePath!,
                        cid: state.course[index].cycleId!,
                        log: widget.loginrespone,
                      ),
                    ));
          } else if (state is GetCoursesLoad) {
            return Center(child: CircularProgressIndicator());
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }
}
