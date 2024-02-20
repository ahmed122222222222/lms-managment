part of 'getmatieral_cubit.dart';

@immutable
sealed class GetmatieralState {}

final class GetmatieralInitial extends GetmatieralState {}

final class GetmatieralLoad extends GetmatieralState {}

// ignore: must_be_immutable
final class GetmatieralSucess extends GetmatieralState {
  List<MatieralesModel> course;
  GetmatieralSucess({required this.course});
}

// ignore: must_be_immutable
final class GetmatieralFailuer extends GetmatieralState {
  String errmas;
  GetmatieralFailuer({required this.errmas});
}
