import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class AccountHeadingWithEditButton extends StatelessWidget {
  final String heading;
  const AccountHeadingWithEditButton({
    required this.heading,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          heading,
          style: AppTextStyle.bodyNormal17.copyWith(
              fontWeight: FontWeight.w700, color: AppColors.kBlackColor),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 2.h),
          decoration: BoxDecoration(
            color: AppColors.kWhiteColor,
            border: Border.all(color: AppColors.kGrayColor3),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                AppAssets.editIcon,
                height: 10.h,
                width: 10.w,
                color: AppColors.kGrayColor,
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                'Edit',
                style: AppTextStyle.bodyNormal13
                    .copyWith(color: AppColors.kGrayColor2),
              ),
            ],
          ),
        )
      ],
    );
  }
}
