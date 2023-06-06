import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class CommentBoxPosts extends StatelessWidget {
  const CommentBoxPosts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h, right: 16.w, left: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 15.r,
                backgroundColor: AppColors.kBlueColor,
              ),
              SizedBox(
                width: 8.w,
              ),
              SizedBox(
                width: 260.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Dadok Kim',
                              style: AppTextStyle.bodyNormal13.copyWith(
                                  color: AppColors.kBlackColor,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              '2 minutes ago',
                              style: AppTextStyle.bodyNormal10.copyWith(
                                  color: AppColors.kGrayColor15,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: AppColors.kBlackColor,
                          size: 15.5.w,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      'Comment content Comment content',
                      style: AppTextStyle.bodyNormal13.copyWith(
                          color: const Color(0xFF434343), fontSize: 12.sp),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'like13',
                          style: AppTextStyle.bodyNormal13.copyWith(
                              color: AppColors.kGrayColor15, fontSize: 12.sp),
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        Text(
                          'Reply',
                          style: AppTextStyle.bodyNormal13.copyWith(
                              color: AppColors.kGrayColor15, fontSize: 12.sp),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
