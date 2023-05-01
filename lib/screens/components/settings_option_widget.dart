import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class SettingsOptionWidget extends StatelessWidget {
  final String icon, text;
  const SettingsOptionWidget({
    required this.icon,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.kMainColor,
            borderRadius: BorderRadius.circular(6.r),
          ),
          height: 29.h,
          width: 29.w,
          child: Center(
            child: SvgPicture.asset(
              icon,
              color: AppColors.kWhiteColor,
              height: 16.h,
              width: 11.w,
            ),
          ),
        ),
        SizedBox(
          width: 16.w,
        ),
        Container(
          width: 314.w,
          padding: EdgeInsets.only(
            right: 16.w,
            bottom: 10.h,
          ),
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
                style: AppTextStyle.bodyNormal17
                    .copyWith(color: AppColors.kBlackColor),
              ),
              // const Spacer(),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColors.kGrayColor5,
                size: 13.h,
              ),
            ],
          ),
        )
      ],
    );
  }
}
