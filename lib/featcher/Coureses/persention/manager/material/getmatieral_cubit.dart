import 'package:bloc/bloc.dart';
import 'package:lms/featcher/Coureses/data/model/courese_respone_model/matierales_model.dart';
import 'package:lms/featcher/Coureses/data/model/quizemodel/quizemodel.dart';
import 'package:lms/featcher/Coureses/data/repo/coursesrepo.dart';
import 'package:lms/featcher/Loginscreen/data/model/loginrespone.dart';
import 'package:meta/meta.dart';

part 'getmatieral_state.dart';

class GetmatieralCubit extends Cubit<GetmatieralState> {
  GetmatieralCubit({required this.api}) : super(GetmatieralInitial());
  Coursesrep api;
  void getcourses(Loginrespone log, String endpoint, String cid) async {
    emit(GetmatieralLoad());
    final result = await api.getcoursematerial(endpoint, log, cid);
    print(result);
    result.fold(
      (failure) => emit(GetmatieralFailuer(errmas: failure.errmas)),
      (r) => emit(GetmatieralSucess(course: r)),
    );
  }
}
