import 'package:dashboard/core/theme/color.dart';
import 'package:dashboard/feature/book_appointment/presentation/view/widget/age_field.dart';
import 'package:dashboard/feature/book_appointment/presentation/view/widget/email_field_make_appointment.dart';
import 'package:dashboard/feature/book_appointment/presentation/view/widget/make_book_appointment_button.dart';
import 'package:dashboard/feature/book_appointment/presentation/view/widget/message_field_make_appointment.dart';
import 'package:dashboard/feature/book_appointment/presentation/view/widget/phone_field_make_appointment.dart';
import 'package:dashboard/feature/book_appointment/presentation/view/widget/prefrence_contact_field.dart';
import 'package:dashboard/feature/book_appointment/presentation/view/widget/service_field_make_appointment.dart';
import 'package:dashboard/feature/book_appointment/presentation/view/widget/service_type_field_make_appointment.dart';
import 'package:dashboard/feature/book_appointment/presentation/view/widget/username_field_book.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MakeAppointmentBody extends StatelessWidget {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  final SingleValueDropDownController prefrenceContactController =
      SingleValueDropDownController();
  final SingleValueDropDownController serviceController =
      SingleValueDropDownController();
  final SingleValueDropDownController serviceTypeController =
      SingleValueDropDownController();
  MakeAppointmentBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: width < height ? 20.w : 0.0,
                vertical: 30.h,
              ),
              padding: EdgeInsets.symmetric(vertical: 20.h),
              width: width < height ? double.infinity : 600,
              decoration: BoxDecoration(
                color: SharedColor.whiteColor,
                borderRadius: BorderRadius.circular(20.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  UserNameFieldBook(
                    controller: userNameController,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  PhoneFieldMakeAppointment(
                    controller: phoneController,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  EmailFieldMakeAppointment(
                    controller: emailController,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  AgeField(controller: ageController),
                  SizedBox(
                    height: 20.h,
                  ),
                  PrefrenceContact(
                    controller: prefrenceContactController,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ServiceFieldMakeAppointMent(
                    controller: serviceController,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ServiceTypeFieldMakeAppointMent(
                    controller: serviceTypeController,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  MessageFieldMakeAppointment(
                    controller: messageController,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  MakeBookAppointmentButton(onTap: () {}),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
