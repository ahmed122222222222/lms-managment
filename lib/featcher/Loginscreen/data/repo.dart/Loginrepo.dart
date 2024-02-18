import 'package:dartz/dartz.dart';
import 'package:lms/core/utils/erroe.dart';
import 'package:lms/featcher/Loginscreen/data/model/Loginmodel.dart';

abstract class Loginrepo {
 Future<Either<Failure, void>> login(Loginmodel loginModel, String endpoint);
}
