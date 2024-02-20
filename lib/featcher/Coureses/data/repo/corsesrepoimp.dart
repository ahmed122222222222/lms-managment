import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:lms/core/utils/Dio.dart';
import 'package:lms/core/utils/erroe.dart';
import 'package:lms/featcher/Coureses/data/model/courese_respone_model/courese_respone_model.dart';
import 'package:lms/featcher/Coureses/data/model/courese_respone_model/matierales_model.dart';
import 'package:lms/featcher/Coureses/data/model/quizemodel/quizemodel.dart';
import 'package:lms/featcher/Coureses/data/repo/coursesrepo.dart';
import 'package:lms/featcher/Loginscreen/data/model/loginrespone.dart';

class CourseRepoImplemtion extends Coursesrep {
  Dio dio = Dio();

  @override
  Future<Either<Failure, dynamic>> getcourse(endpoint, Loginrespone log) async {
    try {
      final Api api = Api(dio);

      List<dynamic> responseData =
          await api.getcourses("", endPoint: endpoint, log: log);
      List<CoureseResponeModel> courses = responseData
          .map((json) => CoureseResponeModel.fromJson(json))
          .toList();
      return right(courses);
    } catch (e) {
      if (e is DioError) {
        return left(ServFailure.formdioerr(e));
      } else {
        return left(ServFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, dynamic>> getcoursematerial(
      endpoint, Loginrespone log, String cid) async {
    try {
      final Api api = Api(dio);

      List<dynamic> responseData = await api.getcourses(
        cid,
        endPoint: endpoint,
        log: log,
      );
      print(responseData.length);
      List<MatieralesModel> courses =
          responseData.map((json) => MatieralesModel.fromJson(json)).toList();
      return right(courses);
    } catch (e) {
      if (e is DioError) {
        return left(ServFailure.formdioerr(e));
      } else {
        return left(ServFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, dynamic>> getcourseQuiz(
      endpoint, Loginrespone log, String cid) async {
    try {
      final Api api = Api(dio);

      List<dynamic> responseData = await api.getcourses(
        cid,
        endPoint: endpoint,
        log: log,
      );
     
      List<Quizemodel> courses =
          responseData.map((json) => Quizemodel.fromJson(json)).toList();
          print('Coursr${courses.length}');
      return right(courses);
    } catch (e) {
      if (e is DioError) {
        return left(ServFailure.formdioerr(e));
      } else {
        return left(ServFailure(e.toString()));
      }
    }
  }
  
  @override
  Future<Either<Failure, dynamic>> getcourseAssiment(endpoint, Loginrespone log, String cid)async {
   try {
      final Api api = Api(dio);

      List<dynamic> responseData = await api.getcourses(
        cid,
        endPoint: endpoint,
        log: log,
      );
     
      List<Quizemodel> courses =
          responseData.map((json) => Quizemodel.fromJson(json)).toList();
        
      return right(courses);
    } catch (e) {
      if (e is DioError) {
        return left(ServFailure.formdioerr(e));
      } else {
        return left(ServFailure(e.toString()));
      }
    }
  }
}


