import 'package:dashboard/core/componant/custam_text.dart';
import 'package:dashboard/core/method.dart';
import 'package:dashboard/core/scal_factor_method.dart';
import 'package:dashboard/core/theme/color.dart';
import 'package:dashboard/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageFieldMakeAppointment extends StatelessWidget {
  final TextEditingController controller;
  const MessageFieldMakeAppointment({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller: controller,
        maxLines: 5,
        keyboardType: TextInputType.multiline,
        decoration: InputDecoration(
          hintText: S.of(context).messagehint,
          label: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.message,
                color: SharedColor.greyFieldColor,
                size: getResponsiveFont(context, fontSize: 25),
              ),
              customText(
                fontWeight: FontWeight.w600,
                text: S.of(context).message,
                color: SharedColor.greyFieldColor,
                fontSize: getResponsiveFont(context, fontSize: 15),
              )
            ],
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide: BorderSide(
              color: SharedColor.greyFieldColor,
              width: responsiveWeidth(context, 2),
            ),
          ),
        ),
      ),
    );
  }
}
