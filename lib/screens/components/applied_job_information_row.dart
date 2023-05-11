import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class AppliedJobInformationRow extends StatelessWidget {
  final String heading, value;
  const AppliedJobInformationRow({
    required this.heading,
    required this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.kGrayColor4, width: 1),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: AppColors.kGrayColor7,
              padding: EdgeInsets.only(top: 12.h, bottom: 12.h, left: 16.w),
              child: Text(
                heading,
                style: AppTextStyle.bodyNormal17
                    .copyWith(color: AppColors.kGrayColor2),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: AppColors.kWhiteColor,
              padding: EdgeInsets.only(top: 12.h, bottom: 12.h, left: 16.w),
              child: Text(
                value,
                style: AppTextStyle.bodyNormal17
                    .copyWith(color: AppColors.kBlackColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
