import 'package:bloc/bloc.dart';
import 'package:lms/core/utils/Dio.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';
int code=0;
class LoginCubit extends Cubit<LoginState> {
  LoginCubit( this.api) : super(LoginInitial());
 Api api; 
  void Login(String email, String password) async {
    try {
      var response = await api.get(email, password);
      print(code);
      // التحقق من نجاح الاستجابة واستجابة الدالة api.get
      if (code==0) {
        // إطلاق حالة LoginSuccess في حالة النجاح
        emit(LoginSucess());
      } else {
        // إطلاق حالة LoginFailure في حالة عدم النجاح
        emit(LoginFailuer());
      }
    } on Exception catch (e) {
      // إطلاق حالة LoginFailure في حالة حدوث استثناء
      emit(LoginFailuer());
    }
  } 
}
