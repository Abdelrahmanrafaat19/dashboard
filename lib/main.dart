import 'package:dashboard/core/locator.dart';
import 'package:dashboard/feature/auth/data/forget_password_repo/forget_password_repo_imple.dart';
import 'package:dashboard/feature/auth/presentation/bloc/forget_password_cubit/forget_password_cubit.dart';
import 'package:dashboard/feature/auth/presentation/views/forget_password.dart';
import 'package:dashboard/feature/auth/presentation/views/login.dart';
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
      child: const LoginScreen(),
    );
  }
}
