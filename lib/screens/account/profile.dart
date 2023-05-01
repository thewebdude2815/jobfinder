import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/screens/components/profile_scrap_widget.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 35.r,
                    backgroundColor: AppColors.kBlueColor,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'I am the king',
                        style: AppTextStyle.bodyBold24
                            .copyWith(color: AppColors.kBlackColor),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 4.h, horizontal: 12.w),
                        decoration: BoxDecoration(
                          color: AppColors.kWhiteColor,
                          border: Border.all(
                            color: AppColors.kPurple3Color,
                          ),
                          borderRadius: BorderRadius.circular(18.r),
                        ),
                        child: Text(
                          'Following',
                          style: AppTextStyle.bodyNormal17.copyWith(
                              color: AppColors.kPurple3Color, fontSize: 16.sp),
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'This is an introductory article.',
                style: AppTextStyle.bodyNormal15
                    .copyWith(color: AppColors.kBlackColor, fontSize: 14.sp),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 343.w,
                padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 16.w),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.kGrayColor8),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text('100',
                                style: GoogleFonts.poppins(
                                    color: AppColors.kPurple3Color,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w600)),
                            Text(
                              'Posts',
                              style: AppTextStyle.bodyNormal13
                                  .copyWith(color: const Color(0xFF434343)),
                            ),
                          ],
                        ),
                      ),
                      const VerticalDivider(
                        indent: 10,
                        endIndent: 10,
                        color: AppColors.kGrayColor9,
                        thickness: 2,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text('1,000',
                                style: GoogleFonts.poppins(
                                    color: AppColors.kPurple3Color,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w600)),
                            Text(
                              'Followers',
                              style: AppTextStyle.bodyNormal13
                                  .copyWith(color: const Color(0xFF434343)),
                            ),
                          ],
                        ),
                      ),
                      const VerticalDivider(
                        indent: 10,
                        endIndent: 10,
                        color: AppColors.kGrayColor9,
                        thickness: 2,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text('1',
                                style: GoogleFonts.poppins(
                                    color: AppColors.kPurple3Color,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w600)),
                            Text(
                              'Following',
                              style: AppTextStyle.bodyNormal13
                                  .copyWith(color: const Color(0xFF434343)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  const Spacer(),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 4.h, horizontal: 12.w),
                    decoration: BoxDecoration(
                      color: AppColors.kPurple3Color,
                      borderRadius: BorderRadius.circular(18.r),
                    ),
                    child: Text(
                      'scrap',
                      style: AppTextStyle.bodyNormal17.copyWith(
                          color: AppColors.kWhiteColor, fontSize: 16.sp),
                    ),
                  ),
                  SizedBox(
                    width: 24.w,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'feed',
                      style: AppTextStyle.bodyNormal17.copyWith(
                          color: AppColors.kGrayColor15, fontSize: 16.sp),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  const ProfileScrapWidget(
                    image: AppAssets.office,
                    text: 'My Diary',
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  const ProfileScrapWidget(
                    image: AppAssets.office,
                    text: 'My Diary',
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  const ProfileScrapWidget(
                    image: AppAssets.office,
                    text: 'My Diary',
                  ),
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                children: [
                  const ProfileScrapWidget(
                    image: AppAssets.office,
                    text: 'My Diary',
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  const ProfileScrapWidget(
                    image: AppAssets.office,
                    text: 'My Diary',
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  const ProfileScrapWidget(
                    image: AppAssets.office,
                    text: 'My Diary',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
