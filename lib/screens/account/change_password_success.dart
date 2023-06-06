import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/common_button.dart';

class ChangePasswordSuccess extends StatelessWidget {
  const ChangePasswordSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                    Container(
                      width: 223.w,
                      padding: EdgeInsets.symmetric(vertical: 12.h),
                      decoration: BoxDecoration(
                        color: AppColors.kWhiteColor,
                        borderRadius: BorderRadius.circular(
                          20.r,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Successfully Changed',
                          style: AppTextStyle.bodyNormal17
                              .copyWith(color: AppColors.kMainColor),
                        ),
                      ),
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
