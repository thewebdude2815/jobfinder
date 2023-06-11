import 'package:flutter/cupertino.dart';
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

class AppLanguage extends StatelessWidget {
  const AppLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          showBackButton: true,
          title: '나라 선택',
          centerTitle: true,
          actions: [
            SvgPicture.asset(
              AppAssets.searchIcon,
              height: 24.h,
            ),
            SizedBox(
              width: 16.w,
            )
          ]),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Language',
                style: AppTextStyle.bodyNormal17
                    .copyWith(fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  const FlagWidget(),
                  SizedBox(
                    width: 16.w,
                  ),
                  const FlagWidget(),
                  SizedBox(
                    width: 16.w,
                  ),
                  const FlagWidget(),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
        child: Row(
          children: [
            Expanded(
              child: CommonButton(
                  onTap: () {
                    Get.back();
                  },
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
                    Get.toNamed(Routes.onboardingRoute);
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

class FlagWidget extends StatelessWidget {
  const FlagWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppAssets.jp,
          height: 150.w,
          width: 150.w,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 16.h,
        ),
        Text(
          'Japan',
          style: AppTextStyle.bodyNormal13,
        )
      ],
    );
  }
}
