import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class DailyLifeFeedWithImageWidget extends StatelessWidget {
  const DailyLifeFeedWithImageWidget({
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 6.w),
                  decoration: BoxDecoration(
                      color: const Color(0xFFEBE8E8),
                      borderRadius: BorderRadius.circular(12.r)),
                  child: Text(
                    'Do it together',
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
                  height: 20.h,
                )
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.r),
                  child: Image.asset(
                    AppAssets.office,
                    height: 92.w,
                    width: 92.w,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.w, horizontal: 12.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: AppColors.kBlackColor),
                    child: Center(
                      child: Text(
                        '7',
                        style: AppTextStyle.bodyNormal13
                            .copyWith(color: AppColors.kWhiteColor),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
