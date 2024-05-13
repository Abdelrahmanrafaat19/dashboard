import 'package:dartz/dartz.dart';
import 'package:dashboard/core/error/failure.dart';

abstract class LoginRepo {
  Future<Either<Failure, Map<String, dynamic>>> loginMethod(
    Map<String, dynamic> data,
  );
}
