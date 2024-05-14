import 'package:dashboard/core/componant/custam_form_field.dart';
import 'package:dashboard/core/componant/custam_text.dart';
import 'package:dashboard/core/method.dart';
import 'package:dashboard/core/scal_factor_method.dart';
import 'package:dashboard/core/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/l10n.dart';

class UserNameFieldBook extends StatelessWidget {
  final TextEditingController controller;
  const UserNameFieldBook({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return defaultTextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return S.of(context).nameerrorfield;
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
            Icons.person,
            color: SharedColor.greyFieldColor,
            size: getResponsiveFont(context, fontSize: 25),
          ),
          customText(
            fontWeight: FontWeight.w600,
            text: S.of(context).username,
            color: SharedColor.greyFieldColor,
            fontSize: getResponsiveFont(context, fontSize: 15),
          )
        ],
      ),
      hint: S.of(context).name,
      style: const TextStyle(),
    );
  }
}
