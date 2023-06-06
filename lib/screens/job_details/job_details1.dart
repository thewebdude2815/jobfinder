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
import 'package:jobfinder/screens/components/common_appbar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:jobfinder/screens/components/common_button.dart';
import 'package:jobfinder/screens/components/job_details_1_info_widget.dart';
import 'package:jobfinder/screens/components/related_jobs_1_widget.dart';
import 'package:jobfinder/screens/components/saved_jobs_widget.dart';

class JobDetails1 extends StatefulWidget {
  const JobDetails1({super.key});

  @override
  State<JobDetails1> createState() => _JobDetails1State();
}

class _JobDetails1State extends State<JobDetails1> {
  bool showBenefitsText = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: CustomAppBar(
        showBackButton: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: Icon(
              Icons.more_horiz,
              color: AppColors.kBlackColor,
              size: 20.w,
            ),
          )
        ],
        bgColor: AppColors.kGrayColor7,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: AppColors.kGrayColor7,
                padding: EdgeInsets.symmetric(vertical: 24.h),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Spacer(),
                        CircleAvatar(
                          radius: 19.r,
                          backgroundColor: AppColors.kGrayColor3,
                          child: CircleAvatar(
                              radius: 18.r,
                              backgroundColor: AppColors.kWhiteColor,
                              child: SvgPicture.asset(
                                AppAssets.shareIcon,
                                color: AppColors.kGrayColor2,
                                height: 21.h,
                                width: 17.w,
                              )),
                        ),
                        SizedBox(
                          width: 24.w,
                        ),
                        CircleAvatar(
                          radius: 55.r,
                          backgroundColor: AppColors.kGrayColor3,
                        ),
                        SizedBox(
                          width: 24.w,
                        ),
                        CircleAvatar(
                          radius: 19.r,
                          backgroundColor: AppColors.kGrayColor3,
                          child: CircleAvatar(
                              radius: 18.r,
                              backgroundColor: AppColors.kWhiteColor,
                              child: Icon(
                                Icons.bookmark,
                                color: AppColors.kRedColor,
                                size: 20.h,
                              )),
                        ),
                        const Spacer(),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'Senior Software Engineer',
                      style: AppTextStyle.bodyBold24
                          .copyWith(color: AppColors.kBlackColor),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Creatio Studio',
                          style: AppTextStyle.bodyNormal15
                              .copyWith(color: AppColors.kBlackColor),
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
                        SvgPicture.asset(
                          AppAssets.locationIcon,
                          color: AppColors.kGrayColor2,
                          height: 12.h,
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          'San Francisco, CA',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyle.bodyNormal15
                              .copyWith(color: AppColors.kGrayColor2),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                              .copyWith(color: AppColors.kGrayColor2),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  'Job Overview',
                  style: AppTextStyle.bodyNormal17.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.kBlackColor),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.kGrayColor3,
                    ),
                    borderRadius: BorderRadius.circular(8.r)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        JobDetails1InfoWidget(
                          icon: AppAssets.calendarIcon,
                          heading: 'Date Posted',
                          subHeading: '2 hours ago',
                          bottomBorder: true,
                          rightBorder: true,
                        ),
                        JobDetails1InfoWidget(
                          icon: AppAssets.timeIcon,
                          heading: 'Expiration Date',
                          subHeading: 'Jan 12, 2027',
                          bottomBorder: true,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        JobDetails1InfoWidget(
                          icon: AppAssets.locationIcon,
                          heading: 'Location',
                          subHeading: 'Irvine, CA',
                          bottomBorder: true,
                          rightBorder: true,
                        ),
                        JobDetails1InfoWidget(
                          icon: AppAssets.caseIcon,
                          heading: 'Job Title',
                          subHeading: 'Engineer',
                          bottomBorder: true,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        JobDetails1InfoWidget(
                          icon: AppAssets.time2Icon,
                          heading: 'Hours',
                          subHeading: '50h / week',
                          bottomBorder: true,
                          rightBorder: true,
                        ),
                        JobDetails1InfoWidget(
                          icon: AppAssets.trophysIcon,
                          heading: 'Experience',
                          subHeading: '2+ years',
                          bottomBorder: true,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        JobDetails1InfoWidget(
                          icon: AppAssets.caseDollarIcon,
                          heading: 'Rate',
                          subHeading: '\$500 / week',
                          rightBorder: true,
                        ),
                        JobDetails1InfoWidget(
                          icon: AppAssets.moneyIcon,
                          heading: 'Salary',
                          subHeading: '\$2k - \$7k',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Browse2HeadingRow(
                title: 'Applicant',
                onTap: () {},
              ),
              // TODO
              SizedBox(
                height: 28.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style: AppTextStyle.bodyNormal17.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.kBlackColor),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      'About',
                      style: AppTextStyle.bodyNormal13.copyWith(
                          fontWeight: FontWeight.w400,
                          color: AppColors.kGrayColor2),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      'We creates software that empowers everyone from small start-ups to large enterprises and helps teams everywhere change the world. Our products are revolutionizing the software industry and helping teams collaborate.',
                      style: AppTextStyle.bodyNormal15.copyWith(
                          fontWeight: FontWeight.w400,
                          color: AppColors.kBlackColor),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      'Benefits',
                      style: AppTextStyle.bodyNormal13.copyWith(
                          fontWeight: FontWeight.w400,
                          color: AppColors.kGrayColor2),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Stack(
                      children: [
                        SizedBox(
                          // height: 70.h,
                          child: Text(
                            'We creates software that empowers everyone from small start-ups to large enterprises and helps teams everywhere change the world. Our products are revolutionizing the software industry and helping teams collaborate.',
                            maxLines: showBenefitsText ? 5 : 3,
                            style: AppTextStyle.bodyNormal15.copyWith(
                                fontWeight: FontWeight.w400,
                                color: AppColors.kBlackColor),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                showBenefitsText = true;
                              });
                            },
                            child: Container(
                              height: 50.h,
                              width: 343.w,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: !showBenefitsText
                                      ? [
                                          AppColors.kWhiteColor
                                              .withOpacity(0.06),
                                          AppColors.kWhiteColor
                                              .withOpacity(0.9),
                                          AppColors.kWhiteColor
                                        ]
                                      : [Colors.transparent],
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: AppColors.kMainColor,
                                  ),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  Text(
                                    'More',
                                    style: AppTextStyle.bodyNormal13.copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.kBlackColor,
                                        fontStyle: FontStyle.italic),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                        // : const SizedBox()
                      ],
                    ),
                    showBenefitsText
                        ? GestureDetector(
                            onTap: () {
                              setState(() {
                                showBenefitsText = false;
                              });
                            },
                            child: Container(
                              // height: 50.h,
                              width: 375.w,
                              decoration: BoxDecoration(),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Icon(
                                    Icons.keyboard_arrow_up_rounded,
                                    color: AppColors.kMainColor,
                                  ),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  Text(
                                    'Less',
                                    style: AppTextStyle.bodyNormal13.copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.kBlackColor,
                                        fontStyle: FontStyle.italic),
                                  )
                                ],
                              ),
                            ),
                          )
                        : const SizedBox(),
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
                      'Location',
                      style: AppTextStyle.bodyNormal17.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.kBlackColor),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      '43 Bourke Street, Newbridge NSW 837 Raffles Place, Boat Band M83',
                      style: AppTextStyle.bodyNormal15.copyWith(
                          fontWeight: FontWeight.w400,
                          color: AppColors.kBlackColor),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Container(
                      height: 224.h,
                      width: 343.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r)),
                      child: Stack(
                        children: [
                          const GoogleMap(
                            initialCameraPosition: CameraPosition(
                              target:
                                  LatLng(37.7749, -122.4194), // San Francisco
                              zoom: 10,
                            ),
                            compassEnabled: true,
                            zoomControlsEnabled: false,
                          ),
                          Container(
                            height: 40.h,
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Distance',
                                      style: AppTextStyle.bodyNormal13.copyWith(
                                          color: AppColors.kGrayColor2),
                                    ),
                                    Text(
                                      '100 Km',
                                      style: AppTextStyle.bodyNormal13.copyWith(
                                          color: AppColors.kGrayColor2,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 32.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Time',
                                      style: AppTextStyle.bodyNormal13.copyWith(
                                          color: AppColors.kGrayColor2),
                                    ),
                                    Text(
                                      '25 Min',
                                      style: AppTextStyle.bodyNormal13.copyWith(
                                          color: AppColors.kGrayColor2,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                                const Spacer(),
                                SvgPicture.asset(
                                  AppAssets.directionIcon,
                                  height: 24.h,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Browse2HeadingRow(
                title: 'Related Jobs',
                onTap: () {},
              ),
              SizedBox(
                height: 12.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: const Row(
                  children: [
                    RelatedJobs1Widget(
                      company: 'Brave Studio',
                      title: '3D Animator',
                      location: 'San Diego, CA',
                      isFilled: false,
                    ),
                    RelatedJobs1Widget(
                      company: 'Brave Studio',
                      title: '3D Animator',
                      location: 'San Diego, CA',
                      isFilled: false,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              // const SavedJobsWidge(
              //     companyName: 'Limited Sounds',
              //     jobTitle: 'Developer',
              //     location: '349 Irvine, CA',
              //     status: "",
              //     jobType: 'Fulltime',
              //     pay: '\$8k/mo')
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.h),
        child: CommonButton(
            onTap: () {
              Get.toNamed(Routes.applyJobsRoute);
            },
            text: 'Apply Now',
            isItalicText: true,
            isFilled: true,
            hasIcon: false),
      ),
    );
  }
}
