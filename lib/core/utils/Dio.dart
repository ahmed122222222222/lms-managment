import 'dart:io';
import 'package:dio/dio.dart';
import 'package:lms/featcher/Coureses/data/model/courese_respone_model/courese_respone_model.dart';

import 'package:lms/featcher/Loginscreen/data/model/loginrespone.dart';

class Api {
  String baseurl = "https://nabilramadan.bsite.net/api/";
  final Dio dio;

  Api(this.dio);

  Future<dynamic> post(Map data, String endPoint) async {
    try {
      var re = await dio.post("$baseurl$endPoint", data: data);
      return Loginrespone.fromJson(re.data);
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> getcourses(String? cid,
      {required String endPoint, required Loginrespone log}) async {
    var s = log.token!;
    Map<String, dynamic> headers = {
      'Authorization': 'Bearer $s',
      'Content-Type': 'application/json', // Depending on your API requirements
    };

    var re = await dio.get('$baseurl$endPoint$cid',
        options: Options(
          headers: headers,
        ));
    print(re.statusCode);
    return re.data;
  }
}
