import 'package:dio/dio.dart';
import 'package:lms/featcher/Loginscreen/presention/manager/cubit/login_cubit.dart';
class Api {
  static int bb=0;
  late int statusCode;
  String baseurl="https://crudapi20240209215103.azurewebsites.net/api/";
 final Dio dio;
  Api( this.dio);
  Future<dynamic> get (String email, String password) async {
   try {
  var re=await dio.post("https://crudapi20240209215103.azurewebsites.net/api/Account/login",data:   {"email": "AbdulMajeedSallam@gmail.com","password": "P@ssw0rd"});
  print(re.data);
  code = re.statusCode!; 
  print(code);
} on Exception catch (e) {
  print(e.toString());
}

  }
}