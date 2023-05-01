import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class FilterCategoryWidget extends StatelessWidget {
  final String text;
  final bool isSelected;
  const FilterCategoryWidget({
    required this.text,
    required this.isSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      decoration: BoxDecoration(
          color: AppColors.kWhiteColor,
          border: Border.all(
              color: isSelected ? AppColors.kMainColor : AppColors.kGrayColor3),
          borderRadius: BorderRadius.circular(8.r)),
      child: Center(
        child: Text(
          text,
          style: AppTextStyle.bodyNormal15.copyWith(
              color: isSelected ? AppColors.kMainColor : AppColors.kGrayColor2,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
