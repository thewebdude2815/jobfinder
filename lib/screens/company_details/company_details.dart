import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/screens/components/applied_job_information_row.dart';
import 'package:jobfinder/screens/components/browse2HeadingRow.dart';
import 'package:jobfinder/screens/components/common_button.dart';
import 'package:jobfinder/screens/components/featured_job_widget.dart';
import 'package:jobfinder/screens/components/social_media_widget.dart';
import 'package:jobfinder/screens/components/video_small_widget.dart';
import 'package:jobfinder/screens/jobs/applied_jobs_details.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CompanyDetails extends StatelessWidget {
  const CompanyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // height: 232.h,
                width: 375.w,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppAssets.office), fit: BoxFit.cover),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: AppColors.kWhiteColor,
                            size: 21.w,
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.more_horiz,
                          color: AppColors.kWhiteColor,
                          size: 20.w,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 45.r,
                          backgroundColor: AppColors.kBlueColor,
                        ),
                        const Spacer(),
                        CommonButton(
                            width: 74.w,
                            onTap: () {},
                            text: 'Follow',
                            textStyle: AppTextStyle.bodyNormal13
                                .copyWith(color: AppColors.kWhiteColor),
                            isItalicText: false,
                            isFilled: true,
                            hasIcon: false)
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'Busan recruiting',
                      style: AppTextStyle.bodyBold24
                          .copyWith(color: AppColors.kWhiteColor),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppAssets.locationIcon,
                          color: AppColors.kWhiteColor,
                          height: 12.h,
                          width: 10.w,
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          'Busan, Korea',
                          style: AppTextStyle.bodyNormal15
                              .copyWith(color: AppColors.kWhiteColor),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: AppColors.kOrangeColor,
                          size: 14.h,
                        ),
                        SizedBox(
                          width: 1.4.w,
                        ),
                        Icon(
                          Icons.star,
                          color: AppColors.kOrangeColor,
                          size: 14.h,
                        ),
                        SizedBox(
                          width: 1.4.w,
                        ),
                        Icon(
                          Icons.star,
                          color: AppColors.kOrangeColor,
                          size: 14.h,
                        ),
                        SizedBox(
                          width: 1.4.w,
                        ),
                        Icon(
                          Icons.star,
                          color: AppColors.kOrangeColor,
                          size: 14.h,
                        ),
                        SizedBox(
                          width: 1.4.w,
                        ),
                        Icon(
                          Icons.star,
                          color: AppColors.kOrangeColor,
                          size: 14.h,
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          '4.9 (349 ratings)',
                          style: AppTextStyle.bodyNormal15
                              .copyWith(color: AppColors.kWhiteColor),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About',
                      style: AppTextStyle.bodySemiBold17.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.kBlackColor),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      'From the glamorous San Francisco social scene of the 1920s, through war and the social changes of the ’60s, to the rise of Silicon Valley today, this extraordinary novel takes us on a family odyssey that is both heartbr…. read more',
                      style: AppTextStyle.bodyNormal15
                          .copyWith(color: AppColors.kBlackColor),
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    Browse2HeadingRow(
                      title: 'Images',
                      onTap: () {},
                      padding: 0.w,
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              showGeneralDialog(
                                context: context,
                                barrierDismissible: false,
                                barrierLabel: 'Dialog',
                                transitionDuration: Duration(milliseconds: 400),
                                pageBuilder: (_, __, ___) {
                                  return Scaffold(
                                    backgroundColor: AppColors.kWhiteColor,
                                    body: SafeArea(
                                      child: Column(
                                        children: <Widget>[
                                          Expanded(
                                            flex: 1,
                                            child: SizedBox.expand(
                                              child: GestureDetector(
                                                onTap: () =>
                                                    Navigator.pop(context),
                                                child: const Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Icon(
                                                    Icons
                                                        .arrow_back_ios_new_rounded,
                                                    color:
                                                        AppColors.kBlackColor,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 8,
                                            child: Padding(
                                              padding: EdgeInsets.all(4.w),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.r),
                                                child: Image.asset(
                                                  AppAssets.office,
                                                  height: 722.h,
                                                  width: 372.w,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: SizedBox.expand(
                                              child: GestureDetector(
                                                onTap: () =>
                                                    Navigator.pop(context),
                                                child: Center(
                                                  child: Text(
                                                    'Cancel',
                                                    style: AppTextStyle
                                                        .bodyNormal17
                                                        .copyWith(
                                                            color: AppColors
                                                                .kGrayColor2),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.r),
                              child: Image.asset(
                                AppAssets.office,
                                height: 122.h,
                                width: 122.w,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.r),
                            child: Image.asset(
                              AppAssets.office,
                              height: 122.h,
                              width: 122.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    Text(
                      'Overview',
                      style: AppTextStyle.bodyNormal17.copyWith(
                          color: AppColors.kBlackColor,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    const AppliedJobInformationRow(
                      heading: 'Location',
                      value: 'Irvine, CA',
                    ),
                    const AppliedJobInformationRow(
                      heading: 'Experience',
                      value: '2+ years',
                    ),
                    const AppliedJobInformationRow(
                      heading: 'Salary',
                      value: '\$2K - \$7K/mo',
                    ),
                    const AppliedJobInformationRow(
                      heading: 'Job Type',
                      value: 'Full Time',
                    ),
                    const AppliedJobInformationRow(
                      heading: 'Job Title',
                      value: 'Manager',
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    Text(
                      'Headquarters',
                      style: AppTextStyle.bodyNormal17.copyWith(
                          color: AppColors.kBlackColor,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Seomeyn Busan ,korea',
                              style: AppTextStyle.bodyNormal15
                                  .copyWith(color: AppColors.kBlackColor),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              '1.3 km',
                              style: AppTextStyle.bodyNormal10.copyWith(
                                  color: AppColors.kGrayColor10,
                                  fontSize: 12.sp),
                            ),
                          ],
                        ),
                        const Spacer(),
                        CircleAvatar(
                          radius: 18.r,
                          child: Center(
                            child: SvgPicture.asset(
                              AppAssets.currentLocationIcon,
                              color: AppColors.kWhiteColor,
                              height: 15.h,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    Browse2HeadingRow(
                      title: 'Videos',
                      onTap: () {},
                      padding: 0.w,
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const VideoSmallWidget(),
                          SizedBox(
                            width: 16.w,
                          ),
                          const VideoSmallWidget(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    Text(
                      'Social Media',
                      style: AppTextStyle.bodyNormal17.copyWith(
                          color: AppColors.kBlackColor,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      children: [
                        const SocialMediaWidget(
                          icon: AppAssets.facebookIcon,
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        const SocialMediaWidget(
                          icon: AppAssets.instagramIcon,
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        const SocialMediaWidget(
                          icon: AppAssets.youtubeIcon,
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        const SocialMediaWidget(
                          icon: AppAssets.twitterIcon,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    Browse2HeadingRow(
                      title: 'Available Jobs',
                      onTap: () {},
                      padding: 0.w,
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    SizedBox(
                      // padding: EdgeInsets.only(left: 16.w),
                      height: 204.h,
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
                    Text(
                      'Reviews',
                      style: AppTextStyle.bodyNormal17.copyWith(
                          color: AppColors.kBlackColor,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 12.h, horizontal: 16.w),
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.kGrayColor4),
                              borderRadius: BorderRadius.circular(8.r)),
                          child: Column(
                            children: [
                              Text(
                                '4.6',
                                style: AppTextStyle.bodyBold34
                                    .copyWith(color: AppColors.kBlackColor),
                              ),
                              Text(
                                'out of 5',
                                style: AppTextStyle.bodyNormal13
                                    .copyWith(color: AppColors.kGrayColor2),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 24.w,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: AppColors.kGrayColor5,
                                  size: 14.h,
                                ),
                                SizedBox(
                                  width: 1.4.w,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColors.kGrayColor5,
                                  size: 14.h,
                                ),
                                SizedBox(
                                  width: 1.4.w,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColors.kGrayColor5,
                                  size: 14.h,
                                ),
                                SizedBox(
                                  width: 1.4.w,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColors.kGrayColor5,
                                  size: 14.h,
                                ),
                                SizedBox(
                                  width: 1.4.w,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColors.kGrayColor5,
                                  size: 14.h,
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                LinearPercentIndicator(
                                  padding: EdgeInsets.zero,
                                  width: 150.w,
                                  animation: true,
                                  lineHeight: 4.h,
                                  animationDuration: 5000,
                                  percent: 0.8,
                                  barRadius: Radius.circular(18.r),
                                  progressColor: AppColors.kMainColor,
                                  backgroundColor: AppColors.kGrayColor5,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.transparent,
                                  size: 14.h,
                                ),
                                SizedBox(
                                  width: 1.4.w,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColors.kGrayColor5,
                                  size: 14.h,
                                ),
                                SizedBox(
                                  width: 1.4.w,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColors.kGrayColor5,
                                  size: 14.h,
                                ),
                                SizedBox(
                                  width: 1.4.w,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColors.kGrayColor5,
                                  size: 14.h,
                                ),
                                SizedBox(
                                  width: 1.4.w,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColors.kGrayColor5,
                                  size: 14.h,
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                LinearPercentIndicator(
                                  padding: EdgeInsets.zero,
                                  width: 150.w,
                                  animation: true,
                                  lineHeight: 4.h,
                                  animationDuration: 5000,
                                  percent: 0.8,
                                  barRadius: Radius.circular(18.r),
                                  progressColor: AppColors.kMainColor,
                                  backgroundColor: AppColors.kGrayColor5,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.transparent,
                                  size: 14.h,
                                ),
                                SizedBox(
                                  width: 1.4.w,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.transparent,
                                  size: 14.h,
                                ),
                                SizedBox(
                                  width: 1.4.w,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColors.kGrayColor5,
                                  size: 14.h,
                                ),
                                SizedBox(
                                  width: 1.4.w,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColors.kGrayColor5,
                                  size: 14.h,
                                ),
                                SizedBox(
                                  width: 1.4.w,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColors.kGrayColor5,
                                  size: 14.h,
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                LinearPercentIndicator(
                                  padding: EdgeInsets.zero,
                                  width: 150.w,
                                  animation: true,
                                  lineHeight: 4.h,
                                  animationDuration: 5000,
                                  percent: 0.8,
                                  barRadius: Radius.circular(18.r),
                                  progressColor: AppColors.kMainColor,
                                  backgroundColor: AppColors.kGrayColor5,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.transparent,
                                  size: 14.h,
                                ),
                                SizedBox(
                                  width: 1.4.w,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.transparent,
                                  size: 14.h,
                                ),
                                SizedBox(
                                  width: 1.4.w,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.transparent,
                                  size: 14.h,
                                ),
                                SizedBox(
                                  width: 1.4.w,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColors.kGrayColor5,
                                  size: 14.h,
                                ),
                                SizedBox(
                                  width: 1.4.w,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColors.kGrayColor5,
                                  size: 14.h,
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                LinearPercentIndicator(
                                  padding: EdgeInsets.zero,
                                  width: 150.w,
                                  animation: true,
                                  lineHeight: 4.h,
                                  animationDuration: 5000,
                                  percent: 0.8,
                                  barRadius: Radius.circular(18.r),
                                  progressColor: AppColors.kMainColor,
                                  backgroundColor: AppColors.kGrayColor5,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.transparent,
                                  size: 14.h,
                                ),
                                SizedBox(
                                  width: 1.4.w,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.transparent,
                                  size: 14.h,
                                ),
                                SizedBox(
                                  width: 1.4.w,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.transparent,
                                  size: 14.h,
                                ),
                                SizedBox(
                                  width: 1.4.w,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.transparent,
                                  size: 14.h,
                                ),
                                SizedBox(
                                  width: 1.4.w,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColors.kGrayColor5,
                                  size: 14.h,
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                LinearPercentIndicator(
                                  padding: EdgeInsets.zero,
                                  width: 150.w,
                                  animation: true,
                                  lineHeight: 4.h,
                                  animationDuration: 5000,
                                  percent: 0.8,
                                  barRadius: Radius.circular(18.r),
                                  progressColor: AppColors.kMainColor,
                                  backgroundColor: AppColors.kGrayColor5,
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'Reviews',
                      style: AppTextStyle.bodyNormal15.copyWith(
                        color: AppColors.kGrayColor10,
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20.r,
                              backgroundColor: AppColors.kBlackColor,
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sri Wedari Soekarno',
                                  style: AppTextStyle.bodyNormal15
                                      .copyWith(color: AppColors.kBlackColor),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: AppColors.kOrangeColor,
                                      size: 14.h,
                                    ),
                                    SizedBox(
                                      width: 1.4.w,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: AppColors.kOrangeColor,
                                      size: 14.h,
                                    ),
                                    SizedBox(
                                      width: 1.4.w,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: AppColors.kOrangeColor,
                                      size: 14.h,
                                    ),
                                    SizedBox(
                                      width: 1.4.w,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: AppColors.kOrangeColor,
                                      size: 14.h,
                                    ),
                                    SizedBox(
                                      width: 1.4.w,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: AppColors.kOrangeColor,
                                      size: 14.h,
                                    ),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    Text(
                                      '15 minutes ago',
                                      style: AppTextStyle.bodyNormal10.copyWith(
                                          color: AppColors.kGrayColor10,
                                          fontSize: 12.sp),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          'They has been responsible for developing our annual marketing/advertising plans, creating all ads and graphics, promotional materials and web site design, consistent creative quality!',
                          style: AppTextStyle.bodyNormal15
                              .copyWith(color: AppColors.kBlackColor),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_circle_outline_rounded,
                          color: AppColors.kGrayColor10,
                          size: 13.w,
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          '7 More Reviews',
                          style: AppTextStyle.bodyNormal15.copyWith(
                              fontWeight: FontWeight.w600,
                              color: AppColors.kGrayColor10,
                              fontStyle: FontStyle.italic),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
