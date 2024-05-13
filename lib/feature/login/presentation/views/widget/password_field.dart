import 'package:dashboard/core/componant/custam_buttons.dart';
import 'package:dashboard/core/componant/custam_form_field.dart';
import 'package:dashboard/core/componant/custam_text.dart';
import 'package:dashboard/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/color.dart';

// ignore: must_be_immutable
class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool passobsure = true;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var heigh = MediaQuery.of(context).size.height;
    return defaultTextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return S.of(context).passwordfielderror;
          }

          return null;
        },
        // controller: widget.passwordController,
        obscure: passobsure,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide: BorderSide(
                color: SharedColor.greyFieldColor,
                width: width < heigh ? 3.w : 3.h)),
        label: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.password,
              color: SharedColor.greyFieldColor,
              size: width < heigh ? 25.w : 25.h,
            ),
            customText(
                fontWeight: FontWeight.w600,
                text: S.of(context).password,
                color: SharedColor.greyFieldColor,
                fontSize: width < heigh ? 15.w : 15.h)
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
                  fontSize: width < heigh ? 12.w : 12.h,
                  fontWeight: FontWeight.w500,
                ),
                onPressed: () {})
          ],
        ),
        style: const TextStyle());
  }
}
