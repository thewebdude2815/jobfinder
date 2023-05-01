import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/screens/components/browse2HeadingRow.dart';
import 'package:jobfinder/screens/components/common_appbar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:jobfinder/screens/components/common_button.dart';
import 'package:jobfinder/screens/components/fun_fact_widget.dart';
import 'package:jobfinder/screens/components/job_details_1_info_widget.dart';
import 'package:jobfinder/screens/components/related_jobs_1_widget.dart';
import 'package:jobfinder/screens/components/saved_jobs_widget.dart';

import '../jobs/applied_jobs_details.dart';

class JobDetails2 extends StatefulWidget {
  const JobDetails2({super.key});

  @override
  State<JobDetails2> createState() => _JobDetails2State();
}

class _JobDetails2State extends State<JobDetails2> {
  bool showBenefitsText = false;
  final List<String> _options2 = [
    'Problem Solving',
    'Technical Skills',
    'Android',
    'iOS',
    'Design',
    'Website',
    'Mobile',
  ];
  List<String> filter = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // height: 232.h,
                width: 375.w,
                // padding: EdgeInsets.symmetric(horizontal: 16.w),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppAssets.office), fit: BoxFit.cover),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 272.h,
                      width: 375.w,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                            Colors.transparent,
                            Colors.transparent,
                            AppColors.kBlackColor.withOpacity(0.06),
                            AppColors.kBlackColor.withOpacity(0.6),
                            AppColors.kBlackColor.withOpacity(0.9),
                          ])),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 16.h,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_back_ios_new_rounded,
                                color: AppColors.kWhiteColor,
                                size: 21.w,
                              ),
                              const Spacer(),
                              Icon(
                                Icons.bookmark,
                                color: AppColors.kRedColor,
                                size: 20.w,
                              ),
                              SizedBox(
                                width: 16.w,
                              ),
                              SvgPicture.asset(
                                AppAssets.shareIcon,
                                color: AppColors.kWhiteColor,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          CircleAvatar(
                            radius: 40.r,
                            backgroundColor: AppColors.kBlueColor,
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Text(
                            'Busan recruiting',
                            style: AppTextStyle.bodyBold34.copyWith(
                                color: AppColors.kWhiteColor,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Row(
                            children: [
                              Text(
                                'Complex Studio',
                                style: AppTextStyle.bodyNormal13
                                    .copyWith(color: AppColors.kWhiteColor),
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
                                  'San Francisco, CA',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTextStyle.bodyNormal13
                                      .copyWith(color: AppColors.kWhiteColor),
                                ),
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
                  ],
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  'Fun Fact',
                  style: AppTextStyle.bodyNormal17.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.kBlackColor),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                children: [
                  const Expanded(
                    child: FunFactWidget(
                      percentage: '73%',
                      text: 'Would recommend',
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  const Expanded(
                    child: FunFactWidget(
                      percentage: '73%',
                      text: 'Interview experience',
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  const Expanded(
                    child: FunFactWidget(
                      percentage: '73%',
                      text: 'Salary satisfaction',
                    ),
                  ),
                ],
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
                      'Job Interview',
                      style: AppTextStyle.bodyNormal17.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.kBlackColor),
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
                      'Job Skills',
                      style: AppTextStyle.bodyNormal17.copyWith(
                          color: AppColors.kBlackColor,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Wrap(
                      spacing: 6,
                      runSpacing: 10.0,
                      children: _options2.map((e) {
                        return FilterChip(
                          showCheckmark: false,
                          clipBehavior: Clip.none,
                          backgroundColor: AppColors.kWhiteColor,
                          shape: const StadiumBorder(
                              side: BorderSide(
                                  color: AppColors.kMainColor, width: 1)),
                          label: Text(
                            e,
                            style: AppTextStyle.bodyNormal13.copyWith(
                                color: filter.contains(e)
                                    ? AppColors.kWhiteColor
                                    : AppColors.kMainColor),
                            overflow: TextOverflow.visible,
                          ),
                          selected: filter.contains(e),
                          selectedColor: AppColors.kMainColor,
                          onSelected: (bool selected) {
                            setState(() {
                              if (selected) {
                                filter.add(e);
                              } else {
                                filter.removeWhere((name) {
                                  return name == e;
                                });
                              }
                            });
                          },
                        );
                      }).toList(),
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
                      'Location',
                      style: AppTextStyle.bodyNormal17.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.kBlackColor),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Container(
                      height: 224.h,
                      width: 343.w,
                      child: const GoogleMap(
                        initialCameraPosition: CameraPosition(
                          target: LatLng(37.7749, -122.4194), // San Francisco
                          zoom: 10,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      '43 Bourke Street, Newbridge NSW 837 Raffles Place, Boat Band M83',
                      style: AppTextStyle.bodyNormal15.copyWith(
                          fontWeight: FontWeight.w400,
                          color: AppColors.kBlackColor),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Browse2HeadingRow(title: 'Related Jobs'),
              SizedBox(
                height: 12.h,
              ),
              Column(
                children: const [
                  SavedJobsWidge(
                      companyName: 'Limited Sounds',
                      jobTitle: 'Developer',
                      location: '349 Irvine, CA',
                      status: "",
                      jobType: 'Fulltime',
                      pay: '\$8k/mo'),
                  SavedJobsWidge(
                      companyName: 'Limited Sounds',
                      jobTitle: 'Developer',
                      location: '349 Irvine, CA',
                      status: "",
                      jobType: 'Fulltime',
                      pay: '\$8k/mo'),
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.h),
        child: CommonButton(
            onTap: () {},
            text: 'Apply Now',
            isItalicText: true,
            isFilled: true,
            hasIcon: false),
      ),
    );
  }
}
