import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/common_textfield.dart';
import 'package:jobfinder/screens/components/users_widget.dart';

class SearchUser extends StatelessWidget {
  const SearchUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
                decoration: const BoxDecoration(
                  border:
                      Border(top: BorderSide(color: AppColors.kGrayColor14)),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios_rounded,
                      color: AppColors.kBlackColor,
                      size: 16.w,
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    Container(
                      width: 320.w,
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
                              hintText: 'Search.',
                              hintStyle: AppTextStyle.bodyNormal13.copyWith(
                                  color: AppColors.kGrayColor15,
                                  fontSize: 14.sp),
                            ),
                          ),
                          const Spacer(),
                          Align(
                            alignment: Alignment.centerRight,
                            child: SvgPicture.asset(
                              AppAssets.searchIcon,
                              color: AppColors.kPurple4Color,
                              height: 18.h,
                              width: 18.w,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
                      color: AppColors.kMainColor,
                      borderRadius: BorderRadius.circular(18.r),
                    ),
                    child: Text(
                      'User',
                      style: AppTextStyle.bodyNormal17.copyWith(
                          color: AppColors.kWhiteColor, fontSize: 16.sp),
                    ),
                  ),
                  SizedBox(
                    width: 24.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.followerRoute);
                    },
                    child: Text(
                      'Follower',
                      style: AppTextStyle.bodyNormal17.copyWith(
                          color: AppColors.kGrayColor15, fontSize: 16.sp),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 8,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return UsersWidget(
                      followers: '104',
                      name: 'borage',
                      posts: '30',
                      onTap: () {},
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
