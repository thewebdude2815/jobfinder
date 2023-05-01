import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/screens/components/chat_bubble.dart';
import 'package:jobfinder/screens/components/common_textfield.dart';

class MessagesDetails extends StatelessWidget {
  const MessagesDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.kBlackColor,
                    size: 21.h,
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  SizedBox(
                    height: 38.h,
                    width: 38.w,
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 32.r,
                          backgroundColor: Colors.orange,
                        ),
                        Positioned(
                          bottom: 3,
                          right: 3,
                          child: CircleAvatar(
                            radius: 4.r,
                            backgroundColor: AppColors.kMainColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Brave Studio',
                        style: AppTextStyle.bodyNormal17.copyWith(
                            color: AppColors.kBlackColor,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        'Active Now',
                        style: AppTextStyle.bodyNormal13.copyWith(
                            color: AppColors.kGrayColor11,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppAssets.videoIcon,
                        width: 20.w,
                        height: 12.h,
                        color: AppColors.kBlackColor,
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      SvgPicture.asset(
                        AppAssets.callIcon,
                        width: 20.w,
                        height: 20.h,
                        color: AppColors.kBlackColor,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const ChatBubble(
                    text:
                        'Hi, thanks for reviewing my portfolio. I hope this turns out well, but can you help me out?',
                    isCurrentUser: true),
                Padding(
                  padding: EdgeInsets.only(right: 16.w),
                  child: Text(
                    '10:11 AM',
                    style: AppTextStyle.bodyNormal10.copyWith(
                        fontSize: 11.sp, color: AppColors.kGrayColor12),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ChatBubble(text: 'Hi', isCurrentUser: false),
                const ChatBubble(
                    text: 'Hi, thanks for reviewing my portfolio',
                    isCurrentUser: false),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text(
                    '10:11 AM',
                    style: AppTextStyle.bodyNormal10.copyWith(
                        fontSize: 11.sp, color: AppColors.kGrayColor12),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: AppColors.kGrayColor4))),
        // height: 48.h,
        // width: double.infinity,
        child: Row(
          children: [
            SvgPicture.asset(
              AppAssets.addIcon,
              height: 24.h,
              width: 24.w,
            ),
            SizedBox(
              width: 8.w,
            ),
            SizedBox(
              width: 279.w,
              child: CommonTextFieldNew(
                onSaved: (e) {},
                validator: (e) {},
                filled: true,
                fillColor: AppColors.kGrayColor4,
                hintText: "Write a message",
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            SvgPicture.asset(
              AppAssets.sendIcon,
              height: 24.h,
              width: 24.w,
            ),
          ],
        ),
      ),
    );
  }
}
