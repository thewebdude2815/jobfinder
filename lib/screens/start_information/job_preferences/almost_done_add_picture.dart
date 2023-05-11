import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/common_button.dart';

class AlmostDoneAddPicture extends StatelessWidget {
  const AlmostDoneAddPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.kGradientAColor,
                AppColors.kGradientBColor,
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      AppAssets.backButtonSvg,
                      color: AppColors.kWhiteColor,
                    ),
                    Text(
                      'Save',
                      style: AppTextStyle.bodyNormal17
                          .copyWith(fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                Center(
                  child: Text(
                    'Almost Done',
                    style: AppTextStyle.bodyBold24.copyWith(
                        color: AppColors.kWhiteColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 26.sp,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                SizedBox(
                  height: 44.h,
                ),
                Container(
                  height: 447.h,
                  // width: 318.w,
                  decoration: BoxDecoration(
                    color: AppColors.kWhiteColor,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Column(
                    children: [
                      const Spacer(),
                      SvgPicture.asset(
                        AppAssets.dealIcon,
                        height: 137.h,
                        width: 137.w,
                      ),
                      SizedBox(
                        height: 54.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            AppAssets.addCameraIcon,
                            color: AppColors.kBlue3Color,
                            height: 24.h,
                            width: 24.w,
                          ),
                          SizedBox(
                            width: 20.h,
                          ),
                          Text(
                            'Add Picture',
                            style: AppTextStyle.bodyBold24.copyWith(
                                color: AppColors.kBlue3Color,
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.italic),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Center(
                        child: Text(
                          'Optional Picture Related To The Job',
                          style: AppTextStyle.bodyNormal17
                              .copyWith(fontSize: 18.sp),
                        ),
                      ),
                      SizedBox(
                        height: 70.h,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Row(
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
                            Get.toNamed(Routes.setAddressRoute);
                          },
                          text: 'Continue',
                          isItalicText: false,
                          isFilled: true,
                          hasIcon: false),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
