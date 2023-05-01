import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class CategoryWidgetBorder2 extends StatelessWidget {
  final String icon, title, totalJobs;
  const CategoryWidgetBorder2({
    required this.icon,
    required this.title,
    required this.totalJobs,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 95.h,
          width: 95.w,
          margin: EdgeInsets.only(right: 16.w),
          decoration: BoxDecoration(
            color: AppColors.kMainColor,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Center(
            child: SvgPicture.asset(
              icon,
              height: 40.h,
              width: 39.w,
              color: AppColors.kWhiteColor,
            ),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          title,
          style: AppTextStyle.bodyNormal13.copyWith(
              color: AppColors.kBlackColor, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          totalJobs,
          style: AppTextStyle.bodyNormal13.copyWith(
              color: AppColors.kGrayColor10, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
