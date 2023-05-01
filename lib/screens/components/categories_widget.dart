import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class CategoriesWidget extends StatelessWidget {
  final String icon, field, positions;

  const CategoriesWidget({
    required this.field,
    required this.icon,
    required this.positions,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: BoxDecoration(
          color: AppColors.kWhiteColor,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: AppColors.kGrayColor4)),
      child: Row(
        children: [
          CircleAvatar(
            radius: 35.r,
            backgroundColor: AppColors.kMainColor,
            child: Center(
              child: SvgPicture.asset(
                icon,
                height: 24.h,
                width: 24.h,
              ),
            ),
          ),
          SizedBox(
            width: 16.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                field,
                style: AppTextStyle.bodyNormal15.copyWith(
                    color: AppColors.kBlackColor, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                positions,
                style: AppTextStyle.bodyNormal13.copyWith(
                    color: AppColors.kGrayColor10, fontWeight: FontWeight.w400),
              ),
            ],
          )
        ],
      ),
    );
  }
}
