import 'package:dartz/dartz.dart';
import 'package:dashboard/core/error/failure.dart';

abstract class DeleteBookAppointmentRepo {
  Future<Either<Failure, dynamic>> deleteBookAppointmentMEthod(dynamic bookID);
}
