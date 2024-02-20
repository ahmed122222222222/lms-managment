import 'package:bloc/bloc.dart';
import 'package:lms/featcher/Coureses/data/model/quizemodel/quizemodel.dart';
import 'package:lms/featcher/Coureses/data/repo/coursesrepo.dart';
import 'package:lms/featcher/Loginscreen/data/model/loginrespone.dart';
import 'package:meta/meta.dart';

part 'quize_state.dart';

class QuizeCubit extends Cubit<QuizeState> {
  QuizeCubit({required this.api}) : super(QuizeInitial());
  Coursesrep api;
  void getcourses(Loginrespone log, String endpoint, String cid) async {
    emit(QuizelLoad());
    final result = await api.getcourseQuiz(endpoint, log, cid);
    print(result);
    result.fold(
      (failure) => emit(QuizeFailuer(errmas: failure.errmas)),
      (r) => emit(QuizeSucess(course: r)),
    );
  }
}
