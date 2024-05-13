import 'package:dartz/dartz.dart';
import 'package:dashboard/core/error/failure.dart';

abstract class ResetPasswordRepo {
  Future<Either<Failure, Map<String, dynamic>>> resetPasswordMethod(
      Map<String, dynamic> data);
}
