import 'package:bloc/bloc.dart';
import 'package:lms/featcher/Coureses/data/model/courese_respone_model/courese_respone_model.dart';
import 'package:lms/featcher/Coureses/data/repo/coursesrepo.dart';
import 'package:lms/featcher/Loginscreen/data/model/Loginmodel.dart';
import 'package:lms/featcher/Loginscreen/data/model/loginrespone.dart';
import 'package:meta/meta.dart';

part 'get_courses_state.dart';

class GetCoursesCubit extends Cubit<GetCoursesState> {
  GetCoursesCubit({required this.api}) : super(GetCoursesInitial());
  Coursesrep api;
  void getcourses(Loginrespone log, String endpoint) async {
    emit(GetCoursesLoad());
    final result = await api.getcourse(endpoint, log);
    print(0);
    result.fold(
      (failure) => emit(GetCoursesFailuer(errmas: failure.errmas)),
      (r) => emit(GetCoursesSucess(course: r)),
    );
  }
}
