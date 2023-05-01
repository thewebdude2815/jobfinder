import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class BrowseJobWidget extends StatelessWidget {
  final String jobTitle, companyName, location, jobType, pay;
  final bool showSaved;
  BrowseJobWidget({
    required this.companyName,
    required this.jobTitle,
    required this.location,
    required this.jobType,
    required this.pay,
    required this.showSaved,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 16 .h),
      margin: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 30.r,
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
            child: Container(
              padding: EdgeInsets.only(bottom: 8.h),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: AppColors.kGrayColor4, width: 1),
                ),
              ),
              child: Row(
                children: [
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
                        Row(
                          children: [
                            Text(
                              jobType,
                              style: AppTextStyle.bodyNormal13
                                  .copyWith(color: AppColors.kGrayColor2),
                            ),
                            SizedBox(
                              width: 12.w,
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
                                pay,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: AppTextStyle.bodyNormal13
                                    .copyWith(color: AppColors.kBlackColor),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  !showSaved
                      ? const SizedBox()
                      : Icon(
                          Icons.bookmark,
                          color: AppColors.kRedColor,
                          size: 20.w,
                        )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
