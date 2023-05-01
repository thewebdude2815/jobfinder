import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/browse2HeadingRow.dart';
import 'package:jobfinder/screens/components/category_widget_border2.dart';
import 'package:jobfinder/screens/components/featured_job_banner.dart';
import 'package:jobfinder/screens/components/featured_job_widget.dart';
import 'package:jobfinder/screens/components/large_job_image_banner.dart';
import 'package:jobfinder/screens/components/recent_posts_banner2.dart';
import 'package:jobfinder/screens/components/saved_jobs_widget.dart';

class Browse2 extends StatelessWidget {
  const Browse2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 12.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                      Column(
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
                GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.companyDetailsRoute);
                    },
                    child: const LargeJobImageBanner()),
                SizedBox(
                  height: 28.h,
                ),
                Browse2HeadingRow(
                  title: 'Categories',
                ),
                SizedBox(
                  height: 12.h,
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
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 28.h,
                ),
                Browse2HeadingRow(
                  title: 'Featured Jobs',
                ),
                SizedBox(
                  height: 12.h,
                ),
                // const FeaturedJobBanner(),
                Container(
                  padding: EdgeInsets.only(left: 16.w),
                  height: 195.h,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const FeaturedJobsWidget(
                            companyName: 'Vacant Land',
                            jobLocation: 'Remote',
                            jobTitle: 'Product Designer',
                            jobType: 'Fulltime',
                            officeLocation: '7363 California, USA',
                            pay: '90K/hr');
                      }),
                ),
                SizedBox(
                  height: 28.h,
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.browse3Route);
                  },
                  child: Browse2HeadingRow(
                    title: 'Recent Posts',
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                const RecentPostsBanner2(
                    companyName: 'Best Studio',
                    jobTitle: '3D Animator',
                    location: '349 Irvine, CA',
                    jobType: 'Fulltime',
                    pay: '\$90K/hr',
                    time: '2 hours ago')
                // ListView.builder(
                //     shrinkWrap: true,
                //     itemCount: 5,
                //     itemBuilder: (context, index) {
                //       return const SavedJobsWidge(
                //           companyName: 'Limited Sounds',
                //           jobTitle: 'Product Designer',
                //           location: 'Product Designer',
                //           status: "",
                //           jobType: 'Fulltime',
                //           pay: '\$8K/mo');
                //     })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
