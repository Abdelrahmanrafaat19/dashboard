import 'package:dartz/dartz.dart';
import 'package:dashboard/core/error/failure.dart';
import 'package:dashboard/feature/book_appointment/data/diaplay_book_appointment_repo/model/book_appointment_model.dart';

abstract class DisplayBookAppointmentRepo {
  Future<Either<Failure, BookAppointmentModel>> displayBookAppointMentMethod();
}
