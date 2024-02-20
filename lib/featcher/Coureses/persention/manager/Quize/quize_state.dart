part of 'quize_cubit.dart';

@immutable
sealed class QuizeState {}

final class QuizeInitial extends QuizeState {}

final class QuizelLoad extends QuizeState {}

// ignore: must_be_immutable
final class QuizeSucess extends QuizeState {
  List<Quizemodel> course;
  QuizeSucess({required this.course});
}

// ignore: must_be_immutable
final class QuizeFailuer extends QuizeState {
  String errmas;
  QuizeFailuer({required this.errmas});
}
