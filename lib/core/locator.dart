import 'package:dashboard/core/api_servec.dart';
import 'package:dashboard/feature/login/data/login_repo/login_repo_imple.dart';
import 'package:dashboard/feature/login/data/signup/sign_up_repo_imple.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

var getit = GetIt.instance;

void setUp() {
  getit.registerSingleton<ApiServer>(
    ApiServer(Dio()),
  );
  getit.registerSingleton<SignUpRepoImple>(
    SignUpRepoImple(
      getit.get<ApiServer>(),
    ),
  );
  getit.registerSingleton<LoginRepoImple>(
    LoginRepoImple(
      getit.get<ApiServer>(),
    ),
  );
}
