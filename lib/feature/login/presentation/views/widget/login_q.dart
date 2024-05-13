import 'package:dashboard/core/componant/custam_buttons.dart';
import 'package:dashboard/core/componant/custam_text.dart';
import 'package:dashboard/core/scal_factor_method.dart';
import 'package:dashboard/core/theme/color.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';

class SignUpQLoginScreen extends StatelessWidget {
  const SignUpQLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        customText(
          text: S.of(context).logininQ,
          color: SharedColor.greyFieldColor,
          fontSize: getResponsiveFont(
            context,
            fontSize: 15,
          ),
          fontWeight: FontWeight.w500,
        ),
        textButton(
            text: customText(
              text: S.of(context).signup,
              color: SharedColor.blueColor,
              fontSize: getResponsiveFont(
                context,
                fontSize: 15,
              ),
              fontWeight: FontWeight.w500,
            ),
            onPressed: () {})
      ],
    );
  }
}
