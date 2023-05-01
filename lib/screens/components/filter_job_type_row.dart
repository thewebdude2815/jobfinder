import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class FilterJobTypeRow extends StatelessWidget {
  final String text;
  final bool isSelected;
  const FilterJobTypeRow({
    required this.text,
    required this.isSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 12.h, top: 12.h),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.kGrayColor4),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: AppTextStyle.bodyNormal17.copyWith(
                fontWeight: FontWeight.w400, color: AppColors.kBlackColor),
          ),
          isSelected
              ? SvgPicture.asset(
                  AppAssets.checkIcon,
                  height: 30.h,
                  width: 30.w,
                )
              : CircleAvatar(
                  radius: 16.r,
                  backgroundColor: AppColors.kGrayColor3,
                  child: CircleAvatar(
                    radius: 15.r,
                    backgroundColor: AppColors.kWhiteColor,
                  ),
                )
        ],
      ),
    );
  }
}
