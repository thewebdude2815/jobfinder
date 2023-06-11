import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/common_appbar.dart';
import 'package:jobfinder/screens/components/common_button.dart';
import 'package:jobfinder/screens/components/common_dropdown.dart';
import 'package:jobfinder/screens/components/common_textfield_with_label.dart';
import 'package:jobfinder/screens/components/custom_stepper.dart';

class JobPreferences extends StatefulWidget {
  const JobPreferences({super.key});

  @override
  State<JobPreferences> createState() => _JobPreferencesState();
}

class _JobPreferencesState extends State<JobPreferences> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: CustomAppBar(
          showBackButton: true,
          title: 'Job Preferences',
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
                  index: 5,
                  completedIndexes: [1, 2, 3, 4],
                ),
                SizedBox(
                  height: 24.h,
                ),
                CommonTextFieldWithLabel(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
                    label: 'Job Categories',
                    onSaved: (e) {},
                    validator: (e) {},
                    hintText: 'Job Categories',
                    filled: true),
                SizedBox(
                  height: 16.h,
                ),
                CommonDropdownButton(
                  label: 'Pay Day',
                  items: const ['Once A Month', 'Once A Week'],
                  onSaved: (e) {},
                  onChange: (e) {},
                  hintText: 'Select Pay Day',
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CommonTextFieldWithLabel(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 12.h, horizontal: 16.w),
                          label: 'Min',
                          onSaved: (e) {},
                          validator: (e) {},
                          hintText: 'Enter min',
                          filled: true),
                    ),
                    SizedBox(
                      width: 16.h,
                    ),
                    Expanded(
                      child: CommonTextFieldWithLabel(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 12.h, horizontal: 16.w),
                          label: 'Max',
                          onSaved: (e) {},
                          validator: (e) {},
                          hintText: 'Enter max',
                          filled: true),
                    ),
                  ],
                ),
                const Spacer(),
                CommonButton(
                    onTap: () {
                      Get.toNamed(Routes.interestsRoute);
                    },
                    text: 'Done',
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
