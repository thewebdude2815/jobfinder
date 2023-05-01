import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class FeaturedJobsWidget extends StatelessWidget {
  final String companyName, jobTitle, officeLocation, pay, jobType, jobLocation;

  const FeaturedJobsWidget({
    required this.companyName,
    required this.jobLocation,
    required this.jobTitle,
    required this.jobType,
    required this.officeLocation,
    required this.pay,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 256.w,
      margin: EdgeInsets.only(right: 16.w),
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: AppColors.kGrayColor4,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Icon(
              Icons.bookmark,
              color: AppColors.kRedColor,
              size: 20.h,
            ),
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 20.r,
                backgroundColor: AppColors.kBlueColor,
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                companyName,
                style: AppTextStyle.bodyNormal13.copyWith(
                    color: AppColors.kBlackColor, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 14.h,
          ),
          Text(
            jobTitle,
            style: AppTextStyle.bodySemiBold17.copyWith(
                color: AppColors.kBlackColor, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            officeLocation,
            style: AppTextStyle.bodyNormal13.copyWith(
              color: AppColors.kGrayColor2,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Row(
            children: [
              Text(
                '\$$pay',
                style: AppTextStyle.bodyNormal15.copyWith(
                    color: AppColors.kBlackColor, fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                decoration: BoxDecoration(
                  color: AppColors.kGrayColor5,
                  borderRadius: BorderRadius.circular(9.r),
                ),
                child: Center(
                    child: Text(
                  jobType,
                  style: AppTextStyle.bodyNormal13.copyWith(
                      color: AppColors.kGrayColor2,
                      fontWeight: FontWeight.w500),
                )),
              ),
              SizedBox(
                width: 8.w,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                decoration: BoxDecoration(
                  color: AppColors.kGrayColor5,
                  borderRadius: BorderRadius.circular(9.r),
                ),
                child: Center(
                    child: Text(
                  jobLocation,
                  style: AppTextStyle.bodyNormal13.copyWith(
                      color: AppColors.kGrayColor2,
                      fontWeight: FontWeight.w500),
                )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
