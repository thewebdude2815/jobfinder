import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/applied_jobs_widget.dart';
import 'package:jobfinder/screens/components/saved_jobs_widget.dart';

class Jobs extends StatefulWidget {
  const Jobs({super.key});

  @override
  State<Jobs> createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
  String sectionOpened = 'applied';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kGrayColor7,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: AppColors.kWhiteColor,
              child: Column(
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          AppAssets.filterIcon,
                          height: 20.h,
                          width: 16.w,
                          color: AppColors.kBlackColor,
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
                        SizedBox(
                          width: 8.w,
                        ),
                        SvgPicture.asset(
                          AppAssets.searchIcon,
                          height: 19.h,
                          width: 19.w,
                          color: AppColors.kBlackColor,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Text(
                      'Jobs',
                      style: AppTextStyle.bodyBold34
                          .copyWith(color: AppColors.kBlackColor),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  SizedBox(
                    height: 44.h,
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              if (sectionOpened == 'applied') {
                              } else {
                                setState(() {
                                  sectionOpened = 'applied';
                                });
                              }
                            },
                            child: Container(
                              height: 44.h,
                              decoration: BoxDecoration(
                                border: sectionOpened == 'applied'
                                    ? const Border(
                                        bottom: BorderSide(
                                            color: AppColors.kMainColor,
                                            width: 2),
                                      )
                                    : const Border(),
                              ),
                              child: Center(
                                child: Text(
                                  'Applied',
                                  style: AppTextStyle.bodyNormal15.copyWith(
                                      color: sectionOpened == 'applied'
                                          ? AppColors.kBlackColor
                                          : AppColors.kGrayColor),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              if (sectionOpened == 'saved') {
                              } else {
                                setState(() {
                                  sectionOpened = 'saved';
                                });
                              }
                            },
                            child: Container(
                              height: 44.h,
                              decoration: BoxDecoration(
                                border: sectionOpened == 'saved'
                                    ? const Border(
                                        bottom: BorderSide(
                                            color: AppColors.kMainColor,
                                            width: 2),
                                      )
                                    : const Border(),
                              ),
                              child: Center(
                                child: Text(
                                  'Saved',
                                  style: AppTextStyle.bodyNormal15.copyWith(
                                      color: sectionOpened == 'saved'
                                          ? AppColors.kBlackColor
                                          : AppColors.kGrayColor),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            sectionOpened == 'applied'
                ? ListView(
                    shrinkWrap: true,
                    children: [
                      SizedBox(
                        height: 8.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.appliedJobDetailRoute);
                        },
                        child: const AppliedJobsWidget(
                          jobTitle: 'UX Designer',
                          companyName: 'Best Studio',
                          location: '349 Irvine, CA',
                          status: 'Interview on 09/29/24 at 11:15',
                          detailPage: false,
                        ),
                      ),
                      const AppliedJobsWidget(
                        jobTitle: 'UX Designer',
                        companyName: 'Creatio Studio',
                        location: 'Los Angeles, CA',
                        status: 'Portfolio reviewed',
                        detailPage: false,
                      ),
                      const AppliedJobsWidget(
                        jobTitle: 'Product Designer',
                        companyName: 'Complex Studio',
                        location: 'San Diego, CA',
                        detailPage: false,
                        status: 'Portfolio reviewed',
                      ),
                      const AppliedJobsWidget(
                        jobTitle: '3D Animator',
                        companyName: 'Limited Sounds',
                        location: '349 Irvine, CA',
                        detailPage: false,
                        status: 'Pending',
                      ),
                    ],
                  )
                : ListView(
                    shrinkWrap: true,
                    children: [
                      SizedBox(
                        height: 8.h,
                      ),
                      const SavedJobsWidge(
                        jobTitle: 'UX Designer',
                        companyName: 'Best Studio',
                        location: '349 Irvine, CA',
                        status: 'Interview on 09/29/24 at 11:15',
                        jobType: 'Fulltime',
                        pay: '\$5K/month',
                      ),
                      const SavedJobsWidge(
                        jobTitle: 'UX Designer',
                        companyName: 'Creatio Studio',
                        location: 'Los Angeles, CA',
                        status: 'Portfolio reviewed',
                        jobType: 'Fulltime',
                        pay: '\$5K/month',
                      ),
                      const SavedJobsWidge(
                        jobTitle: 'Product Designer',
                        companyName: 'Complex Studio',
                        location: 'San Diego, CA',
                        status: 'Portfolio reviewed',
                        jobType: 'Fulltime',
                        pay: '\$5K/month',
                      ),
                      const SavedJobsWidge(
                        jobTitle: '3D Animator',
                        companyName: 'Limited Sounds',
                        location: '349 Irvine, CA',
                        status: 'Pending',
                        jobType: 'Fulltime',
                        pay: '\$5K/month',
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
  }
}
