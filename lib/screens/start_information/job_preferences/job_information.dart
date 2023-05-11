import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/common_appbar.dart';
import 'package:jobfinder/screens/components/common_button.dart';
import 'package:jobfinder/screens/components/common_dropdown.dart';
import 'package:jobfinder/screens/components/common_textfield.dart';
import 'package:jobfinder/screens/components/common_textfield_with_label.dart';
import 'package:jobfinder/screens/components/custom_stepper.dart';

class JobInformation extends StatelessWidget {
  const JobInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: CustomAppBar(
          showBackButton: true,
          title: 'Job Preferences',
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 16.w, top: 16.h),
              child: Text(
                'Save',
                style: AppTextStyle.bodyNormal17.copyWith(
                  color: AppColors.kMainColor,
                ),
              ),
            ),
          ]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 28.h,
            ),
            const CustomStepper(
              index: 3,
              completedIndexes: [1, 2],
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 016.w),
              child: CommonTextFieldWithLabel(
                label: 'Job Title(Required)',
                onSaved: (e) {},
                validator: (e) {},
                filled: true,
                fillColor: AppColors.kGrayColor4,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 016.w),
              child: CommonTextFieldWithLabel(
                label: 'Job Description',
                onSaved: (e) {},
                validator: (e) {},
                filled: true,
                maxLines: 5,
                fillColor: AppColors.kGrayColor4,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 016.w),
              child: CommonTextFieldWithLabel(
                label: 'Job Position',
                onSaved: (e) {},
                validator: (e) {},
                filled: true,
                fillColor: AppColors.kGrayColor4,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              // height: 44.h,
              padding: EdgeInsets.symmetric(horizontal: 016.w),
              child: CommonDropdownButton(
                items: const ['Morning', 'Evening'],
                onSaved: (e) {},
                onChange: (e) {},
                label: 'Job Schedule',
                hintText: 'Select',
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
        child: Row(
          children: [
            Expanded(
              child: CommonButton(
                  onTap: () {},
                  text: 'Back',
                  isItalicText: false,
                  isFilled: false,
                  fillColor: AppColors.kWhiteColor,
                  hasIcon: false),
            ),
            SizedBox(
              width: 16.w,
            ),
            Expanded(
              child: CommonButton(
                  onTap: () {
                    Get.toNamed(Routes.almostDoneAddPictureRoute);
                  },
                  text: 'Continue',
                  isItalicText: false,
                  isFilled: true,
                  hasIcon: false),
            ),
          ],
        ),
      ),
    );
  }
}
