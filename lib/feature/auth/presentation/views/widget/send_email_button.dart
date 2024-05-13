import 'package:dashboard/core/componant/custam_buttons.dart';
import 'package:dashboard/core/method.dart';
import 'package:dashboard/core/scal_factor_method.dart';
import 'package:dashboard/core/theme/color.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/l10n.dart';

class SendEmailButton extends StatelessWidget {
  final dynamic onTap;
  const SendEmailButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: responsiveWeidth(context, 45),
      ),
      child: defaultButton(
        text: S.of(context).send,
        textcolor: SharedColor.whiteColor,
        fontSize: getResponsiveFont(context, fontSize: 25),
        color: SharedColor.greenColor,
        paddingtb: 5.h,
        onTap: onTap,
      ),
    );
  }
}
