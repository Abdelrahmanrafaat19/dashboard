import 'package:dashboard/core/componant/custam_buttons.dart';
import 'package:dashboard/core/componant/custam_text.dart';
import 'package:dashboard/core/scal_factor_method.dart';
import 'package:dashboard/core/theme/color.dart';
import 'package:dashboard/feature/auth/presentation/views/login.dart';
import 'package:dashboard/generated/l10n.dart';
import 'package:flutter/material.dart';

class SignUpQus extends StatefulWidget {
  const SignUpQus({super.key});

  @override
  State<SignUpQus> createState() => _SignUpQusState();
}

class _SignUpQusState extends State<SignUpQus> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        customText(
          text: S.of(context).signUpQ,
          color: Colors.black,
          fontSize: getResponsiveFont(context, fontSize: 15),
          fontWeight: FontWeight.w500,
        ),
        textButton(
            text: customText(
              text: S.of(context).login,
              color: SharedColor.blueColor,
              fontSize: getResponsiveFont(context, fontSize: 15),
              fontWeight: FontWeight.w500,
            ),
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                  (route) => false);
            })
      ],
    );
  }
}
