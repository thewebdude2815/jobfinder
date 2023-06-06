import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class Browse3PopularCompanies extends StatelessWidget {
  final String title, jobs;
  const Browse3PopularCompanies({
    required this.jobs,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16.w),
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: AppColors.kWhiteColor,
          border: Border.all(color: AppColors.kGrayColor4)),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20.r,
            backgroundColor: AppColors.kBlueColor,
          ),
          SizedBox(
            width: 16.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyle.bodyNormal15.copyWith(
                    color: AppColors.kBlackColor, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                jobs,
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
