import 'package:dashboard/core/componant/custam_text.dart';
import 'package:dashboard/core/method.dart';
import 'package:dashboard/core/theme/color.dart';
import 'package:dashboard/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widget/display_book_appointment_body.dart';

class DisplayBookAppointment extends StatelessWidget {
  const DisplayBookAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.h,
        centerTitle: true,
        forceMaterialTransparency: true,
        backgroundColor: SharedColor.blueColor,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back,
            size: responsiveWeidth(context, 30),
          ),
        ),
        title: customText(
          text: S.of(context).bookappointment,
          color: SharedColor.greenColor,
          fontSize: responsiveWeidth(context, 20),
          fontWeight: FontWeight.bold,
        ),
      ),
      body: const DisplayBookAppointMentBody(),
    );
  }
}
