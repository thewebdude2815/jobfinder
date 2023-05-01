import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class RelatedJobs1Widget extends StatelessWidget {
  final String company;
  final String title;
  final String location;
  final bool isFilled;
  const RelatedJobs1Widget({
    required this.company,
    required this.location,
    required this.title,
    required this.isFilled,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155.w,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      margin: EdgeInsets.only(right: 16.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: isFilled ? AppColors.kGrayColor4 : AppColors.kWhiteColor,
          border: Border.all(
              color: isFilled ? AppColors.kGrayColor4 : AppColors.kGrayColor3)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 18.r,
                backgroundColor: AppColors.kBlueColor,
              ),
              Icon(
                Icons.bookmark_border_outlined,
                color: AppColors.kGrayColor10,
                size: 20.h,
              )
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            company,
            style: AppTextStyle.bodyNormal13
                .copyWith(color: AppColors.kBlackColor),
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
            title,
            style: AppTextStyle.bodyNormal15.copyWith(
                color: AppColors.kBlackColor, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            location,
            style: AppTextStyle.bodyNormal13.copyWith(
                color: AppColors.kGrayColor2, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
