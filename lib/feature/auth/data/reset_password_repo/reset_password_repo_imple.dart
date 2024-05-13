import 'package:dartz/dartz.dart';
import 'package:dashboard/core/api_servec.dart';
import 'package:dashboard/core/error/failure.dart';
import 'package:dashboard/feature/auth/data/reset_password_repo/reset_password_repo.dart';
import 'package:dio/dio.dart';

class ResetPasswordRepoImple implements ResetPasswordRepo {
  final ApiServer _apiServer;
  ResetPasswordRepoImple(this._apiServer);
  @override
  Future<Either<Failure, Map<String, dynamic>>> resetPasswordMethod(
      Map<String, dynamic> data) async {
    try {
      var response = await _apiServer.postMethod(
        endPoint: "auth/reset-password",
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
