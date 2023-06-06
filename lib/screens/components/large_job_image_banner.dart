import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class LargeJobImageBanner extends StatefulWidget {
  const LargeJobImageBanner({Key? key}) : super(key: key);

  @override
  State<LargeJobImageBanner> createState() => _LargeJobImageBannerState();
}

class _LargeJobImageBannerState extends State<LargeJobImageBanner> {
  int carouselActiveIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: 3,
        itemBuilder: (context, index, realIndex) {
          return Container(
            width: 326.w,
            margin: EdgeInsets.only(right: 16.w),
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage(AppAssets.office), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Column(
              children: [
                const Spacer(),
                Container(
                  width: 326.w,
                  height: 210.h,
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          AppColors.kBlackColor.withOpacity(0.01),
                          AppColors.kBlackColor.withOpacity(0.8),
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8.r),
                          bottomRight: Radius.circular(8.r))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20.r,
                            backgroundColor: AppColors.kBlueColor,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            'Private Studio',
                            style: AppTextStyle.bodyNormal15
                                .copyWith(color: AppColors.kWhiteColor),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      Text(
                        'SEOUL Cleaner',
                        style: AppTextStyle.bodyBold34
                            .copyWith(color: AppColors.kWhiteColor),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            AppAssets.locationIcon,
                            height: 14.h,
                            width: 12.w,
                            color: AppColors.kGrayColor13,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            'Job Title',
                            style: AppTextStyle.bodyNormal15.copyWith(
                              color: AppColors.kWhiteColor,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        children: [
                          Text(
                            '\$80-120/hr',
                            style: AppTextStyle.bodySemiBold17.copyWith(
                                color: AppColors.kWhiteColor,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 28.w,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 2.h),
                            decoration: BoxDecoration(
                              color: AppColors.kWhiteColor.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(9.r),
                            ),
                            child: Center(
                                child: Text(
                              'Fulltime',
                              style: AppTextStyle.bodyNormal13.copyWith(
                                color: AppColors.kWhiteColor,
                              ),
                            )),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 2.h),
                            decoration: BoxDecoration(
                              color: AppColors.kWhiteColor.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(9.r),
                            ),
                            child: Center(
                                child: Text(
                              'Remote',
                              style: AppTextStyle.bodyNormal13.copyWith(
                                color: AppColors.kWhiteColor,
                              ),
                            )),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 32.h,
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        options: CarouselOptions(
          // autoPlay: true,
          height: 448.h,
          autoPlayInterval: const Duration(seconds: 5),
          viewportFraction: 0.90,
          enlargeCenterPage: false,

          enableInfiniteScroll: true,
          padEnds: false,
        ));
  }
}
