import 'dart:io';
import 'package:dio/dio.dart';
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
}
