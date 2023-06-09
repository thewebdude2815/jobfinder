import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class UsersWidget extends StatelessWidget {
  final String name, posts, followers;
  final void Function() onTap;
  final bool isSelected;
  bool? isBlocked;
  bool? isFollowers;
  bool? isFollowing;

  UsersWidget({
    required this.followers,
    required this.name,
    required this.posts,
    required this.onTap,
    required this.isSelected,
    this.isBlocked,
    this.isFollowers,
    this.isFollowing,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 8.h),
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
        decoration: BoxDecoration(
            color: AppColors.kWhiteColor,
            borderRadius: BorderRadius.circular(8.r),
            boxShadow: [
              BoxShadow(
                  color: AppColors.kBlackColor.withOpacity(0.08),
                  spreadRadius: 2,
                  blurRadius: 10)
            ]),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20.r,
            ),
            SizedBox(
              width: 8.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: AppTextStyle.bodyNormal17.copyWith(
                      color: AppColors.kBlackColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500),
                ),
                isBlocked == true || isFollowers == true || isFollowing == true
                    ? const SizedBox()
                    : SizedBox(
                        height: 4.h,
                      ),
                isBlocked == true || isFollowers == true || isFollowing == true
                    ? const SizedBox()
                    : IntrinsicHeight(
                        child: Row(
                          children: [
                            Text(
                              'follower $followers',
                              style: AppTextStyle.bodyNormal17.copyWith(
                                  color: const Color(0xFF555555),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 6.w,
                            ),
                            VerticalDivider(
                              width: 1.w,
                              color: AppColors.kGrayColor14,
                            ),
                            SizedBox(
                              width: 6.w,
                            ),
                            Text(
                              'post $posts',
                              style: AppTextStyle.bodyNormal17.copyWith(
                                  color: const Color(0xFF555555),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
              ],
            ),
            const Spacer(),
            GestureDetector(
              onTap: onTap,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 12.w),
                decoration: BoxDecoration(
                    color: isBlocked == true
                        ? AppColors.kWhiteColor
                        : AppColors.kMainColor,
                    borderRadius: BorderRadius.circular(18.r),
                    border: Border.all(
                        color: isSelected
                            ? const Color(0xFFA02A95)
                            : AppColors.kMainColor)),
                child: Text(
                  isBlocked == true
                      ? isSelected
                          ? 'Unblock'
                          : 'Blocked'
                      : 'Follow',
                  style: AppTextStyle.bodyNormal17.copyWith(
                      color: isBlocked == true
                          ? AppColors.kMainColor
                          : AppColors.kWhiteColor,
                      fontSize: 16.sp),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
