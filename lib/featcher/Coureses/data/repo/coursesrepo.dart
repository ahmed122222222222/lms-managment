import 'package:dartz/dartz.dart';
import 'package:lms/core/utils/erroe.dart';
import 'package:lms/featcher/Loginscreen/data/model/loginrespone.dart';

abstract class Coursesrep {
  Future<Either<Failure, dynamic>> getcourse(endpoint, Loginrespone log);
  Future<Either<Failure, dynamic>> getcoursematerial(
      endpoint, Loginrespone log, String cid);
  Future<Either<Failure, dynamic>> getcourseQuiz(
      endpoint, Loginrespone log, String cid);
    Future<Either<Failure, dynamic>> getcourseAssiment(
      endpoint, Loginrespone log, String cid);    
}
