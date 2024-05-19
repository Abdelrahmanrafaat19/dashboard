import 'package:dashboard/core/api_servec.dart';
import 'package:dashboard/feature/auth/data/forget_password_repo/forget_password_repo_imple.dart';
import 'package:dashboard/feature/auth/data/login_repo/login_repo_imple.dart';
import 'package:dashboard/feature/auth/data/reset_password_repo/reset_password_repo_imple.dart';
import 'package:dashboard/feature/auth/data/signup/sign_up_repo_imple.dart';
import 'package:dashboard/feature/book_appointment/data/delete_book_appointment/delete_book_appointment_repo/delete_book_appointment_repo_imple.dart';
import 'package:dashboard/feature/book_appointment/data/diaplay_book_appointment_repo/diaplay_book_appointment_repo_imple.dart';
import 'package:dashboard/feature/book_appointment/data/make_book_appointment_repo/make_book_appointment_repo_imple.dart';
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
  getit.registerSingleton<ForgetPasswordRepoImple>(
    ForgetPasswordRepoImple(
      getit.get<ApiServer>(),
    ),
  );
  getit.registerSingleton<ResetPasswordRepoImple>(
    ResetPasswordRepoImple(
      getit.get<ApiServer>(),
    ),
  );
  getit.registerSingleton<MakeBookAppointmentRepoImple>(
    MakeBookAppointmentRepoImple(
      getit.get<ApiServer>(),
    ),
  );
  getit.registerSingleton<DisplayBookAppointmentRepoImple>(
    DisplayBookAppointmentRepoImple(
      getit.get<ApiServer>(),
    ),
  );
  getit.registerSingleton<DeleteBookAppointmentRepoImple>(
    DeleteBookAppointmentRepoImple(
      getit.get<ApiServer>(),
    ),
  );
}
