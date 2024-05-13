import 'package:dashboard/core/componant/custam_form_field.dart';
import 'package:dashboard/core/componant/custam_text.dart';
import 'package:dashboard/core/method.dart';
import 'package:dashboard/core/scal_factor_method.dart';
import 'package:dashboard/core/theme/color.dart';
import 'package:dashboard/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CodeField extends StatelessWidget {
  final TextEditingController controller;
  const CodeField({super.key, required this.controller});

  @override
  @override
  Widget build(BuildContext context) {
    return defaultTextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return S.of(context).codeerrorfield;
          }

          return null;
        },
        controller: controller,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
          borderSide: BorderSide(
            color: SharedColor.greyFieldColor,
            width: responsiveWeidth(context, 2),
          ),
        ),
        label: customText(
          fontWeight: FontWeight.w600,
          text: S.of(context).code,
          color: SharedColor.greyFieldColor,
          fontSize: getResponsiveFont(context, fontSize: 15),
        ),
        hint: S.of(context).codehint,
        style: const TextStyle());
  }
}
