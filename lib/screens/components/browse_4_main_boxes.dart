import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class Browse4MainBoxes extends StatelessWidget {
  final String count, title;
  final Color color;
  const Browse4MainBoxes({
    required this.color,
    required this.count,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 163.w,
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(8.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Icon(
              Icons.more_horiz,
              color: AppColors.kWhiteColor,
              size: 16.w,
            ),
          ),
          Text(
            count,
            style: AppTextStyle.bodyBold34.copyWith(
                color: AppColors.kWhiteColor, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 4.h,
          ),
          Text(
            title,
            style: AppTextStyle.bodyNormal17.copyWith(
                color: AppColors.kWhiteColor, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
