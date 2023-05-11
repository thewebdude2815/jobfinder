import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/common_appbar.dart';
import 'package:jobfinder/screens/components/common_button.dart';
import 'package:jobfinder/screens/components/job_preferences_widget.dart';

class JobPreferencesCategories extends StatelessWidget {
  const JobPreferencesCategories({super.key});

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
          children: [
            SizedBox(
              height: 28.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  const Expanded(
                    child: JobPreferencesWidget(
                      title: 'Designer',
                      jobs: '793 jobs',
                      icon: AppAssets.brushIcon,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const Expanded(
                    child: JobPreferencesWidget(
                      title: 'Designer',
                      jobs: '793 jobs',
                      icon: AppAssets.brushIcon,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const Expanded(
                    child: JobPreferencesWidget(
                      title: 'Designer',
                      jobs: '793 jobs',
                      icon: AppAssets.brushIcon,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  const Expanded(
                    child: JobPreferencesWidget(
                      title: 'Designer',
                      jobs: '793 jobs',
                      icon: AppAssets.brushIcon,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const Expanded(
                    child: JobPreferencesWidget(
                      title: 'Designer',
                      jobs: '793 jobs',
                      icon: AppAssets.brushIcon,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const Expanded(
                    child: JobPreferencesWidget(
                      title: 'Designer',
                      jobs: '793 jobs',
                      icon: AppAssets.brushIcon,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  const Expanded(
                    child: JobPreferencesWidget(
                      title: 'Designer',
                      jobs: '793 jobs',
                      icon: AppAssets.brushIcon,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const Expanded(
                    child: JobPreferencesWidget(
                      title: 'Designer',
                      jobs: '793 jobs',
                      icon: AppAssets.brushIcon,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const Expanded(
                    child: JobPreferencesWidget(
                      title: 'Designer',
                      jobs: '793 jobs',
                      icon: AppAssets.brushIcon,
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
                    Get.toNamed(Routes.salaryRangeRoute);
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
