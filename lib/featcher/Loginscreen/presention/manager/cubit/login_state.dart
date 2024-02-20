part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoad extends LoginState {}

// ignore: must_be_immutable
final class LoginSucess extends LoginState {
  Loginrespone loginrespone;
  LoginSucess({required this.loginrespone});
}

// ignore: must_be_immutable
final class LoginFailuer extends LoginState {
  String errmas;
  LoginFailuer({required this.errmas});
}
