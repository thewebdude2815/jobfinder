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
import 'package:jobfinder/screens/components/custom_stepper.dart';

class CompanyDoneConfirmation extends StatelessWidget {
  const CompanyDoneConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: CustomAppBar(
          showBackButton: true,
          title: 'Almost Done',
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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 28.h,
              ),
              const CustomStepper(
                index: 5,
                completedIndexes: [1, 2, 3, 4],
              ),
              const Spacer(),
              Container(
                height: 257.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.kMainColor,
                  borderRadius: BorderRadius.circular(18.w),
                ),
                child: Column(
                  children: [
                    const Spacer(),
                    SvgPicture.asset(
                      AppAssets.doneIcon,
                      height: 105.7.h,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'Done',
                      style: AppTextStyle.bodyBold34
                          .copyWith(fontStyle: FontStyle.italic),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              const Spacer(),
              CommonButton(
                  onTap: () {
                    Get.toNamed(Routes.bottomNavBarRoute);
                  },
                  width: double.infinity,
                  text: 'Confirm',
                  isItalicText: true,
                  isFilled: true,
                  hasIcon: false),
              SizedBox(
                height: 36.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
