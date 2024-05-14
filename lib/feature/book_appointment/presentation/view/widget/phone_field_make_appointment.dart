import 'package:dashboard/core/componant/custam_form_field.dart';
import 'package:dashboard/core/componant/custam_text.dart';
import 'package:dashboard/core/method.dart';
import 'package:dashboard/core/scal_factor_method.dart';
import 'package:dashboard/core/theme/color.dart';
import 'package:dashboard/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhoneFieldMakeAppointment extends StatelessWidget {
  final TextEditingController controller;
  const PhoneFieldMakeAppointment({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return defaultTextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return S.of(context).phoneerrorfield;
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
        label: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.email,
              color: SharedColor.greyFieldColor,
              size: getResponsiveFont(context, fontSize: 25),
            ),
            customText(
                fontWeight: FontWeight.w600,
                text: S.of(context).phone,
                color: SharedColor.greyFieldColor,
                fontSize: getResponsiveFont(context, fontSize: 15))
          ],
        ),
        hint: S.of(context).phonehint,
        style: const TextStyle());
  }
}
