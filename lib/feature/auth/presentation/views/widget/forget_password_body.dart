import 'package:dashboard/core/componant/custam_text.dart';
import 'package:dashboard/core/scal_factor_method.dart';
import 'package:dashboard/core/theme/color.dart';
import 'package:dashboard/feature/auth/presentation/bloc/forget_password_cubit/forget_password_cubit.dart';
import 'package:dashboard/feature/auth/presentation/views/widget/email_field.dart';
import 'package:dashboard/feature/auth/presentation/views/widget/send_email_button.dart';
import 'package:dashboard/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordBody extends StatelessWidget {
  ForgetPasswordBody({super.key});
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
      listener: (context, state) {
        if (state is ForgetPasswordIsLoading) {
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
        } else if (state is ForgetPasswordSuccess) {
          Navigator.of(context).pop();
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: Text(S.of(context).forgetpasswordsuccessstate),
            ),
          );
        } else if (state is ForgetPasswordFailure) {
          Navigator.of(context).pop();

          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: Text(state.message.toString()),
            ),
          );
        } else {
          Navigator.of(context).pop();

          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: Text(
                S.of(context).forgetpasswordfailurestate,
              ),
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
                          text: S.of(context).forgetpassword,
                          color: SharedColor.blueColor,
                          fontSize: getResponsiveFont(context, fontSize: 30),
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        EmailField(
                          controller: emailController,
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        SendEmailButton(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              BlocProvider.of<ForgetPasswordCubit>(context)
                                  .fordetPasswordMethod(
                                {"email": emailController.text},
                              );
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
