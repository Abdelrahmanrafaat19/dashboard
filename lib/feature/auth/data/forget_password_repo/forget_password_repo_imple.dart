import 'package:dartz/dartz.dart';
import 'package:dashboard/core/api_servec.dart';
import 'package:dashboard/core/error/failure.dart';
import 'package:dashboard/feature/auth/data/forget_password_repo/forget_password_repo.dart';
import 'package:dio/dio.dart';

class ForgetPasswordRepoImple implements ForgetPasswordRepo {
  final ApiServer _apiServer;
  ForgetPasswordRepoImple(this._apiServer);
  @override
  Future<Either<Failure, Map<String, dynamic>>> forgetPasswordMethod(
      Map<String, dynamic> data) async {
    try {
      var response = await _apiServer.postMethod(
        endPoint: "auth/forgot-password",
        data: data,
        headers: {
          'Content-Type': 'application/json',
        },
      );

      return right(response);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
