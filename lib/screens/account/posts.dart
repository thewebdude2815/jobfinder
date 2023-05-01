import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/common_appbar.dart';
import 'package:jobfinder/screens/components/common_textfield.dart';

class Posts extends StatelessWidget {
  const Posts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(showBackButton: true),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20.r,
                          backgroundColor: AppColors.kBlueColor,
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(Routes.searchUserRoute);
                              },
                              child: Text(
                                'vardoli',
                                style: AppTextStyle.bodyNormal15.copyWith(
                                  color: AppColors.kBlackColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              '3 days ago',
                              style: AppTextStyle.bodyNormal15.copyWith(
                                  color: const Color(
                                    0xFF9D9D9D,
                                  ),
                                  fontSize: 12.sp),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 4.h, horizontal: 8.w),
                          decoration: BoxDecoration(
                              color: AppColors.kBlueColor,
                              borderRadius: BorderRadius.circular(16.r)),
                          child: Text(
                            'Follow',
                            style: AppTextStyle.bodyNormal13
                                .copyWith(color: AppColors.kWhiteColor),
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: AppColors.kBlackColor,
                          size: 15.5.w,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                // padding: EdgeInsets.symmetric(horizontal: 16.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: AppColors.kWhiteColor,
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.kBlackColor.withOpacity(0.1),
                          blurRadius: 10,
                          spreadRadius: 2)
                    ]),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Text(
                        'It rained a little in the morning and the weather was cloudy, but in the afternoon it got clearer~',
                        style: AppTextStyle.bodyNormal13.copyWith(
                            color: AppColors.kBlackColor, fontSize: 14.sp),
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Image.asset(
                      AppAssets.office,
                      height: 242.h,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Text(
                        'Im sitting in a cafe with a pretty view, doing homework and reading #books.',
                        style: AppTextStyle.bodyNormal13.copyWith(
                            color: AppColors.kBlackColor, fontSize: 14.sp),
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    SizedBox(
                      height: 1.h,
                      child: Center(
                        child: Container(
                          height: 5.0,
                          color: AppColors.kGrayColor14,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: AppColors.kRedColor,
                            size: 21.h,
                          ),
                          SizedBox(
                            width: 6.w,
                          ),
                          Text(
                            '1300',
                            style: GoogleFonts.poppins(
                                fontSize: 12.sp, color: AppColors.kBlackColor),
                          ),
                          SizedBox(
                            width: 12.w,
                          ),
                          SvgPicture.asset(
                            AppAssets.commentIcon,
                            color: AppColors.kBlackColor,
                            height: 20.h,
                            width: 20.w,
                          ),
                          SizedBox(
                            width: 6.w,
                          ),
                          Text(
                            '1300',
                            style: GoogleFonts.poppins(
                                fontSize: 12.sp, color: AppColors.kBlackColor),
                          ),
                          SizedBox(
                            width: 12.w,
                          ),
                          Icon(
                            Icons.copy,
                            color: AppColors.kBlackColor,
                            size: 21.h,
                          ),
                          SizedBox(
                            width: 6.w,
                          ),
                          Text(
                            '1300',
                            style: GoogleFonts.poppins(
                                fontSize: 12.sp, color: AppColors.kBlackColor),
                          ),
                          const Spacer(),
                          SvgPicture.asset(
                            AppAssets.share2Icon,
                            height: 19.h,
                            width: 17.5.w,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    SizedBox(
                      height: 1.h,
                      child: Center(
                        child: Container(
                          height: 5.0,
                          color: AppColors.kGrayColor14,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    const CommentBoxPosts(),
                    const CommentBoxPosts(),
                    const CommentBoxPosts(),
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
        decoration: const BoxDecoration(
          color: AppColors.kWhiteColor,
          border: Border(top: BorderSide(color: AppColors.kGrayColor15)),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20.r,
              backgroundColor: AppColors.kPurple2Color,
              child: SvgPicture.asset(
                AppAssets.lockIcon,
                color: AppColors.kWhiteColor,
                height: 20.h,
                width: 16.w,
              ),
            ),
            SizedBox(
              width: 6.w,
            ),
            Container(
              width: 300.w,
              height: 36.h,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.kGrayColor14),
                  borderRadius: BorderRadius.circular(18.r)),
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Row(
                children: [
                  SizedBox(
                    width: 220.w,
                    child: CommonTextFieldNew(
                      onSaved: (e) {},
                      validator: (e) {},
                      filled: false,
                      disableBorder: true,
                      hintText: 'Please enter your comments.',
                      hintStyle: AppTextStyle.bodyNormal13.copyWith(
                          color: AppColors.kGrayColor15, fontSize: 14.sp),
                    ),
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'OK',
                      style: AppTextStyle.bodyNormal13
                          .copyWith(color: AppColors.kPurple3Color),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CommentBoxPosts extends StatelessWidget {
  const CommentBoxPosts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h, right: 16.w, left: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 15.r,
                backgroundColor: AppColors.kBlueColor,
              ),
              SizedBox(
                width: 8.w,
              ),
              SizedBox(
                width: 260.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Dadok Kim',
                              style: AppTextStyle.bodyNormal13.copyWith(
                                  color: AppColors.kBlackColor,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              '2 minutes ago',
                              style: AppTextStyle.bodyNormal10.copyWith(
                                  color: AppColors.kGrayColor15,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: AppColors.kBlackColor,
                          size: 15.5.w,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      'Comment content Comment content',
                      style: AppTextStyle.bodyNormal13.copyWith(
                          color: const Color(0xFF434343), fontSize: 12.sp),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'like13',
                          style: AppTextStyle.bodyNormal13.copyWith(
                              color: AppColors.kGrayColor15, fontSize: 12.sp),
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        Text(
                          'Reply',
                          style: AppTextStyle.bodyNormal13.copyWith(
                              color: AppColors.kGrayColor15, fontSize: 12.sp),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
