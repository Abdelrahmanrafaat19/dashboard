import 'package:dartz/dartz.dart';
import 'package:dashboard/core/api_servec.dart';
import 'package:dashboard/core/error/failure.dart';
import 'package:dashboard/feature/book_appointment/data/delete_book_appointment/delete_book_appointment_repo/delete_book_appointment_repo.dart';
import 'package:dio/dio.dart';

class DeleteBookAppointmentRepoImple implements DeleteBookAppointmentRepo {
  final ApiServer _apiServer;

  DeleteBookAppointmentRepoImple(this._apiServer);
  @override
  Future<Either<Failure, dynamic>> deleteBookAppointmentMEthod(bookID) async {
    try {
      var response = await _apiServer.deleteMethod(
        endPoint: "book-appointments/$bookID",
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
