import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class CustomBannerSlider extends StatefulWidget {
  const CustomBannerSlider({Key? key}) : super(key: key);

  @override
  State<CustomBannerSlider> createState() => _CustomBannerSliderState();
}

class _CustomBannerSliderState extends State<CustomBannerSlider> {
  int carouselActiveIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343.w,
      // height: 160.w,
      child: ListView(shrinkWrap: true, children: [
        CarouselSlider.builder(
            itemCount: 3,
            itemBuilder: (context, index, realIndex) {
              return Container(
                width: 343.w,
                // margin: EdgeInsets.only(right: 16.w),
                padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
                decoration: BoxDecoration(
                    color: AppColors.kGrayColor4,
                    borderRadius: BorderRadius.circular(8.r)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25.r,
                          backgroundColor: AppColors.kBlueColor,
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Text(
                          'UI/UX Designer',
                          style: AppTextStyle.bodyNormal13.copyWith(
                              fontWeight: FontWeight.w500,
                              color: AppColors.kBlackColor),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.bookmark_border,
                          color: AppColors.kGrayColor10,
                          size: 20.h,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'UI/UX Designer',
                              style: AppTextStyle.bodyNormal17.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.kBlackColor),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              'UI/UX Designer',
                              style: AppTextStyle.bodyNormal13.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.kGrayColor2),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '\$9K/mo',
                              style: AppTextStyle.bodyNormal17.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.kBlackColor),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              '1hour ago',
                              style: AppTextStyle.bodyNormal13.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.kGrayColor2),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 7.r,
                          backgroundColor: index == 0
                              ? AppColors.kMainColor
                              : AppColors.kGrayColor2,
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        CircleAvatar(
                          radius: 7.r,
                          backgroundColor: index == 1
                              ? AppColors.kMainColor
                              : AppColors.kGrayColor2,
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        CircleAvatar(
                          radius: 7.r,
                          backgroundColor: index == 2
                              ? AppColors.kMainColor
                              : AppColors.kGrayColor2,
                        )
                      ],
                    )
                  ],
                ),
              );
            },
            options: CarouselOptions(
              // autoPlay: true,
              height: 180.h,
              autoPlayInterval: const Duration(seconds: 5),
              viewportFraction: 1,
              enlargeCenterPage: false,

              enableInfiniteScroll: true,
              padEnds: true,
            )),
      ]),
    );
  }
}
