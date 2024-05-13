import 'package:dashboard/core/componant/custam_text.dart';
import 'package:dashboard/core/scal_factor_method.dart';
import 'package:dashboard/core/theme/color.dart';
import 'package:dashboard/feature/auth/presentation/bloc/reset_password_bloc/reset_password_cubit.dart';
import 'package:dashboard/feature/auth/presentation/views/widget/code_field.dart';
import 'package:dashboard/feature/auth/presentation/views/widget/confirm_password_field.dart';
import 'package:dashboard/feature/auth/presentation/views/widget/send_email_button.dart';
import 'package:dashboard/feature/auth/presentation/views/widget/sign_up_password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/l10n.dart';

class ResetPasswordBody extends StatelessWidget {
  ResetPasswordBody({super.key});
  final _formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController codeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return BlocConsumer<ResetPasswordCubit, ResetPasswordState>(
      listener: (context, state) {
        if (state is ResetPasswordIsLoading) {
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
        } else if (state is ResetPasswordSuccess) {
          Navigator.of(context).pop();
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: Text(S.of(context).signupsuccessatate),
            ),
          );
        } else if (state is ResetPasswordFailure) {
          Navigator.of(context).pop();

          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: Text(S.of(context).resetpasswordfailurestate),
            ),
          );
        } else {
          Navigator.of(context).pop();
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: Text(S.of(context).resetpasswordfailurestate),
            ),
          );
        }
      },
      builder: (context, state) {
        return Form(
          key: _formKey,
          child: Center(
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
                          text: S.of(context).resetpassword,
                          color: SharedColor.blueColor,
                          fontSize: getResponsiveFont(context, fontSize: 30),
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        SignUpPasswordField(
                          controller: passwordController,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        ConfirmPasswordField(
                          controller: confirmPasswordController,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        CodeField(
                          controller: codeController,
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        SendEmailButton(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              if (passwordController.text ==
                                  confirmPasswordController.text) {
                                BlocProvider.of<ResetPasswordCubit>(context)
                                    .resetPasswordMethod({
                                  "password": passwordController.text,
                                  "passwordConfirmation":
                                      confirmPasswordController.text,
                                  "code": codeController.text
                                });
                              } else {
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    content:
                                        Text(S.of(context).resetpasswordcheck),
                                  ),
                                );
                              }
                            }
                          },
                        ),
                      ],
                    ),
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
