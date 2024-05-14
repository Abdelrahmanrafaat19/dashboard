import 'package:dartz/dartz.dart';
import 'package:dashboard/core/api_servec.dart';
import 'package:dashboard/core/error/failure.dart';
import 'package:dashboard/feature/book_appointment/data/make_book_appointment_repo/make_book_appointment_repo.dart';
import 'package:dio/dio.dart';

class MakeBookAppointmentRepoImple implements MakeBookAppointmentRepo {
  final ApiServer _apiServer;
  MakeBookAppointmentRepoImple(this._apiServer);
  @override
  Future<Either<Failure, Map<String, dynamic>>> makeBookAppointmentMethod(
      Map<String, dynamic> data) async {
    try {
      var response = await _apiServer.postMethod(
        endPoint: "book-appointments",
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
