import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:lms/core/utils/Dio.dart';
import 'package:lms/core/utils/erroe.dart';
import 'package:lms/featcher/Loginscreen/data/model/Loginmodel.dart';
import 'package:lms/featcher/Loginscreen/data/repo.dart/Loginrepo.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

int code = 0;

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.api) : super(LoginInitial());
  Loginrepo api;
  void login(Loginmodel loginModel, String endpoint) async {
    emit(LoginLoad());
    final result = await api.login(loginModel, endpoint);
    result.fold(
      (failure) => emit(LoginFailuer( errmas: failure.errmas)),
      (_) => emit(LoginSucess()),
    );
  }
}
