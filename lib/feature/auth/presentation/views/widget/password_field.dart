import 'package:dashboard/core/componant/custam_buttons.dart';
import 'package:dashboard/core/componant/custam_form_field.dart';
import 'package:dashboard/core/componant/custam_text.dart';
import 'package:dashboard/core/method.dart';
import 'package:dashboard/core/scal_factor_method.dart';
import 'package:dashboard/feature/auth/presentation/views/forget_password.dart';
import 'package:dashboard/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/color.dart';

// ignore: must_be_immutable
class PasswordField extends StatefulWidget {
  final TextEditingController controller;
  const PasswordField({super.key, required this.controller});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool passobsure = true;

  @override
  Widget build(BuildContext context) {
    return defaultTextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return S.of(context).passwordfielderror;
          }

          return null;
        },
        controller: widget.controller,
        obscure: passobsure,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
          borderSide: BorderSide(
            color: SharedColor.greyFieldColor,
            width: responsiveWeidth(context, 2),
          ),
        ),
        label: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.password,
              color: SharedColor.greyFieldColor,
              size: getResponsiveFont(context, fontSize: 25),
            ),
            customText(
                fontWeight: FontWeight.w600,
                text: S.of(context).password,
                color: SharedColor.greyFieldColor,
                fontSize: getResponsiveFont(context, fontSize: 15))
          ],
        ),
        hint: S.of(context).passwordhint,
        suffixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              highlightColor: const Color(0xffF8F8F8),
              splashColor: const Color(0xffF8F8F8),
              child: Icon(
                passobsure ? Icons.visibility_off : Icons.visibility,
                color: SharedColor.greyFieldColor,
              ),
              onTap: () {
                setState(() {
                  passobsure = !passobsure;
                });
              },
            ),
            textButton(
                text: customText(
                  text: S.of(context).forgetpassword,
                  color: SharedColor.blueColor,
                  fontSize: getResponsiveFont(context, fontSize: 12),
                  fontWeight: FontWeight.w500,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return const ForgetPassword();
                      },
                    ),
                  );
                })
          ],
        ),
        style: const TextStyle());
  }
}
