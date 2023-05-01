import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class CustomStepper extends StatelessWidget {
  final int index;
  final List completedIndexes;
  const CustomStepper({
    required this.index,
    required this.completedIndexes,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        CircleAvatar(
          radius: 30.r,
          backgroundColor: AppColors.kMainColor,
          child: CircleAvatar(
            radius: 28.r,
            backgroundColor: index == 1 || completedIndexes.contains(1)
                ? AppColors.kMainColor
                : AppColors.kWhiteColor,
            child: Text(
              '1',
              style: AppTextStyle.bodyNormal15.copyWith(
                  color: index == 1 || completedIndexes.contains(1)
                      ? AppColors.kWhiteColor
                      : AppColors.kMainColor),
            ),
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 2.h,
            color: AppColors.kMainColor,
          ),
        ),
        CircleAvatar(
          radius: 30.r,
          backgroundColor: AppColors.kMainColor,
          child: CircleAvatar(
            radius: 28.r,
            backgroundColor: index == 2 || completedIndexes.contains(2)
                ? AppColors.kMainColor
                : AppColors.kWhiteColor,
            child: Text(
              '2',
              style: AppTextStyle.bodyNormal15.copyWith(
                  color: index == 2 || completedIndexes.contains(2)
                      ? AppColors.kWhiteColor
                      : AppColors.kMainColor),
            ),
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 2.h,
            color: AppColors.kMainColor,
          ),
        ),
        CircleAvatar(
          radius: 30.r,
          backgroundColor: AppColors.kMainColor,
          child: CircleAvatar(
            radius: 28.r,
            backgroundColor: index == 3 || completedIndexes.contains(3)
                ? AppColors.kMainColor
                : AppColors.kWhiteColor,
            child: Text(
              '3',
              style: AppTextStyle.bodyNormal15.copyWith(
                  color: index == 3 || completedIndexes.contains(3)
                      ? AppColors.kWhiteColor
                      : AppColors.kMainColor),
            ),
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 2.h,
            color: AppColors.kMainColor,
          ),
        ),
        CircleAvatar(
          radius: 30.r,
          backgroundColor: AppColors.kMainColor,
          child: CircleAvatar(
            radius: 28.r,
            backgroundColor: index == 4 || completedIndexes.contains(4)
                ? AppColors.kMainColor
                : AppColors.kWhiteColor,
            child: Text(
              '4',
              style: AppTextStyle.bodyNormal15.copyWith(
                  color: index == 4 || completedIndexes.contains(4)
                      ? AppColors.kWhiteColor
                      : AppColors.kMainColor),
            ),
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 2.h,
            color: AppColors.kMainColor,
          ),
        ),
        CircleAvatar(
          radius: 30.r,
          backgroundColor: AppColors.kMainColor,
          child: CircleAvatar(
            radius: 28.r,
            backgroundColor: index == 5 || completedIndexes.contains(5)
                ? AppColors.kMainColor
                : AppColors.kWhiteColor,
            child: SvgPicture.asset(AppAssets.flagIcon,
                color:
                    index == 5 ? AppColors.kWhiteColor : AppColors.kMainColor),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
