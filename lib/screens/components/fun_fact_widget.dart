import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class FunFactWidget extends StatelessWidget {
  final String percentage;
  final String text;

  const FunFactWidget({
    required this.percentage,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 40.r,
          backgroundColor: AppColors.kMainColor,
          child: CircleAvatar(
            radius: 38.r,
            backgroundColor: AppColors.kWhiteColor,
            child: Text(
              percentage,
              style: AppTextStyle.bodyNormal13.copyWith(
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  color: AppColors.kGrayColor),
            ),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style:
              AppTextStyle.bodyNormal13.copyWith(color: AppColors.kBlackColor),
        )
      ],
    );
  }
}
