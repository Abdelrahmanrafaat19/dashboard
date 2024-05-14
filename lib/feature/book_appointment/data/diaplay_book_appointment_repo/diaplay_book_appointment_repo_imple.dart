import 'package:dartz/dartz.dart';
import 'package:dashboard/core/api_servec.dart';
import 'package:dashboard/core/error/failure.dart';
import 'package:dashboard/feature/book_appointment/data/diaplay_book_appointment_repo/diaplay_book_appointment_repo.dart';
import 'package:dashboard/feature/book_appointment/data/diaplay_book_appointment_repo/model/book_appointment_model.dart';
import 'package:dio/dio.dart';

class DisplayBookAppointmentRepoImple implements DisplayBookAppointmentRepo {
  final ApiServer _apiServer;
  static BookAppointmentModel? bookAppointmentModel;

  DisplayBookAppointmentRepoImple(this._apiServer);
  @override
  Future<Either<Failure, BookAppointmentModel>>
      displayBookAppointMentMethod() async {
    try {
      var response = await _apiServer.getMethod(
        endPoint: "book-appointments",
        headers: {
          'Content-Type': 'application/json',
        },
      );
      bookAppointmentModel = BookAppointmentModel.fromJson(response);
      print("The length Of data${bookAppointmentModel!.data!.length}");
      return right(bookAppointmentModel!);
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
