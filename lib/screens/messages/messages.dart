import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Spacer(),
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
                        'Messages',
                        style: AppTextStyle.bodyBold34
                            .copyWith(color: AppColors.kBlackColor),
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                  ],
                ),
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.messageDetailsRoute);
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: const MessagesChatBoxWidget(),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class MessagesChatBoxWidget extends StatelessWidget {
  const MessagesChatBoxWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 6.h,
        ),
        Row(
          children: [
            SizedBox(
              height: 50.h,
              width: 50.w,
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 40.r,
                    backgroundColor: Colors.orange,
                  ),
                  Positioned(
                    bottom: 3,
                    right: 3,
                    child: CircleAvatar(
                      radius: 6.r,
                      backgroundColor: AppColors.kMainColor,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            Expanded(
              flex: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Brave Studio',
                    style: AppTextStyle.bodyNormal15.copyWith(
                        color: AppColors.kBlackColor,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    'Good luck and take care',
                    style: AppTextStyle.bodyNormal13.copyWith(
                        color: AppColors.kGrayColor11,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '11:20 AM',
                    style: AppTextStyle.bodyNormal13.copyWith(
                        color: AppColors.kGrayColor11,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  CircleAvatar(
                    radius: 15.r,
                    backgroundColor: AppColors.kMainColor,
                    child: Text(
                      '3',
                      style: AppTextStyle.bodyNormal13
                          .copyWith(color: AppColors.kWhiteColor),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 6.h,
        ),
        Divider(
          indent: 66.w,
          color: AppColors.kGrayColor4,
        )
      ],
    );
  }
}
