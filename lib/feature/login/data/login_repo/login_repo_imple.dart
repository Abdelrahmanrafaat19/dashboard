import 'package:dartz/dartz.dart';
import 'package:dashboard/core/api_servec.dart';
import 'package:dashboard/core/error/failure.dart';
import 'package:dashboard/feature/login/data/login_repo/login_repo.dart';
import 'package:dio/dio.dart';

class LoginRepoImple implements LoginRepo {
  final ApiServer _apiServer;
  LoginRepoImple(this._apiServer);
  @override
  Future<Either<Failure, Map<String, dynamic>>> loginMethod(
    Map<String, dynamic> data,
  ) async {
    try {
      var response = await _apiServer.postMethod(
        endPoint: "auth/local",
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
