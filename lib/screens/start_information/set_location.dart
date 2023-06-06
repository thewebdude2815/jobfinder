import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/common_button.dart';

class SetLocation extends StatelessWidget {
  const SetLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80.h,
              ),
              SvgPicture.asset(
                AppAssets.locationIcon,
                height: 64.h,
                width: 52.w,
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                'Hello, nice to meet you!',
                style: AppTextStyle.bodyBold40
                    .copyWith(color: AppColors.kBlackColor),
              ),
              SizedBox(
                height: 18.h,
              ),
              Text(
                'Set your location to start find a dream job around you',
                style: AppTextStyle.bodyNormal17
                    .copyWith(color: AppColors.kGrayColor2),
              ),
              SizedBox(
                height: 40.h,
              ),
              CommonButton(
                onTap: () {
                  Get.toNamed(Routes.chooseLocationRoute);
                },
                text: 'Use current location',
                isItalicText: false,
                isFilled: true,
                hasIcon: true,
                fillColor: AppColors.kMainColor,
                icon: AppAssets.currentLocationIcon,
                iconColor: AppColors.kWhiteColor,
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'We only access your location while you are using this incredible app',
                style: AppTextStyle.bodyNormal13
                    .copyWith(color: AppColors.kGrayColor),
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                'or set your location manually',
                style: AppTextStyle.bodyNormal17
                    .copyWith(color: AppColors.kMainColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
