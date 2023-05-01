import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class Browse2HeadingRow extends StatelessWidget {
  final String title;
  double? padding;
  Browse2HeadingRow({
    required this.title,
    this.padding,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding ?? 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            title,
            style: AppTextStyle.bodySemiBold17.copyWith(
                color: AppColors.kBlackColor, fontWeight: FontWeight.w700),
          ),
          Row(
            children: [
              Text(
                'See all',
                style: AppTextStyle.bodyNormal10.copyWith(
                    fontSize: 11.sp,
                    color: AppColors.kGrayColor10,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(
                width: 2.w,
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColors.kGrayColor10,
                size: 13.h,
              )
            ],
          )
        ],
      ),
    );
  }
}
