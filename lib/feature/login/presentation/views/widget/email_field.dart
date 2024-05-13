import 'package:dashboard/core/componant/custam_form_field.dart';
import 'package:dashboard/core/componant/custam_text.dart';
import 'package:dashboard/core/theme/color.dart';
import 'package:dashboard/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailField extends StatelessWidget {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var heigh = MediaQuery.of(context).size.height;
    return defaultTextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return S.of(context).emailfielderror;
          }

          return null;
        },
        // controller: phoneNumberController,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide: BorderSide(
                color: SharedColor.greyFieldColor,
                width: width < heigh ? 2.w : 3.h)),
        label: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.email,
              color: SharedColor.greyFieldColor,
              size: width < heigh ? 25.w : 25.h,
            ),
            customText(
                fontWeight: FontWeight.w600,
                text: S.of(context).email,
                color: SharedColor.greyFieldColor,
                fontSize: width < heigh ? 15.w : 15.h)
          ],
        ),
        hint: S.of(context).emailhint,
        style: const TextStyle());
  }
}
