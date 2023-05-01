import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class JobDetails1InfoWidget extends StatelessWidget {
  final String icon, heading, subHeading;
  bool? topBorder, bottomBorder, leftBorder, rightBorder;
  JobDetails1InfoWidget({
    this.bottomBorder,
    required this.heading,
    required this.icon,
    this.leftBorder,
    this.rightBorder,
    required this.subHeading,
    this.topBorder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
        decoration: BoxDecoration(
          border: Border(
            bottom: bottomBorder != null
                ? const BorderSide(color: AppColors.kGrayColor4)
                : BorderSide.none,
            top: topBorder != null
                ? const BorderSide(color: AppColors.kGrayColor4)
                : BorderSide.none,
            left: leftBorder != null
                ? const BorderSide(color: AppColors.kGrayColor4)
                : BorderSide.none,
            right: rightBorder != null
                ? const BorderSide(color: AppColors.kGrayColor4)
                : BorderSide.none,
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              color: AppColors.kMainColor,
              height: 24.h,
              width: 24.w,
            ),
            SizedBox(
              width: 16.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: AppTextStyle.bodyNormal13
                      .copyWith(color: AppColors.kGrayColor2),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  subHeading,
                  style: AppTextStyle.bodyNormal15.copyWith(
                      color: AppColors.kBlackColor,
                      fontWeight: FontWeight.w500),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
