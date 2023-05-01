import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class RecentPostsBanner2 extends StatelessWidget {
  final String jobTitle, companyName, location, jobType, pay, time;
  const RecentPostsBanner2({
    required this.companyName,
    required this.jobTitle,
    required this.location,
    required this.jobType,
    required this.pay,
    required this.time,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.kGrayColor4, width: 1),
        borderRadius: BorderRadius.circular(8.r),
        color: AppColors.kGrayColor4,
      ),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25.r,
                backgroundColor: AppColors.kGreenColor,
                child: Center(
                    child: Text(
                  "A",
                  style: AppTextStyle.bodyNormal22
                      .copyWith(color: AppColors.kWhiteColor),
                )),
              ),
              SizedBox(
                width: 16.w,
              ),
              Expanded(
                flex: 9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      jobTitle,
                      style: AppTextStyle.bodyNormal15.copyWith(
                          color: AppColors.kBlackColor,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      children: [
                        Text(
                          companyName,
                          style: AppTextStyle.bodyNormal13
                              .copyWith(color: AppColors.kGrayColor2),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        CircleAvatar(
                          radius: 2.r,
                          backgroundColor: AppColors.kGrayColor,
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Expanded(
                          child: Text(
                            location,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyle.bodyNormal13
                                .copyWith(color: AppColors.kGrayColor2),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Icon(
                Icons.bookmark_border_rounded,
                color: AppColors.kGrayColor10,
                size: 20.h,
              ),
              SizedBox(
                width: 16.w,
              ),
              Icon(
                Icons.more_horiz,
                color: AppColors.kGrayColor13,
                size: 16.w,
              ),
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          Row(
            children: [
              Text(
                pay,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.bodyNormal13
                    .copyWith(color: AppColors.kBlackColor),
              ),
              SizedBox(
                width: 18.w,
              ),
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
              const Spacer(),
              Text(
                time,
                style: AppTextStyle.bodyNormal13
                    .copyWith(color: AppColors.kGrayColor2),
              )
            ],
          )
        ],
      ),
    );
  }
}
