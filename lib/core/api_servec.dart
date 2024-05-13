import 'package:dashboard/constant.dart';
import 'package:dio/dio.dart';

class ApiServer {
  Dio dio;
  ApiServer(this.dio);
  Future<dynamic> postMethod(
      {required String endPoint,
      required Map<String, dynamic> data,
      String? token,
      Map<String, String>? headers}) async {
    var response = await dio.post(
      "$baseURL/$endPoint",
      data: data,
      options: Options(
        headers: {"Content-type": "application/json"},
      ),
    );

    return response.data;
  }

  Future<Map<String, dynamic>> getMethod(
      {required String endPoint,
      Map<String, dynamic>? data,
      String? token,
      String? local}) async {
    var response = await dio.get(
      "$baseURL/$endPoint",
      data: data,
      options:
          Options(headers: {'Authorization': 'Bearer $token', "locale": local}),
    );

    return response.data;
  }
}
