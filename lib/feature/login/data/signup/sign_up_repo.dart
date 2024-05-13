import 'package:dartz/dartz.dart';
import 'package:dashboard/core/error/failure.dart';

abstract class SignUpRepo {
  Future<Either<Failure, Map<String, dynamic>>> signUpMethod(
      Map<String, dynamic> data);
}
