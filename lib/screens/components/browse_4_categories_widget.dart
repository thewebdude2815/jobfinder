import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class Browse4CategoriesWidget extends StatelessWidget {
  final String icon, text;
  const Browse4CategoriesWidget({
    required this.icon,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 132.w,
      margin: EdgeInsets.only(right: 16.w),
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: BoxDecoration(
          color: AppColors.kGrayColor4,
          borderRadius: BorderRadius.circular(8.r)),
      child: Row(
        children: [
          SvgPicture.asset(icon),
          SizedBox(
            width: 8.w,
          ),
          Text(
            text,
            style: AppTextStyle.bodyNormal13.copyWith(
                color: AppColors.kGrayColor, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
