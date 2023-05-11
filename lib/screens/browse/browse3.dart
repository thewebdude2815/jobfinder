import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/browse2HeadingRow.dart';
import 'package:jobfinder/screens/components/common_textfield.dart';
import 'package:jobfinder/screens/components/related_jobs_1_widget.dart';
import 'package:jobfinder/screens/components/saved_jobs_widget.dart';

class Browse3 extends StatelessWidget {
  const Browse3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kGrayColor7,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: 12.h,
          ),
          child: Column(
            children: [
              Container(
                color: AppColors.kWhiteColor,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                child: Column(
                  children: [
                    CommonTextFieldNew(
                      contentPadding: EdgeInsets.symmetric(vertical: 12.h),
                      onSaved: (e) {},
                      validator: (e) {},
                      filled: true,
                      fillColor: AppColors.kGrayColor4,
                      hintText: 'Search for everything....',
                      prefixSvg: AppAssets.searchIcon,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    SizedBox(
                      height: 32.h,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 12.w, vertical: 8.h),
                            decoration: BoxDecoration(
                                color: AppColors.kGrayColor4,
                                borderRadius: BorderRadius.circular(14.5.r)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  AppAssets.filterIcon,
                                  color: AppColors.kBlackColor,
                                  height: 14.h,
                                  width: 12.w,
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Text(
                                  'Filter',
                                  style: AppTextStyle.bodyNormal13
                                      .copyWith(color: AppColors.kBlackColor),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          const Browse3Chip(
                            title: 'Developer',
                          ),
                          const Browse3Chip(
                            title: 'Designer',
                          ),
                          const Browse3Chip(
                            title: 'Architect',
                          ),
                          const Browse3Chip(
                            title: 'Developer',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    Browse2HeadingRow(
                      title: 'Featured Jobs',
                      onTap: () {
                        Get.toNamed(Routes.browse4Route);
                      },
                      padding: 0.w,
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      children: const [
                        RelatedJobs1Widget(
                          company: 'Brave Studio',
                          title: '3D Animator',
                          location: 'San Diego, CA',
                          isFilled: true,
                        ),
                        RelatedJobs1Widget(
                          company: 'Brave Studio',
                          title: '3D Animator',
                          location: 'San Diego, CA',
                          isFilled: true,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Browse2HeadingRow(
                title: 'Popular Companies',
                onTap: () {},
              ),
              SizedBox(
                height: 12.h,
              ),
              SingleChildScrollView(
                padding: EdgeInsets.only(left: 16.w),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.companyDetailsRoute);
                      },
                      child: const Browse3PopularCompanies(
                          title: 'product design', jobs: '392 jobs'),
                    ),
                    const Browse3PopularCompanies(
                        title: 'product design', jobs: '392 jobs'),
                    const Browse3PopularCompanies(
                        title: 'product design', jobs: '392 jobs')
                  ],
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Browse2HeadingRow(
                title: 'Featured Cities',
                onTap: () {},
              ),
              SizedBox(
                height: 12.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: GridView(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16),
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    FeaturedCitiesWidget(
                      city: 'DANANG',
                      country: 'Vietnam',
                      image: AppAssets.office,
                    ),
                    FeaturedCitiesWidget(
                      city: 'DANANG',
                      country: 'Vietnam',
                      image: AppAssets.office,
                    ),
                    FeaturedCitiesWidget(
                      city: 'DANANG',
                      country: 'Vietnam',
                      image: AppAssets.office,
                    ),
                    FeaturedCitiesWidget(
                      city: 'DANANG',
                      country: 'Vietnam',
                      image: AppAssets.office,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Browse2HeadingRow(
                title: 'Recent Interviews',
                onTap: () {},
              ),
              SizedBox(
                height: 12.h,
              ),
              const SavedJobsWidge(
                  companyName: 'Limited',
                  jobTitle: 'Developer',
                  location: 'Irvine, CA',
                  status: "",
                  jobType: "Fulltime",
                  pay: "\$8k/mo")
            ],
          ),
        ),
      ),
    );
  }
}

class FeaturedCitiesWidget extends StatelessWidget {
  final String city, country, image;
  const FeaturedCitiesWidget({
    required this.city,
    required this.country,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 163.h,
      width: 163.w,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(8.r)),
      child: Container(
        height: 163.h,
        width: 163.w,
        decoration: BoxDecoration(
            color: AppColors.kBlackColor.withOpacity(0.4),
            borderRadius: BorderRadius.circular(8.r)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              city,
              style: AppTextStyle.bodyBold24.copyWith(
                  color: AppColors.kWhiteColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 22),
            ),
            SizedBox(
              height: 4.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppAssets.locationIcon,
                  color: AppColors.kWhiteColor,
                  height: 10.h,
                  width: 12.w,
                ),
                SizedBox(
                  width: 8.w,
                ),
                Text(
                  country,
                  style: AppTextStyle.bodyNormal13
                      .copyWith(color: AppColors.kWhiteColor),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Browse3PopularCompanies extends StatelessWidget {
  final String title, jobs;
  const Browse3PopularCompanies({
    required this.jobs,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16.w),
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: AppColors.kWhiteColor,
          border: Border.all(color: AppColors.kGrayColor4)),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20.r,
            backgroundColor: AppColors.kBlueColor,
          ),
          SizedBox(
            width: 16.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyle.bodyNormal15.copyWith(
                    color: AppColors.kBlackColor, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                jobs,
                style: AppTextStyle.bodyNormal13
                    .copyWith(color: AppColors.kGrayColor2),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Browse3Chip extends StatelessWidget {
  final String title;
  const Browse3Chip({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8.w),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: BoxDecoration(
          color: AppColors.kGrayColor4,
          borderRadius: BorderRadius.circular(14.5.r)),
      child: Center(
        child: Text(
          title,
          style:
              AppTextStyle.bodyNormal13.copyWith(color: AppColors.kBlackColor),
        ),
      ),
    );
  }
}
