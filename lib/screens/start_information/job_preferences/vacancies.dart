import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/common_appbar.dart';
import 'package:jobfinder/screens/components/common_button.dart';
import 'package:jobfinder/screens/components/common_textfield.dart';
import 'package:jobfinder/screens/components/custom_stepper.dart';
import 'package:jobfinder/screens/components/salary_range_widget.dart';

class Vacancies extends StatelessWidget {
  const Vacancies({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: CustomAppBar(
          showBackButton: true,
          title: 'New Post',
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
              index: 2,
              completedIndexes: [1],
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 016.w),
              child: CommonTextFieldNew(
                onSaved: (e) {},
                validator: (e) {},
                filled: false,
                hintText: 'No of vacancies(optional)',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
              ),
            ),
            SizedBox(
              height: 28.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 016.w),
              child: Text(
                'Job Type',
                style: AppTextStyle.bodyNormal13.copyWith(
                    color: AppColors.kBlackColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  const Expanded(
                    child: SalaryRangeWidget(
                      title: 'Designer',
                      icon: AppAssets.brushIcon,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const Expanded(
                    child: SalaryRangeWidget(
                      title: 'Designer',
                      icon: AppAssets.brushIcon,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const Expanded(
                    child: SalaryRangeWidget(
                      title: 'Designer',
                      icon: AppAssets.brushIcon,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 016.w),
              child: Text(
                'Prefered Gender',
                style: AppTextStyle.bodyNormal13.copyWith(
                    color: AppColors.kBlackColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  const Expanded(
                    child: SalaryRangeWidget(
                      title: 'Male',
                      icon: AppAssets.maleIcon,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const Expanded(
                    child: SalaryRangeWidget(
                      title: 'Female',
                      icon: AppAssets.femaleIcon,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const Expanded(
                    child: SalaryRangeWidget(
                      title: 'Any',
                      icon: AppAssets.anyGenderIcon,
                    ),
                  )
                ],
              ),
            )
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
                    Get.toNamed(Routes.jobInformationRoute);
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
