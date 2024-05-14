import 'package:dartz/dartz.dart';
import 'package:dashboard/core/error/failure.dart';

abstract class MakeBookAppointmentRepo {
  Future<Either<Failure, Map<String, dynamic>>> makeBookAppointmentMethod(
      Map<String, dynamic> data);
}
