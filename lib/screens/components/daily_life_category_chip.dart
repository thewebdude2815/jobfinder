import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class DailyLifeCategoryChip extends StatelessWidget {
  final String title;
  const DailyLifeCategoryChip({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12.w),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.r),
          color: AppColors.kWhiteColor,
          border: Border.all(color: AppColors.kBlackColor)),
      child: Center(
        child: Text(
          title,
          style:
              AppTextStyle.bodyNormal10.copyWith(color: AppColors.kBlackColor),
        ),
      ),
    );
  }
}
