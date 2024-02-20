part of 'get_courses_cubit.dart';

@immutable
sealed class GetCoursesState {}

final class GetCoursesInitial extends GetCoursesState {}

final class GetCoursesLoad extends GetCoursesState {}

// ignore: must_be_immutable
final class GetCoursesSucess extends GetCoursesState {
  List<CoureseResponeModel> course;
  GetCoursesSucess({required this.course});
}

// ignore: must_be_immutable
final class GetCoursesFailuer extends GetCoursesState {
  String errmas;
  GetCoursesFailuer({required this.errmas});
}
