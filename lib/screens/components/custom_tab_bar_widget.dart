import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class CustomTabBarWidget extends StatelessWidget {
  final String text;
  final void Function() onTap;
  final String selectedValue;
  final bool isSearchPage;
  const CustomTabBarWidget({
    required this.text,
    required this.onTap,
    required this.selectedValue,
    required this.isSearchPage,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: isSearchPage ? 10.h : 0.h),
        decoration: BoxDecoration(
            border: Border(
                bottom: selectedValue == text
                    ? BorderSide(
                        color: isSearchPage
                            ? AppColors.kMainColor
                            : Colors.transparent)
                    : BorderSide.none)),
        child: Text(
          text,
          style: AppTextStyle.bodyNormal15.copyWith(
            fontWeight: FontWeight.w500,
            color: selectedValue == text
                ? isSearchPage
                    ? AppColors.kBlackColor
                    : AppColors.kWhiteColor
                : isSearchPage
                    ? AppColors.kGrayColor10
                    : AppColors.kWhiteColor.withOpacity(0.4),
          ),
        ),
      ),
    );
  }
}
