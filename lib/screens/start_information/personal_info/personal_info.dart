import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/common_appbar.dart';
import 'package:jobfinder/screens/components/common_button.dart';
import 'package:jobfinder/screens/components/common_dropdown.dart';
import 'package:jobfinder/screens/components/common_textfield_with_label.dart';
import 'package:jobfinder/screens/components/custom_stepper.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({super.key});

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  DateTime selectedDate = DateTime.now();
  String dateToShow = '';
  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        dateToShow = DateFormat('dd/MM/yyyy').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: CustomAppBar(
          showBackButton: true,
          title: 'Personal Information',
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 16.w, top: 16.h),
              child: Text(
                'Save',
                style: AppTextStyle.bodyNormal17
                    .copyWith(color: AppColors.kMainColor),
              ),
            )
          ]),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: SizedBox(
            height: 700.h,
            child: Column(
              children: [
                SizedBox(
                  height: 16.h,
                ),
                const CustomStepper(
                  index: 1,
                  completedIndexes: [],
                ),
                SizedBox(
                  height: 24.h,
                ),
                CommonTextFieldWithLabel(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
                    label: 'Name',
                    onSaved: (e) {},
                    validator: (e) {},
                    hintText: 'Name',
                    filled: true),
                SizedBox(
                  height: 16.h,
                ),
                CommonTextFieldWithLabel(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
                    label: 'Phone',
                    onSaved: (e) {},
                    validator: (e) {},
                    hintText: 'Phone Number',
                    filled: true),
                SizedBox(
                  height: 16.h,
                ),
                CommonTextFieldWithLabel(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
                    label: 'Email',
                    onSaved: (e) {},
                    validator: (e) {},
                    hintText: 'Email',
                    filled: true),
                SizedBox(
                  height: 16.h,
                ),
                CommonDropdownButton(
                  label: 'Gender',
                  items: const ['Male', 'Female'],
                  onSaved: (e) {},
                  onChange: (e) {},
                  hintText: 'Select Gender',
                ),
                SizedBox(
                  height: 16.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Date of Birth',
                      style: AppTextStyle.bodySemiBold17
                          .copyWith(color: AppColors.kBlackColor),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        _selectDate(context);
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 12.h, horizontal: 16.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: AppColors.kGrayColor4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              dateToShow == ''
                                  ? 'DD/MM/YYYY'
                                  : dateToShow.toString(),
                              style: AppTextStyle.bodyNormal17
                                  .copyWith(color: AppColors.kGrayColor),
                            ),
                            SvgPicture.asset(
                              AppAssets.calendarIcon,
                              height: 16.h,
                              width: 14.w,
                              color: AppColors.kGrayColor,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                CommonButton(
                    onTap: () {
                      Get.toNamed(Routes.locationRoute);
                    },
                    text: 'Continue',
                    isItalicText: false,
                    isFilled: true,
                    hasIcon: false),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
