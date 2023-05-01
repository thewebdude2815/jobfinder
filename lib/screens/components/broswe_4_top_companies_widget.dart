import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class Broswe4TopCompaniesWidget extends StatelessWidget {
  final String company, jobs, location;
  const Broswe4TopCompaniesWidget({
    required this.company,
    required this.jobs,
    required this.location,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16.w),
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: AppColors.kGrayColor4,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 20.r,
            backgroundColor: AppColors.kBlueColor,
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
            height: 4.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppAssets.iconListIcon,
                color: AppColors.kGrayColor,
                height: 12.h,
                width: 10.w,
              ),
              SizedBox(
                width: 4.w,
              ),
              Text(
                jobs,
                style: AppTextStyle.bodyNormal13
                    .copyWith(color: AppColors.kGrayColor),
              ),
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            location,
            style: AppTextStyle.bodyNormal13
                .copyWith(color: AppColors.kGrayColor2),
          )
        ],
      ),
    );
  }
}
