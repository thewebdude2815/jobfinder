import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: 812.h,
        width: 375.w,
        padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 30.h),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.onboardingA), fit: BoxFit.cover),
        ),
        child: Container(
          height: 812.h,
          width: 375.w,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                AppColors.kBlackColor.withOpacity(0.00),
                AppColors.kBlackColor.withOpacity(0.01),
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Skip',
                  style: AppTextStyle.bodyNormal17,
                ),
              ),
              SizedBox(
                height: 88.h,
              ),
              Text(
                'JOBBEE',
                style: AppTextStyle.bodyBold40.copyWith(
                    color: AppColors.kWhiteColor, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 80.h,
              ),
              Text(
                'Apply for jobs\neasily',
                style: AppTextStyle.bodyBold40,
              ),
              SizedBox(
                height: 18.h,
              ),
              Text(
                'Millions of dream jobs available for your special career today',
                style: AppTextStyle.bodyNormal17,
              ),
              SizedBox(
                height: 80.h,
              ),
              RichText(
                text: TextSpan(
                    text: '01',
                    style: AppTextStyle.bodyNormal15,
                    children: <TextSpan>[
                      TextSpan(
                        text: '/03',
                        style: AppTextStyle.bodyNormal15.copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppColors.kGrayColor),
                      )
                    ]),
              ),
              SizedBox(
                height: 16.h,
              ),
              LinearPercentIndicator(
                padding: EdgeInsets.zero,
                width: 311.w,
                animation: true,
                lineHeight: 1.h,
                animationDuration: 5000,
                percent: 0.4,
                barRadius: Radius.circular(18.r),
                progressColor: AppColors.kBlue2Color,
                backgroundColor: AppColors.kWhiteColor,
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.onboardingRoute2);
                },
                child: Container(
                  height: 50.h,
                  width: 311.w,
                  decoration: BoxDecoration(
                      color: AppColors.kMainColor,
                      borderRadius: BorderRadius.circular(8.r)),
                  child: Center(
                    child: Text(
                      'Next',
                      style: AppTextStyle.bodySemiBold17
                          .copyWith(fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 36.h,
              // ),
            ],
          ),
        ),
      )),
    );
  }
}
