import 'package:dashboard/core/locator.dart';
import 'package:dashboard/feature/auth/data/forget_password_repo/forget_password_repo_imple.dart';
import 'package:dashboard/feature/auth/data/reset_password_repo/reset_password_repo_imple.dart';
import 'package:dashboard/feature/auth/presentation/bloc/forget_password_cubit/forget_password_cubit.dart';
import 'package:dashboard/feature/auth/presentation/bloc/reset_password_bloc/reset_password_cubit.dart';
import 'package:dashboard/feature/book_appointment/data/delete_book_appointment/delete_book_appointment_repo/delete_book_appointment_repo_imple.dart';
import 'package:dashboard/feature/book_appointment/data/diaplay_book_appointment_repo/diaplay_book_appointment_repo_imple.dart';
import 'package:dashboard/feature/book_appointment/data/make_book_appointment_repo/make_book_appointment_repo_imple.dart';
import 'package:dashboard/feature/book_appointment/presentation/bloc/delete_book_appointment_bloc/delete_book_appointment_cubit.dart';
import 'package:dashboard/feature/book_appointment/presentation/bloc/display_book_appointment_bloc/display_book_appointment_cubit.dart';
import 'package:dashboard/feature/book_appointment/presentation/bloc/make_book_appointment_bloc/make_book_appointment_cubit.dart';
import 'package:dashboard/feature/book_appointment/presentation/view/diaplay_book_appointment.dart';
import 'package:dashboard/feature/layout/localization/localiztion_state.dart';
import 'package:dashboard/feature/layout/localization/loclization_cubit.dart';
import 'package:dashboard/feature/auth/data/login_repo/login_repo_imple.dart';
import 'package:dashboard/feature/auth/data/signup/sign_up_repo_imple.dart';
import 'package:dashboard/feature/auth/presentation/bloc/login_bloc/login_cubit.dart';
import 'package:dashboard/feature/auth/presentation/bloc/sign_up_bloc/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'generated/l10n.dart';

void main() {
  setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => LocaleCubit()..getSavedLanguage(),
            ),
            BlocProvider(
              create: (context) => SignUpCubit(getit.get<SignUpRepoImple>()),
            ),
            BlocProvider(
              create: (context) => LoginCubit(getit.get<LoginRepoImple>()),
            ),
            BlocProvider(
              create: (context) => ForgetPasswordCubit(
                getit.get<ForgetPasswordRepoImple>(),
              ),
            ),
            BlocProvider(
              create: (context) => ResetPasswordCubit(
                getit.get<ResetPasswordRepoImple>(),
              ),
            ),
            BlocProvider(
              create: (context) => MakeBookAppointmentCubit(
                getit.get<MakeBookAppointmentRepoImple>(),
              ),
            ),
            BlocProvider(
              create: (context) => DisplayBookAppointmentCubit(
                getit.get<DisplayBookAppointmentRepoImple>(),
              )..displayBookAppointment(),
            ),
            BlocProvider(
              create: (context) => DeleteBookAppointmentCubit(
                getit.get<DeleteBookAppointmentRepoImple>(),
              ),
            ),
          ],
          child: BlocBuilder<LocaleCubit, ChangeLocaleState>(
            builder: (context, state) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
                title: 'DashBoard',
                home: child,
              );
            },
          ),
        );
      },
      child: const DiaplayBookAppointment(),
    );
  }
}
