part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}
final class LoginLoad extends LoginState {}
final class LoginSucess extends LoginState {}
final class LoginFailuer extends LoginState {}
