import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:lms/featcher/Loginscreen/data/model/Loginmodel.dart';
import 'package:lms/featcher/Loginscreen/data/repo.dart/Loginrepo.dart';
import 'package:lms/core/utils/erroe.dart';
import 'package:lms/core/utils/Dio.dart';

class Loginrepoimp extends Loginrepo {
  Dio dio = Dio();

  @override
  Future<Either<Failure, void>> login(Loginmodel loginModel, String endpoint) async {
    try {
      final Api api = Api(dio);
      Map data = {"email": loginModel.email, "password": loginModel.password};
      var response = await api.post(data, endpoint);
      return right(response);
    } catch (e) {
      if (e is DioError) {
        return left(ServFailure.formdioerr(e));
      } else {
        return left(ServFailure(e.toString()));
      }
    }
  }
}
