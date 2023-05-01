import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class SettingsTextRowWidget extends StatelessWidget {
  final String heading, subHeading;
  const SettingsTextRowWidget({
    required this.heading,
    required this.subHeading,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 12.h, bottom: 12.h, right: 16.w),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.kGrayColor4),
        ),
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            heading,
            style: AppTextStyle.bodyNormal17
                .copyWith(color: AppColors.kBlackColor),
          ),
          const Spacer(),
          Text(
            subHeading,
            style: AppTextStyle.bodyNormal17.copyWith(
                color: AppColors.kGrayColor10, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            width: 8.w,
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: AppColors.kGrayColor10,
            size: 13.h,
          )
        ],
      ),
    );
  }
}
