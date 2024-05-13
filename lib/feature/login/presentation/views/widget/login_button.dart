import 'package:dashboard/core/componant/custam_buttons.dart';
import 'package:dashboard/core/method.dart';
import 'package:dashboard/core/scal_factor_method.dart';
import 'package:dashboard/core/theme/color.dart';
import 'package:dashboard/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: responsiveWeidth(context, 45),
      ),
      child: defaultButton(
        text: S.of(context).login,
        textcolor: SharedColor.whiteColor,
        fontSize: getResponsiveFont(context, fontSize: 25),
        color: SharedColor.greenColor,
        paddingtb: 5.h,
        // onTap: widget.onTap,
      ),
    );
  }
}
