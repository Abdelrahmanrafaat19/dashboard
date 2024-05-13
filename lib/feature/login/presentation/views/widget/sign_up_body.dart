import 'package:dashboard/core/componant/custam_text.dart';
import 'package:dashboard/core/scal_factor_method.dart';
import 'package:dashboard/core/theme/color.dart';
import 'package:dashboard/feature/login/presentation/bloc/sign_up_bloc/sign_up_cubit.dart';
import 'package:dashboard/feature/login/presentation/bloc/sign_up_bloc/sign_up_states.dart';
import 'package:dashboard/feature/login/presentation/views/widget/email_field.dart';
import 'package:dashboard/feature/login/presentation/views/widget/sign_up_button.dart';
import 'package:dashboard/feature/login/presentation/views/widget/sign_up_password_field.dart';
import 'package:dashboard/feature/login/presentation/views/widget/sign_up_q.dart';
import 'package:dashboard/feature/login/presentation/views/widget/username_field.dart';
import 'package:dashboard/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpBody extends StatelessWidget {
  SignUpBody({super.key});
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpIsLoadingState) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: SizedBox(
                  width: 100.w,
                  height: 100.h,
                  child: const Center(
                      child: CircularProgressIndicator(
                    color: SharedColor.mainColor,
                  ))),
            ),
          );
        } else if (state is SignUpSuccessState) {
          Navigator.of(context).pop();
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: Text(S.of(context).signupsuccessatate),
            ),
          );
        } else {
          Navigator.of(context).pop();

          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: Text(S.of(context).signupfailurestate),
            ),
          );
        }
      },
      builder: (context, state) {
        return Center(
          child: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Center(
                child: Container(
                  margin: width < height
                      ? EdgeInsets.symmetric(horizontal: 20.w)
                      : EdgeInsets.zero,
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  width: width < height ? double.infinity : 500,
                  decoration: BoxDecoration(
                    color: SharedColor.whiteColor,
                    borderRadius: BorderRadius.circular(20.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      customText(
                        text: S.of(context).signup,
                        color: SharedColor.blueColor,
                        fontSize: getResponsiveFont(context, fontSize: 30),
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      UserNameField(
                        controller: userNameController,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      EmailField(
                        controller: emailController,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SignUpPasswordField(
                        controller: passwordController,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      SignUpButton(
                        onTap: () {
                          BlocProvider.of<SignUpCubit>(context).signUpMethod({
                            "username": userNameController.text,
                            "email": emailController.text,
                            "password": passwordController.text
                          });
                        },
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      const SignUpQus(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
