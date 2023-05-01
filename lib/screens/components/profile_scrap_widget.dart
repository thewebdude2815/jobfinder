import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class ProfileScrapWidget extends StatelessWidget {
  final String image, text;
  const ProfileScrapWidget({
    required this.image,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(right: 8.w),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: AppColors.kBlackColor.withOpacity(0.09),
            blurRadius: 10,
            spreadRadius: 2)
      ]),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 90.h,
                width: 106.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.r),
                    topRight: Radius.circular(8.r),
                  ),
                ),
              ),
              Positioned(
                bottom: 4.h,
                right: 0,
                child: Container(
                  padding: EdgeInsets.only(
                      left: 2.w, top: 3.h, bottom: 3.h, right: 12.w),
                  decoration: BoxDecoration(
                    color: AppColors.kGrayColor15.withOpacity(0.5),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.r),
                      bottomLeft: Radius.circular(8.r),
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 6.r,
                    backgroundColor: AppColors.kWhiteColor,
                  ),
                ),
              )
            ],
          ),
          Container(
            // height: 60.h,
            width: 106.w,
            padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
            decoration: BoxDecoration(
              color: AppColors.kWhiteColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8.r),
                bottomRight: Radius.circular(8.r),
              ),
            ),
            child: Center(
              child: Text(
                text,
                style: AppTextStyle.bodyNormal15.copyWith(
                    color: AppColors.kBlackColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}
