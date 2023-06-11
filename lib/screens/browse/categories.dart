import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/browse2HeadingRow.dart';
import 'package:jobfinder/screens/components/category_widget_border2.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      AppAssets.locationIcon,
                      color: AppColors.kRedColor,
                      height: 19.h,
                      width: 15.w,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your Location',
                          style: AppTextStyle.bodyNormal10.copyWith(
                              fontSize: 11.sp, color: AppColors.kGrayColor2),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          'San Francisco, California',
                          style: AppTextStyle.bodyNormal13.copyWith(
                              fontWeight: FontWeight.w600,
                              color: AppColors.kBlackColor,
                              fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Image.asset(
                      AppAssets.gTranslate,
                      height: 28.h,
                      width: 26.w,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.notificationRoute);
                      },
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            AppAssets.bellIcon,
                            color: AppColors.kGrayColor,
                            height: 19.h,
                            width: 19.w,
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            'Notifications',
                            style: AppTextStyle.bodyNormal10
                                .copyWith(color: AppColors.kGrayColor),
                          )
                        ],
                      ),
                    ),
                    SvgPicture.asset(
                      AppAssets.searchIcon,
                      color: AppColors.kBlackColor,
                      height: 19.h,
                      width: 19.w,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                height: 16.h,
              ),
              Browse2HeadingRow(
                title: 'Categories',
                onTap: () {},
                padding: 16.w,
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                height: 145.h,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: const [
                      CategoryWidgetBorder2(
                        icon: AppAssets.brushIcon,
                        title: 'Design & Art',
                        totalJobs: '793 jobs',
                      ),
                      CategoryWidgetBorder2(
                        icon: AppAssets.brushIcon,
                        title: 'Design & Art',
                        totalJobs: '793 jobs',
                      ),
                      CategoryWidgetBorder2(
                        icon: AppAssets.brushIcon,
                        title: 'Design & Art',
                        totalJobs: '793 jobs',
                      ),
                      CategoryWidgetBorder2(
                        icon: AppAssets.brushIcon,
                        title: 'Design & Art',
                        totalJobs: '793 jobs',
                      ),
                      CategoryWidgetBorder2(
                        icon: AppAssets.brushIcon,
                        title: 'Design & Art',
                        totalJobs: '793 jobs',
                      ),
                      CategoryWidgetBorder2(
                        icon: AppAssets.brushIcon,
                        title: 'Design & Art',
                        totalJobs: '793 jobs',
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
