import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/screens/components/broswe_4_top_companies_widget.dart';
import 'package:jobfinder/screens/components/browse2HeadingRow.dart';
import 'package:jobfinder/screens/components/browse_4_categories_widget.dart';
import 'package:jobfinder/screens/components/browse_4_main_boxes.dart';
import 'package:jobfinder/screens/components/common_textfield.dart';
import 'package:jobfinder/screens/components/featured_job_widget.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Browse4 extends StatelessWidget {
  const Browse4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.only(top: 12.h),
        child: Column(
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
                  Text(
                    'SEOUL, KOREA',
                    style: AppTextStyle.bodyNormal17
                        .copyWith(color: AppColors.kBlackColor),
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      SvgPicture.asset(
                        AppAssets.bellIcon,
                        color: AppColors.kGrayColor5,
                        height: 24.h,
                        width: 20.w,
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
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            CommonTextFieldNew(
              onSaved: (e) {},
              validator: (e) {},
              filled: false,
              contentPadding: EdgeInsets.symmetric(vertical: 8.h),
              disableBorder: true,
              prefixSvg: AppAssets.searchIcon,
              prefixHeight: 14.h,
              prefixWidth: 14.w,
              hintText: 'What are you looking for?',
              hintStyle: AppTextStyle.bodyNormal15
                  .copyWith(color: AppColors.kGrayColor10),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  const Browse4MainBoxes(
                    color: AppColors.kMainColor,
                    title: 'Jobs Applied',
                    count: '17',
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  const Browse4MainBoxes(
                    color: AppColors.kBlue2Color,
                    title: 'Job List Saved',
                    count: '17',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 28.h,
            ),
            Browse2HeadingRow(title: 'Categories'),
            SizedBox(
              height: 12.h,
            ),
            Container(
              height: 50.h,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: const [
                  Browse4CategoriesWidget(
                    icon: AppAssets.computerIcon,
                    text: 'fixer',
                  ),
                  Browse4CategoriesWidget(
                    icon: AppAssets.computerIcon,
                    text: 'fixer',
                  ),
                  Browse4CategoriesWidget(
                    icon: AppAssets.computerIcon,
                    text: 'fixer',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              decoration: BoxDecoration(
                  color: AppColors.kGrayColor4,
                  borderRadius: BorderRadius.circular(8.r)),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'contruction',
                          style: AppTextStyle.bodyNormal17.copyWith(
                              fontWeight: FontWeight.w500,
                              color: AppColors.kBlackColor),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Row(
                          children: [
                            Text(
                              'Creatio Studio',
                              style: AppTextStyle.bodyNormal13
                                  .copyWith(color: AppColors.kGrayColor2),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            CircleAvatar(
                              radius: 2.r,
                              backgroundColor: AppColors.kGrayColor2,
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              'Fulltime',
                              style: AppTextStyle.bodyNormal13
                                  .copyWith(color: AppColors.kGrayColor2),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        LinearPercentIndicator(
                          padding: EdgeInsets.zero,
                          // width: 215.w,
                          animation: true,
                          lineHeight: 4.h,
                          animationDuration: 5000,
                          percent: 0.8,
                          barRadius: Radius.circular(18.r),
                          progressColor: AppColors.kMainColor,
                          backgroundColor: AppColors.kGrayColor5,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '8/24',
                              style: AppTextStyle.bodyNormal13
                                  .copyWith(color: AppColors.kGrayColor),
                            ),
                            Text(
                              'Application Shortlisted',
                              style: AppTextStyle.bodyNormal13
                                  .copyWith(color: AppColors.kGrayColor),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: Align(
                    alignment: Alignment.centerRight,
                    child: CircleAvatar(
                      radius: 30.r,
                      backgroundColor: AppColors.kBlackColor,
                    ),
                  ))
                ],
              ),
            ),
            SizedBox(
              height: 28.h,
            ),
            Browse2HeadingRow(title: 'Top Companies'),
            SizedBox(
              height: 12.h,
            ),
            Container(
              padding: EdgeInsets.only(left: 16.w),
              height: 150.h,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return const Broswe4TopCompaniesWidget(
                      company: 'Double Zero',
                      jobs: '27 jobs',
                      location: 'SEOUL, KOREA',
                    );
                  }),
            ),
            SizedBox(
              height: 28.h,
            ),
            Browse2HeadingRow(title: 'Featured Jobs'),
            SizedBox(
              height: 12.h,
            ),
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
              height: 16.h,
            ),
          ],
        ),
      )),
    );
  }
}
