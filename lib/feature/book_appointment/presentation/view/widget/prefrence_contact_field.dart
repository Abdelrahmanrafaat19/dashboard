import 'package:dashboard/core/componant/custam_text.dart';
import 'package:dashboard/core/method.dart';
import 'package:dashboard/core/scal_factor_method.dart';
import 'package:dashboard/core/theme/color.dart';
import 'package:dashboard/generated/l10n.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrefrenceContact extends StatelessWidget {
  final SingleValueDropDownController controller;
  const PrefrenceContact({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      height: 45.h,
      child: DropDownTextField(
        textStyle: const TextStyle(color: SharedColor.greyFieldColor),
        listTextStyle: const TextStyle(),

        searchDecoration: InputDecoration(
          label: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.contact_page,
                color: SharedColor.greyFieldColor,
                size: getResponsiveFont(context, fontSize: 25),
              ),
              customText(
                fontWeight: FontWeight.w600,
                text: S.of(context).PerferedContact,
                color: SharedColor.greyFieldColor,
                fontSize: getResponsiveFont(context, fontSize: 15),
              )
            ],
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: SharedColor.greyFieldColor,
              width: responsiveWeidth(context, 2),
            ),
            borderRadius: BorderRadius.circular(20.r),
          ),
          icon: const Icon(Icons.arrow_drop_down),
          suffixIcon: const Icon(Icons.arrow_drop_down),
          hintText: S.of(context).choose,
          hintStyle: const TextStyle(color: SharedColor.greyFieldColor),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: SharedColor.greyFieldColor,
              width: responsiveWeidth(context, 2),
            ),
            borderRadius: BorderRadius.circular(20.r),
          ),
        ),

        textFieldDecoration: InputDecoration(
          label: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.contact_page,
                color: SharedColor.greyFieldColor,
                size: getResponsiveFont(context, fontSize: 25),
              ),
              customText(
                fontWeight: FontWeight.w600,
                text: S.of(context).PerferedContact,
                color: SharedColor.greyFieldColor,
                fontSize: getResponsiveFont(context, fontSize: 15),
              )
            ],
          ),
          suffixIcon: const Icon(Icons.arrow_drop_down),
          hintText: S.of(context).choose,
          hintStyle: const TextStyle(color: SharedColor.greyFieldColor),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: SharedColor.greyFieldColor,
              width: responsiveWeidth(context, 2),
            ),
            borderRadius: BorderRadius.circular(20.r),
          ),
        ),
        // initialValue: "مندوب/تاجر",
        controller: controller,
        clearOption: true,
        // enableSearch: true,
        dropdownColor: SharedColor.greyFieldColor,

        validator: (value) {
          if (value == null) {
            return S.of(context).PerferedContacterrorfield;
          } else {
            return null;
          }
        },
        dropDownItemCount: 2,

        dropDownList: const [
          DropDownValueModel(
            name: "phone",
            value: "Phone",
          ),
          DropDownValueModel(
            name: "email",
            value: "email",
          ),
        ],
        onChanged: (val) {},
      ),
    );
  }
}
