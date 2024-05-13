import 'package:dashboard/core/componant/custam_form_field.dart';
import 'package:dashboard/core/componant/custam_text.dart';
import 'package:dashboard/core/method.dart';
import 'package:dashboard/core/scal_factor_method.dart';
import 'package:dashboard/core/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/l10n.dart';

class ConfirmPasswordField extends StatefulWidget {
  final TextEditingController controller;
  const ConfirmPasswordField({super.key, required this.controller});

  @override
  State<ConfirmPasswordField> createState() => _ConfirmPasswordFieldState();
}

class _ConfirmPasswordFieldState extends State<ConfirmPasswordField> {
  bool passobsure = true;

  @override
  Widget build(BuildContext context) {
    return defaultTextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return S.of(context).confirmpasswoed;
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
              text: S.of(context).confirmpasswoed,
              color: SharedColor.greyFieldColor,
              fontSize: getResponsiveFont(
                context,
                fontSize: 15,
              ),
            )
          ],
        ),
        hint: S.of(context).confirmpasswoed,
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
          ],
        ),
        style: const TextStyle());
  }
}
