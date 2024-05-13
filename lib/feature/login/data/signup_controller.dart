// import 'dart:convert';

import 'package:dashboard/core/api_servec.dart';
import 'package:dio/dio.dart';
// import 'package:http/http.dart' as http;

// import '../../../constant.dart';

class SignUpController {
  static ApiServer apiServer = ApiServer(Dio());
  static Future<void> signUpMethod(Map<String, dynamic> data) async {
    try {
      var response = await Dio().post(
        "https://node.pioneers-solutions.info/api/auth/local/register",
        data: data,
        options: Options(
          headers: {"Content-type": "application/json"},
        ),
      );
      /*  apiServer.postMethod(
        endPoint:
            "https://node.pioneers-solutions.info/api/auth/local/register",
        data: data,
      ); */
      print(response.data);
    } catch (e) {
      print(e.toString());
    }
  }
}
