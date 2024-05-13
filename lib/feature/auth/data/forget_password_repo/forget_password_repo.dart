import 'package:dartz/dartz.dart';
import 'package:dashboard/core/error/failure.dart';

abstract class ForgetPasswordRepo {
  Future<Either<Failure, Map<String, dynamic>>> forgetPasswordMethod(
    Map<String, dynamic> data,
  );
}
