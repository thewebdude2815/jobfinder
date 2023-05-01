import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class AppliedJobsWidget extends StatelessWidget {
  final String jobTitle, companyName, location, status;
  final bool detailPage;
  const AppliedJobsWidget({
    required this.companyName,
    required this.jobTitle,
    required this.location,
    required this.detailPage,
    required this.status,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.kGrayColor4, width: 1),
        borderRadius: BorderRadius.circular(8.r),
        color: AppColors.kWhiteColor,
      ),
      child: Row(
        crossAxisAlignment:
            detailPage ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 35.r,
            backgroundColor: AppColors.kGreenColor,
            child: Center(
                child: Text(
              "A",
              style: AppTextStyle.bodyNormal22
                  .copyWith(color: AppColors.kWhiteColor),
            )),
          ),
          SizedBox(
            width: 16.w,
          ),
          Expanded(
            flex: 9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  jobTitle,
                  style: AppTextStyle.bodyNormal15
                      .copyWith(color: AppColors.kBlackColor),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Row(
                  children: [
                    Text(
                      companyName,
                      style: AppTextStyle.bodyNormal13
                          .copyWith(color: AppColors.kGrayColor2),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    CircleAvatar(
                      radius: 2.r,
                      backgroundColor: AppColors.kGrayColor,
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Expanded(
                      child: Text(
                        location,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.bodyNormal13
                            .copyWith(color: AppColors.kGrayColor2),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                detailPage
                    ? const SizedBox()
                    : Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 4.h),
                        decoration: BoxDecoration(
                          color: status.contains('Pending')
                              ? AppColors.kRedColor
                              : status.contains('reviewed')
                                  ? AppColors.kOrangeColor
                                  : AppColors.kPurpleColor,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Center(
                          child: Text(
                            status,
                            style: AppTextStyle.bodyNormal13
                                .copyWith(color: AppColors.kWhiteColor),
                          ),
                        ),
                      )
              ],
            ),
          ),
          const Spacer(),
          Icon(
            Icons.more_horiz_rounded,
            color: AppColors.kGrayColor,
            size: 16.w,
          )
        ],
      ),
    );
  }
}
