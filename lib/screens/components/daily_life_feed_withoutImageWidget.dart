import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class DailyLifeFeedWithoutImageWidget extends StatelessWidget {
  const DailyLifeFeedWithoutImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.kGrayColor3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 6.w),
            decoration: BoxDecoration(
                color: const Color(0xFFEBE8E8),
                borderRadius: BorderRadius.circular(12.r)),
            child: Text(
              'Restaurant',
              style: AppTextStyle.bodyNormal10
                  .copyWith(color: AppColors.kBlackColor),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            'lets go to fancy restaurant together and meeing at the Lotte mall in Seoul',
            style: AppTextStyle.bodyNormal13
                .copyWith(color: AppColors.kBlackColor),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            "bonodong  1 hour ago",
            style: AppTextStyle.bodyNormal13
                .copyWith(color: AppColors.kBlackColor),
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset(
                AppAssets.chat2Icon,
                height: 20.h,
              ),
              SizedBox(
                width: 8.w,
              ),
              Text('2')
            ],
          ),
          SizedBox(
            height: 20.h,
          )
        ],
      ),
    );
  }
}
