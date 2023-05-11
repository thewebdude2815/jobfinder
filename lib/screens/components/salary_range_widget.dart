import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class SalaryRangeWidget extends StatelessWidget {
  final String icon, title;
  const SalaryRangeWidget({
    required this.icon,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            height: 84.h,
            width: 108.w,
            decoration: BoxDecoration(
                color: AppColors.kMainColor,
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: AppColors.kGrayColor16)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  icon,
                  height: 25.98.h,
                  width: 26.78.w,
                  color: AppColors.kWhiteColor,
                ),
                Text(
                  title,
                  style: AppTextStyle.bodyNormal13.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                      color: AppColors.kWhiteColor),
                ),
              ],
            )),
      ],
    );
  }
}
