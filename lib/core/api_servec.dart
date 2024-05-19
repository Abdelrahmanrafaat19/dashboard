import 'package:dashboard/constant.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';

class ApiServer {
  Dio dio;
  ApiServer(this.dio);
  Future<dynamic> postMethod(
      {required String endPoint,
      required Map<String, dynamic> data,
      String? token,
      required Map<String, String>? headers}) async {
    var response = await dio.post(
      "$baseURL/$endPoint",
      data: data,
      options: Options(
        headers: headers,
      ),
    );
    debugPrint("response of Post Method of $endPoint is ${response.data}");
    return response.data;
  }

  Future<Map<String, dynamic>> getMethod({
    required String endPoint,
    Map<String, dynamic>? data,
    String? token,
    String? local,
    required Map<String, String>? headers,
  }) async {
    var response = await dio.get(
      "$baseURL/$endPoint",
      data: data,
      options: Options(
        headers: headers,
      ),
    );
    debugPrint("response of get Method of $endPoint is ${response.data}");
    return response.data;
  }

  Future<Map<String, dynamic>> deleteMethod({
    required String endPoint,
    Map<String, dynamic>? data,
    String? token,
    String? local,
    required Map<String, String>? headers,
  }) async {
    var response = await dio.delete(
      "$baseURL/$endPoint",
      data: data,
      options: Options(
        headers: headers,
      ),
    );
    debugPrint(
        "response of Delete Method of $endPoint is ${response.statusCode}");
    debugPrint("response of Delete Method of $endPoint is ${response.data}");
    return response.data;
  }
}
