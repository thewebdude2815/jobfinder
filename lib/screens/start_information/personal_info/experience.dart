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
import 'package:jobfinder/screens/components/common_textfield_with_label.dart';
import 'package:jobfinder/screens/components/custom_stepper.dart';

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  bool isSelected = false;
  DateTime selectedDate = DateTime.now();
  String dateToShow = '';
  DateTime selectedDate2 = DateTime.now();
  String dateToShow2 = '';
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

  _selectDate2(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate2 = picked;
        dateToShow2 = DateFormat('dd/MM/yyyy').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: CustomAppBar(showBackButton: true, title: 'Experience', actions: [
        Padding(
          padding: EdgeInsets.only(right: 16.w, top: 16.h),
          child: Text(
            'Save',
            style:
                AppTextStyle.bodyNormal17.copyWith(color: AppColors.kMainColor),
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
                  index: 4,
                  completedIndexes: [1, 2, 3],
                ),
                SizedBox(
                  height: 24.h,
                ),
                CommonTextFieldWithLabel(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
                    label: 'Job Title',
                    onSaved: (e) {},
                    validator: (e) {},
                    hintText: 'Job Title',
                    filled: true),
                SizedBox(
                  height: 16.h,
                ),
                CommonTextFieldWithLabel(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
                    label: 'Company',
                    onSaved: (e) {},
                    validator: (e) {},
                    hintText: 'Enter Company name',
                    filled: true),
                SizedBox(
                  height: 16.h,
                ),
                CommonTextFieldWithLabel(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
                    label: 'Location',
                    onSaved: (e) {},
                    validator: (e) {},
                    hintText: 'Enter company location',
                    filled: true),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  children: [
                    isSelected
                        ? GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelected = !isSelected;
                              });
                            },
                            child: SvgPicture.asset(
                              AppAssets.checkIcon,
                              height: 20.h,
                              width: 20.w,
                            ),
                          )
                        : GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelected = !isSelected;
                              });
                            },
                            child: CircleAvatar(
                              radius: 10.r,
                              backgroundColor: AppColors.kGrayColor3,
                              child: CircleAvatar(
                                radius: 8.r,
                                backgroundColor: AppColors.kWhiteColor,
                              ),
                            ),
                          ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      'I am currently working here',
                      style: AppTextStyle.bodyNormal15
                          .copyWith(color: AppColors.kGrayColor2),
                    )
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Start Date',
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
                              child: Center(
                                child: Text(
                                  dateToShow == ''
                                      ? 'DD/MM/YYYY'
                                      : dateToShow.toString(),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTextStyle.bodyNormal17
                                      .copyWith(color: AppColors.kGrayColor),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'End Date',
                            style: AppTextStyle.bodySemiBold17
                                .copyWith(color: AppColors.kBlackColor),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          GestureDetector(
                            onTap: () {
                              _selectDate2(context);
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 12.h, horizontal: 16.w),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: AppColors.kGrayColor4),
                              child: Center(
                                child: Text(
                                  dateToShow2 == ''
                                      ? 'DD/MM/YYYY'
                                      : dateToShow2.toString(),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTextStyle.bodyNormal17
                                      .copyWith(color: AppColors.kGrayColor),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  height: 29.h,
                  width: 311.w,
                  decoration: BoxDecoration(
                    color: AppColors.kWhiteColor,
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: AppColors.kGrayColor3),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AppAssets.addMoreIcon,
                        height: 20.h,
                        width: 20.h,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        'Add More',
                        style: AppTextStyle.bodyNormal13
                            .copyWith(color: AppColors.kGrayColor),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                CommonButton(
                    onTap: () {
                      Get.toNamed(Routes.jobPreferenceRoute);
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
