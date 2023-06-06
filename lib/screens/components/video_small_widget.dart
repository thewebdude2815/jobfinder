import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';

class VideoSmallWidget extends StatelessWidget {
  const VideoSmallWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86.h,
      width: 138.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          image: const DecorationImage(
              image: AssetImage(
                AppAssets.office,
              ),
              fit: BoxFit.cover)),
      child: Container(
        height: 86.h,
        width: 138.w,
        decoration: BoxDecoration(
          color: AppColors.kWhiteColor.withOpacity(0.6),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Center(
          child: CircleAvatar(
            radius: 17.r,
            child: CircleAvatar(
                radius: 16.r,
                backgroundColor: AppColors.kBlackColor.withOpacity(0.29),
                child: Icon(
                  Icons.play_arrow,
                  color: AppColors.kWhiteColor,
                  size: 16.w,
                )),
          ),
        ),
      ),
    );
  }
}
